module test_video;
    reg ck, rst;

   	video video(rst, ck, 1'b1, 
			framestart, linestart, pixelena, 
			hsync, vsync, 
			hblank, vblank, dotenable,
			rout, gout, bout,
			ck,
			0, 0, 0, 0);

    initial begin
        ck <= 0; rst <= 1;
        #20 rst <= 0;        
    end

    always #10 ck <= ~ck;

    initial begin
        #5000000 $finish();
    end

    initial begin
        $dumpfile("restult.vcd");
        $dumpvars(0, video); // dump all the hierarchical instances' variables
    end

endmodule
