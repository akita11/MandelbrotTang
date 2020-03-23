module blink
	(
		input clk24M,
		input wire RST_N,
		output R_LED
	);

	reg [24:0] cnt;
	reg R_LED;

	always @(posedge clk24M) begin
		cnt <= cnt + 1;
		if (cnt == 12000000) begin
			cnt <= 0;
			R_LED <= ~R_LED;
		end
	end

endmodule