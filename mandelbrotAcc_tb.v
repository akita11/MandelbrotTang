module mandelbrot_tb;
   reg clk;
   reg rst;
   reg RXD;
   wire TXD;

   mandelbrot i0(clk, rst, RXD, TXD);
   
   always #20 clk <= ~clk; // 40ns = 25MHz

   initial begin
      $dumpfile("restult.vcd");
      $dumpvars(0, i0); // dump all the hierarchical instances' variables
   end

   initial begin
      rst <= 1; clk <= 0;
      #40 rst <= 0;
   end

   initial begin
      RXD <= 1;
      // 1bit = 1040 (40ns*26)
      #2000;
      // pix_x
      RXD <= 0; #1040; // start
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop
      #2000;
      // pix_y
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // cxs(H)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // cxs(L)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // cys(H)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // cys(L)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      // dcx(H)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // dcx(L)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      // dcy(H)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // dcy(L)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      // ------------------------
      // 1bit = 1040 (40ns*26)
      #600000;
/*
      // pix_x
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop
      #2000;
      // pix_y
      RXD <= 0; #1040; // start
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // cxs(H)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // cxs(L)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // cys(H)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // cys(L)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      // dcx(H)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // dcx(L)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      // dcy(H)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // dcy(L)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop
*/

      // pix_x
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop
      #2000;
      // pix_y
      RXD <= 0; #1040; // start
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // cxs(H)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // cxs(L)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // cys(H)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // cys(L)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      // dcx(H)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // dcx(L)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      // dcy(H)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      #2000;
      // dcy(L)
      RXD <= 0; #1040; // start
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040;
      RXD <= 0; #1040;
      RXD <= 0; #1040;
      RXD <= 1; #1040; // stop

      
     
   end
  
   
   initial begin
      #15000000 $finish();
   end
endmodule
