module test_rx8;
    reg ck, rst, RXD;
    wire [7:0] data;

    RX8 rx8(ck, rst, RXD, data, ready);

    initial begin
        ck <= 0; rst <= 1; RXD <= 1;
        #20 rst <= 0;        
        #100;
        RXD <= 0;
    end

    always #10 ck <= ~ck;

    initial begin
        #10000 $finish();
    end

    initial begin
        $dumpfile("restult.vcd");
        $dumpvars(0, rx8); // dump all the hierarchical instances' variables
    end

endmodule
