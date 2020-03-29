module manel_tb;
	reg clk, rst_n, RXD;

//module main(clk24M, rst_n,
//			lcd_pclk, lcd_de, lcd_vsync, lcd_hsync, lcd_rout, lcd_gout, lcd_bout,
//			RXD,
//			led_r_b, led_g_b, led_b_b
//			);

	always begin
		#20; clk <= ~clk;
	end
	initial begin
		clk <= 0; rst_n <= 0; RXD <= 1;
		#40;
		rst_n <= 1;
	end

endmodule

