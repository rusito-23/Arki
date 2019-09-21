
module regfile_tb();

	// internal variables
	logic clk, we3;
	logic [4:0] ra1, ra2, wa3;
	logic	[63:0] wd3, rd1, rd2;
	
	// instantiate device under test
	regfile dut(clk, we3, ra1, ra2, wa3, wd3, rd1, rd2);
	
	always begin
		clk = 1; #10ns; clk = 0; #10ns;
	end
	
	initial begin
		
		// test first 5 registers

		
		// write tests
		we3 = 1;
		wa3 = 23;
		wd3 = 46; #5ns;
		ra1 = 23; // check the value of register 23 is 46
		#5ns;
		
		// no write tests
		#10ns;
		we3 = 0;
		wa3 = 23;
		wd3 = 96; #5ns;
		ra1 = 23; // check the value of register 23 is still 46 (not 69)
		#5ns;
		we3 = 1; #10ns; // check the new value if we set write to true
		
		// write XZR
		#10ns;
		wa3 = 31;
		wd3 = 23;
		#5ns;
		ra2 = 31;
		#10ns;
		
		
		$stop;
		
	end

endmodule
