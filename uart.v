`define DIV 208 // 24MHz / 208 = 115200bps

module TX8(clk, rst, data, txd, start, busy);
    input clk, rst, start;
    input [7:0] data;
    output      txd, busy;
    reg [7:0]   cnt; // note: adjust bit width for DIV
    reg [3:0]   n_bit;
    reg 	       r_busy;
    reg [9:0]   tdata;
    assign txd = tdata[0], busy = r_busy;
   
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            cnt <= 0; n_bit <= 0;
            r_busy <= 0;
            tdata <= 10'b1111111111;
        end
        else begin
            if (r_busy == 0 && start == 1) begin
                r_busy <= 1;
                tdata <= {1'b1, data, 1'b0};
            end
            if (r_busy == 1) begin
                cnt <= cnt + 1;
                if (cnt == `DIV - 1) begin
                    cnt <= 0;
                    n_bit <= n_bit + 1;
                    tdata[9:0] <= {1'b0, tdata[9:1]};
                    if (n_bit == 9) begin
                        r_busy <= 0;
                        n_bit <= 0;
                        cnt <= 0;
                        tdata <= 10'b1111111111;
                    end
                end
            end
        end
    end
endmodule

module RX8(clk, rst, rxd, data, ready);
    input clk, rst, rxd;
    output [7:0] data;
    output 	ready;
    reg [7:0]   cnt; // note: adjust bit width for DIV
    reg [3:0]   n_bit;
    reg [9:0]   rdata;
    reg [2:0]   rxdb0; // @bit=5, 12, 19
    reg 	       rxdb;
    reg 	       r_ready;
    reg [7:0]   data;
   
    assign ready = r_ready;

    always @(rxdb0) begin
        case (rxdb0)
            3'b000 : rxdb <= 0;
            3'b001 : rxdb <= 0;
            3'b010 : rxdb <= 0;
            3'b011 : rxdb <= 1;
            3'b100 : rxdb <= 0;
            3'b101 : rxdb <= 1;
            3'b110 : rxdb <= 1;
            3'b111 : rxdb <= 1;
        endcase
    end
   
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            cnt <= 0; n_bit <= 0;
            r_ready <= 0;
            rdata <= 0; rxdb0 <= 0;
            data <= 0;
        end
        else begin
            if (n_bit == 0 && rxd == 0) begin
                n_bit <= 1;
            end
            if (n_bit != 0) begin
                cnt <= cnt + 1;
                if (cnt == (`DIV/4)-1) rxdb0[0] <= rxd;
                if (cnt == (`DIV/2)-1) rxdb0[1] <= rxd;
                if (cnt == (`DIV*3/4)-1) rxdb0[2] <= rxd;
                if (cnt == `DIV - 1) begin
/*
                if (cnt == 52 - 1) rxdb0[0] <= rxd;
                if (cnt == 104 - 1) rxdb0[1] <= rxd;
                if (cnt == 156 - 1) rxdb0[2] <= rxd;
                if (cnt == 208 - 1) begin
*/
                    cnt <= 0;
                    n_bit <= n_bit + 1;
                    rdata[9:0] <= {rxdb, rdata[9:1]};
                    if (n_bit == 9) begin
                        r_ready <= 0;
                    end
                    if (n_bit == 10) begin
                        data <= rdata[9:2];
                        r_ready <= 1;
                        n_bit <= 0;
                        cnt <= 0;
                    end
                end
            end
        end
    end
endmodule
