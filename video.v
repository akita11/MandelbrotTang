/*
-- ===================================================================
-- TITLE : VGA Sync Generator
--
--     DESIGN : S.OSAFUNE (J-7SYSTEM WORKS LIMITED)
--            : Junichi Akita (akita@ifdl.jp, akita11)
--     DATE   : 2010/12/10 -> 2010/12/27
--
--     UPDATE : 2012/02/21 add pixelena signal(for ATM0430D5)
--            : 2013/07/29 add colorbar generator
--            : 2018/05/13 delete dither
--            : 2020/03/28 converted into VerilogHDL & video RAM configuration by akita11
--              from https://github.com/osafune/tangnano_sample/blob/master/led_lampy/src/vga_syncgen.vhd
--
-- ===================================================================

-- The MIT License (MIT)
-- Copyright (c) 2010-2018 J-7SYSTEM WORKS LIMITED.
-- Copyright (c) 2020 Junichi Akita
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this software and associated documentation files (the "Software"), to deal in
-- the Software without restriction, including without limitation the rights to
-- use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
-- of the Software, and to permit persons to whom the Software is furnished to do
-- so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.
*/

`define H_TOTAL		525 //ATM0430D5(480x272) / 9.0MHz
`define H_SYNC		40
`define H_BACKP		0
`define H_ACTIVE	480
`define V_TOTAL		288
`define V_SYNC		3
`define V_BACKP		0
//`define V_ACTIVE	272
`define V_ACTIVE	255


  
module video(
    input 	        reset, // active high
    input 	        video_clk, // pixel clock
    input 	        scan_ena, // framebuff scan enable
    output 	        framestart,
    output 	        linestart,
    output 	        pixelena, // pixel readout active
    output 	        hsync,
    output 	        vsync,
    output 	        hblank,
    output 	        vblank,
    output 	        dotenable,
    output  [7:0]   rout, 
    output  [7:0]   gout,
    output  [7:0]   bout,
    input           mem_clk,
    input [8:0]     wx, // write pixel X, 9bit, 0-511
    input [7:0]     wy, // write pixel Y, 8bit, 0-255
    input [2:0]     wd, // write pixel data
    input 	        we // write pixel enable
);

    reg [`H_TOTAL - 1:0] hcount;
    reg [`V_TOTAL - 1:0] vcount;

    reg         scan_in_reg;
    reg 		scanena_reg;
    reg 		frame_reg;
    reg 		line_reg;
    reg 		hsync_reg;
    reg 		vsync_reg;
    reg 		hblank_reg;
    reg 		vblank_reg;

    reg [7:0] 	rout_reg;
    reg [7:0] 	gout_reg;
    reg [7:0] 	bout_reg;

    wire [16:0] mem_ada, mem_adb; // PortA=write, PortB=read
    wire [2:0]  mem_dout, mem_din;
    wire        mem_cea, mem_ceb;

    assign mem_ada = {wy, wx};
    assign mem_din = wd;
    assign mem_cea = we;
    assign mem_ceb = 1'b1;

    assign mem_adb = {vcount, hcount};

    //module vram ( dia, addra, cea, clka, dob, addrb, ceb, clkb);
	vram vram(	mem_din, mem_ada, mem_cea, mem_clk, 
				mem_dout, mem_adb, video_clk, video_clk);

    // video sync signals
    assign framestart = frame_reg;  // register output
    assign linestart  = line_reg;	// register output
    assign pixelena   = (hblank_reg == 1'b0 && vblank_reg == 1'b0)?(scanena_reg):1'b0;

    assign hsync  = hsync_reg;
    assign vsync  = vsync_reg;
    assign hblank = hblank_reg;
    assign vblank = vblank_reg;
    assign dotenable = (~hblank_reg) & (~ vblank_reg);

    always @(posedge video_clk) begin
        if (reset == 1'b1) begin
            hcount <= `H_TOTAL - 1; vcount <= `V_TOTAL - 1;
            scan_in_reg <= 1'b0; scanena_reg <= 1'b0; frame_reg <= 1'b0; line_reg <= 1'b0;
            hsync_reg   <= 1'b0; vsync_reg   <= 1'b0; hblank_reg  <= 1'b1; vblank_reg  <= 1'b1;
        end
        else begin
            scan_in_reg <= scan_ena;
            if (hcount == 0 && vcount == 0) begin
                scanena_reg <= scan_in_reg;
            end

            if (hcount == `H_TOTAL - 1) hcount <= 0;
            else hcount <= hcount + 1;

            if (hcount == `H_TOTAL - 1) hsync_reg <= 1'b1;
            else if (hcount == `H_SYNC - 1) hsync_reg <= 1'b0;
	 
            if (hcount == `H_SYNC + `H_BACKP - 1) hblank_reg <= 1'b0;
            else if (hcount == `H_SYNC + `H_BACKP + `H_ACTIVE - 1)  hblank_reg <= 1'b1;

            if (hcount == `H_SYNC + `H_BACKP + `H_ACTIVE - 1) begin
                if (vcount == `V_TOTAL - 1) vcount <= 0;
                else vcount <= vcount + 1;
            end

            if (vcount == `V_TOTAL - 1) vsync_reg <= 1'b1;
            else if (vcount == `V_SYNC - 1) vsync_reg <= 1'b0;

            if (vcount == `V_SYNC + `V_BACKP - 1) vblank_reg <= 1'b0;
            else if(vcount == `V_SYNC + `V_BACKP + `V_ACTIVE - 1) vblank_reg <= 1'b1;

            if (hcount == `H_TOTAL-1) begin
                if (vcount == 0) frame_reg <= 1'b1;
                else frame_reg <= 1'b0;
                if (vblank_reg == 1'b0) line_reg <= scanena_reg;
                else line_reg <= 1'b0;
            end
            else if (hcount == `H_SYNC-1) begin
                frame_reg <= 1'b0;
                line_reg  <= 1'b0;
            end
        end
    end
/*
    always @(mem_dout) begin
        case (mem_dout)
            3'b000 : begin rout_reg <= 8'h00; gout_reg <= 8'h00; bout_reg <= 8'h00; end
            3'b001 : begin rout_reg <= 8'hff; gout_reg <= 8'h00; bout_reg <= 8'h00; end
            3'b010 : begin rout_reg <= 8'h00; gout_reg <= 8'h00; bout_reg <= 8'hff; end
            3'b011 : begin rout_reg <= 8'hff; gout_reg <= 8'h00; bout_reg <= 8'hff; end
            3'b100 : begin rout_reg <= 8'h00; gout_reg <= 8'hff; bout_reg <= 8'h00; end
            3'b101 : begin rout_reg <= 8'hff; gout_reg <= 8'hff; bout_reg <= 8'h00; end
            3'b110 : begin rout_reg <= 8'h00; gout_reg <= 8'hff; bout_reg <= 8'hff; end
            3'b111 : begin rout_reg <= 8'hff; gout_reg <= 8'hff; bout_reg <= 8'hff; end
        endcase
    end
*/
	always @(hcount) begin
		if (hcount[4] == 0) rout_reg <= 0; else rout_reg <= 255;
		if (hcount[5] == 0) gout_reg <= 0; else gout_reg <= 255;
		if (hcount[6] == 0) bout_reg <= 0; else bout_reg <= 255;
	end
    // pixel signals
    assign rout =  (hblank_reg == 1'b0 && vblank_reg == 1'b0)?(rout_reg):0;
    assign gout =  (hblank_reg == 1'b0 && vblank_reg == 1'b0)?(gout_reg):0;
    assign bout =  (hblank_reg == 1'b0 && vblank_reg == 1'b0)?(bout_reg):0;
endmodule // video

