
module regfile_tb();

	// internal variables
	logic clk, we3;
	logic [4:0] ra1, ra2, wa3;
	logic	[63:0] wd3, rd1, rd2;
	
	// instantiate device under test
	regfile dut(clk, we3, ra1, ra2, wa3, wd3, rd1, rd2);
	
	initial begin
		ra1 = 0; #10ns;
		ra1 = 2; #10ns;
		ra2 = 2; #10ns;
		ra2 = 3; #10ns;
	end

endmodule
