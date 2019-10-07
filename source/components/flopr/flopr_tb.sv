
/* TestBench 
* Top-Level Entity: flopr */

module flopr_tb();

	// intialize logic
	logic clk, reset;
	logic [63: 0] d, q;
	
	// instantiate device under test (65 bits)
	flopr dut(clk, reset, d, q);
	
	// apply inputs
	initial begin
	
		reset = 1; clk = 0; d = 0; #10ns;
		clk = 1; #10ns;
		clk = 0; d = 1; #10ns;
		clk = 1; #10ns;
		clk = 0; d = 2; #10ns;
		clk = 1; #10ns;
		clk = 0; d = 3; #10ns;
		clk = 1; #10ns;
		clk = 0; d = 4; #10ns;
		clk = 1; #10ns;
		clk = 0; d = 5; #10ns;
		
		reset = 0; clk = 1; #10ns;
		clk = 0; d = 6; #10ns;
		clk = 1; #10ns;
		clk = 0; d = 7; #10ns;
		clk = 1; #10ns;
		clk = 0; d = 8; #10ns;
		clk = 1; #10ns;
		clk = 0; d = 9; #10ns;
		
	end
	
	// reinstantiate logic
	logic [31: 0] d2, q2;
	
	// reinstantiate device under test (32 bit)
	flopr #(32) dut2(clk, reset, d2, q2);
	
		// apply inputs
	initial begin
	
		reset = 1; clk = 0; d2 = 0; #10ns;
		clk = 1; #10ns;
		clk = 0; d2 = 1; #10ns;
		clk = 1; #10ns;
		clk = 0; d2 = 2; #10ns;
		clk = 1; #10ns;
		clk = 0; d2 = 3; #10ns;
		clk = 1; #10ns;
		clk = 0; d2 = 4; #10ns;
		clk = 1; #10ns;
		clk = 0; d2 = 5; #10ns;
		
		reset = 0; clk = 1; #10ns;
		clk = 0; d2 = 6; #10ns;
		clk = 1; #10ns;
		clk = 0; d2 = 7; #10ns;
		clk = 1; #10ns;
		clk = 0; d2 = 8; #10ns;
		clk = 1; #10ns;
		clk = 0; d2 = 9; #10ns;
		
	end
	

endmodule
