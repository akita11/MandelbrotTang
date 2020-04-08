// for Q12 format
`define BIT_INT 4
`define BIT_FRAC 12
`define N_BIT 16
`define ONE `N_BIT'b0000_000000000001
`define TH  `N_BIT'b0100_000000000000 // 4.0

//`define N_PIX_X 192
//`define N_PIX_Y 128
`define N_PIX_X 510
`define N_PIX_Y 255
`define CXS (~(`N_BIT'b0010_000000000000) + `ONE) // -2.0
//`define CXE    `N_BIT'b0001_000000000000          // +1.0
`define CYS (~(`N_BIT'b0001_000000000000) + `ONE) // -1.0
//`define CYE    `N_BIT'b0001_000000000000          // +1.0
`define DCX    `N_BIT'b0000_000000100000          // 1/64
`define DCY    `N_BIT'b0000_000000100000          // 1/64



module MandelbrotTang(clk24M, rst_n,
			lcd_pclk, lcd_de, lcd_pwm, lcd_vsync, lcd_hsync, lcd_rout, lcd_gout, lcd_bout,
			TXD,
			RXD,
			_DTR, _CTS, _GND, _VDD,
			led_r_b, led_g_b, led_b_b,
			test
			);
	input clk24M, rst_n;
   	output lcd_pclk, lcd_de, lcd_pwm, lcd_vsync, lcd_hsync;
   	output [7:0] lcd_rout, lcd_gout, lcd_bout;
   	output TXD;
   	input RXD;
   	output led_r_b, led_g_b, led_b_b;
   	output [3:0] test;
	input _DTR, _VDD;
	output _CTS, _GND;
	
	// z(n+1) <= z(n)^2 + C, z0=0

  	// parallel multipluer
  	// https://veri.wiki.fc2.com/wiki/%E7%AC%A6%E5%8F%B7%E4%BB%98%E4%B9%97%E7%AE%97%E5%99%A8

   	wire			clk, vclk;
   	wire 			rst;
   
   	reg 			fIterating;
   	reg 			fResult; // 0 = diversed, 1 = iteration max reached
   	reg 			fFinish;
   	reg [3:0] st;
   	reg [15:0] i;
   	reg [8:0] px, py;
   	reg [`N_BIT - 1:0] cx, cy, x, y, xx, yy, ma, mb, sa, sb;
   	wire [`N_BIT - 1:0] mp, ss;

    reg 		       f_operating;
    reg [`N_BIT - 1:0]  r_cxs, r_cys, r_dcx, r_dcy;
    reg [8:0] 	    r_pix_x;
	reg [7:0] 		r_pix_y;
//    reg [7:0] 	       t_data;
    wire [7:0] 	       r_data;
//    reg 		       t_start;
//    wire 	       t_busy, r_ready;
    reg [1:0] 	       f_receiving; 		       
    reg [4:0] 	       n_byte;
   	reg [15:0] max_iterate;

	reg [2:0] r_wd;
	reg r_we;
	wire [7:0] rout, gout, bout;
	wire [8:0] wx;
	wire [7:0] wy;
	wire [2:0] wd;
	wire we;

	// for FTDI Basic
	assign _CTS = 0, _GND = 0;
	assign TXD = 1;
	
	assign lcd_rout = rout, lcd_gout = gout, lcd_bout = bout;
	assign rst = ~rst_n;

//	assign clk = clk24M;
	pll_main pll_main(clk24M, rst, pll_lock_main, clk); // clk=70MHz

	pll pll_video(clk24M, rst, pll_lock, vclk); // vclk=9MHz
	assign test[0] = lcd_rout[0];
	assign test[1] = lcd_hsync;
	assign test[2] = lcd_pclk;
	assign test[3] = lcd_de;
/*
module video(
    input 	  reset, // active high
    input 	  video_clk, // typ 25.175MHz
    input 	  scan_ena, // framebuff scan enable
    output 	  framestart,
    output 	  linestart,
    output 	  pixelena, // pixel readout active
    output 	  hsync,
    output 	  vsync,
    output 	  hblank,
    output 	  vblank,
    output 	  dotenable,
    output [7:0] rout, 
    output [7:0] gout,
    output [7:0] bout,
    input mem_clk,
    input [8:0]  wx, // write pixel X
    input [7:0]  wy, // write pixel Y
    input [2:0]  wd, // write pixel data
    input 	  we // write pixel enable
);
*/
	video video(rst, vclk, 1'b1, 
				framestart, linestart, pixelena, 
				hsync, vsync, 
				hblank, vblank, dotenable,
				rout, gout, bout,
				clk,
				wx, wy, wd, we);

	assign wx = px;
	assign wy = py;
	assign wd = r_wd;
	assign we = r_we;

	assign lcd_pclk = vclk;
	assign lcd_de = pixelena;
	assign lcd_hsync = hsync, lcd_vsync = vsync;
	assign lcd_pwm = 1'b1;

//    TX8 tx8(clk24M, rst, t_data, TXD, t_start, t_busy);
    RX8 rx8(clk24M, rst, RXD, r_data, r_ready);

	assign led_r_b = ~n_byte[0];
	assign led_g_b = ~f_operating;
	assign led_b_b = 1;

  	mult m0(ma, mb, mp);  
   	add  a0(sa, sb, ss);

   	always @(posedge clk) begin
        if (f_receiving == 0 && r_ready == 1) begin
            f_receiving <= 1;
        end
        if (f_receiving == 1) begin
            f_receiving <= 2;
            n_byte <= n_byte + 1;
            if (n_byte == 0) r_pix_x[8] <= r_data[0];
            if (n_byte == 1) r_pix_x[7:0] <= r_data;
            if (n_byte == 2) r_pix_y <= r_data;
            if (n_byte == 3) r_cxs[15:8] <= r_data;
            if (n_byte == 4) r_cxs[7:0] <= r_data;
            if (n_byte == 5) r_cys[15:8] <= r_data;
            if (n_byte == 6) r_cys[7:0] <= r_data;
            if (n_byte == 7) r_dcx[15:8] <= r_data;
            if (n_byte == 8) r_dcx[7:0] <= r_data;
            if (n_byte == 9) r_dcy[15:8] <= r_data;
            if (n_byte == 10) r_dcy[7:0] <= r_data;
            if (n_byte == 11) max_iterate[15:8] <= r_data;
            if (n_byte == 12) max_iterate[7:0] <= r_data;
            if (n_byte == 12) begin
                cx <= r_cxs; cy <= r_cys;
				px <= 0; py <= 0;
                fFinish <= 0;
                f_operating <= 1;
                fIterating <= 1;
                n_byte <= 0;
            end
        end
        if (f_receiving == 2 && r_ready == 0) begin
            f_receiving <= 0;
        end

        if (f_operating == 1) begin
            if (fIterating == 0) begin
				if (i == max_iterate) r_wd <= 0; // non-diversed, black
            	else r_wd <= (i%7) + 1; // diversed
            	r_we <= 1;
            end
            else begin
				r_we <= 0;
            end
        end
        else begin
			r_we <= 0;
        end

    	if (rst == 1) begin
            px <= 0; py <= 0; // pixel coordinates
            x <= 0; y <= 0;
            i <= 0;
			fIterating <= 0;
			st <= 0; fResult <= 0; fFinish <= 1;
			r_we <= 0;
            f_receiving <= 0;
            f_operating <= 0;
            n_byte <= 0;
            cx <= 0; cy <= 0;
            r_cxs <= 0; r_cys <= 0;
            r_dcx <= 0; r_dcy <= 0;
            r_pix_x <= `N_PIX_X; r_pix_y <= `N_PIX_Y;
	 		max_iterate <= 100;
      	end
      	else begin
	 	// xx = x * x - y * y + cx
	 	// yy = 2 * x * y + cy

	 	// st ma mb sa sb  -> mp=ma*mb  ss=sa+sb
	 	// 0  x  x  0  0      0         0
	 	// 1  -y y  mp cx     mp=x*x    0
	 	// 2  2x y  mp ss     mp=-y*y   ss=x*x + cx 
	 	// 3  0  0  mp cy     mp=2*x*y  ss=x*x-y*y+cx -> xx
        // 4  0  0  0  0      0         ss=2*x*y+cy -> yy

	 	// st 0   1       2          3              4
	 	// ma x   -y      2x
	 	// mb x   y       y
	 	// mp -   x*x     -y*y       2*x*y
	 	// sa     mp=x*x  mp=-y*y    mp=2*x*y
	 	// sb     cx      ss=x*x+cx  cy
	 	// ss             x*x+cx     x*x-y*y+cx=xx  2*x*y+cy=yy
	 		if (fIterating == 1) begin
	    		case (st)
	      		0 : begin ma <= x;    mb <= x; sa <= 0;  sb <= 0;  st <= 1; end
	      		1 : begin ma <= ~y+1; mb <= y; sa <= mp; sb <= cx; st <= 2; end
	      		2 : begin ma <= x<<1; mb <= y; sa <= mp; sb <= ss; st <= 3; end
	      		3 : begin ma <= 0;    mb <= 0; sa <= mp; sb <= cy; st <= 4; xx <= ss; end
	      		4 : begin ma <= 0;    mb <= 0; sa <= 0;  sb <= 0;  st <= 5; yy <= ss; end
	      		5 : begin
		 			sa <= (xx[`N_BIT - 1] == 0)?xx:(~xx+1);
		 			sb <= (yy[`N_BIT - 1] == 0)?yy:(~yy+1);
		 			x <= xx; y <= yy;
		 			st <= 6;
	      		end
	      		6: begin
		 			st <= 0;
		 			if (ss >= `TH) begin fIterating <= 0; fResult <= 0; end
		 			else begin
		    			i <= i + 1;
		    			if (i == max_iterate - 1) begin
		       				fIterating <= 0; fResult <= 1; 
		    			end
		 			end
	      		end
	    		endcase
	 		end
			else begin
	    		// result obtained
	    		fIterating <= 1;
	    		i <= 0;
	    		x <= 0; y <= 0;
	    		// draw pixel
	    		// - fResult = 0 -> color=1 - 7 (outside Mandelbrot set), i[1:0]
	    		// - fResult = 1 -> black (in Mandelbrot set)

	    		// pixel coornidate update
	    		py <= py + 1;
	    		cy <= cy + r_dcy;
	    		if (py == r_pix_y) begin
	       			py <= 0;
	       			px <= px + 1;
	       			cy <= r_cys;
	       			cx <= cx + r_dcx;
	       			if (px == r_pix_x) begin
		  				px <= 0;
		  				cx <= r_cxs;
		  				fFinish <= 1;
		  				f_operating <= 0;
		  				fIterating <= 0;
	       			end
	    		end
	 		end
/*
			// for color bar generation test
			r_we <= 1;
			r_wd <= {~px[2:0]};
			px <= px + 1;
			if (px == 511) begin
				px <= 0;
				py <= py + 1;
				if (py == 255) begin
					py <= 0;
				end
			end
*/
      	end
   	end 
endmodule

module add(a, b, x);
	input [`N_BIT - 1:0] a, b;
   	output [`N_BIT - 1:0] x;
   	assign x = a + b;
endmodule

module mult(a, b, x);
   	input [`N_BIT - 1:0] a, b;
   	output [`N_BIT - 1:0] x;
   	wire [`N_BIT - 1:0] 	 a0, b0;
   	wire [2*`N_BIT - 1:0] x_tmp;
   	wire 		 sa, sb;
   	// 0x10000 x 0x10000 = 0x10000_0000
   	// 0x1.0000 x 0x1.0000 = 0x1.0000
   	assign sa = a[`N_BIT - 1];
   	assign sb = b[`N_BIT - 1];
   	assign a0 = (sa == 0)?a:(~a+1);
   	assign b0 = (sb == 0)?b:(~b+1);
   	assign x_tmp = ((sa ^ sb) == 0)?(a0 * b0):(~(a0 * b0) + 1);
   	assign x = x_tmp[`BIT_FRAC + `N_BIT - 1:`BIT_FRAC];
endmodule
