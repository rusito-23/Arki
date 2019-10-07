
/* TestBench 
* Top-Level Entity: signext */

module signext_tb();

	logic [31:0] instruction;
	logic [63:0] result;
	
	// initialize device under test
	signext dut(instruction, result);
	
	initial begin
	
		/* BRANCH */
	
		// Immediate -> 23
		instruction = { 8'b10110100, 19'd23, 5'b1}; #10ns;
		// Immediate -> -23
		instruction = { 8'b10110100, 19'b1111111111111101001, 5'b1}; #10ns;
		
		/* LDUR */
	
		//	Immediate -> 23
		instruction = { 11'b11111000010, 9'd23, 12'b1}; #10ns;
		// Immediate -> -23
		instruction = { 11'b11111000010, 9'b111101001, 12'b1}; #10ns;
		
		/* STUR */
		
		// Immediate -> 23
		instruction = { 11'b11111000000, 9'd23, 12'b1}; #10ns;
		// Immediate -> -23
		instruction = { 11'b11111000000, 9'b111101001, 12'b1}; #10ns;
		
		/* NON-EXISTENT */
		instruction = { 11'b10011000000, 9'd23, 12'b1}; #10ns;
		
	end

endmodule
