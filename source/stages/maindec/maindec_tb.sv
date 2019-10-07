
/* TestBench 
* Top-Level Entity: maindec */

module maindec_tb();

		logic [10:0] Op;
		logic Reg2Loc;
		logic ALUSrc;
		logic MemtoReg;
		logic RegWrite;
		logic MemRead;
		logic MemWrite;
		logic Branch;
		logic [1:0] ALUOp;
		
		// instantiate device under test
		maindec dut(Op, Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp);
		
		initial begin
			
			// Test LDUR
			Op = 11'b111_1100_0010; #10ns;
			
			// Test STDUR
			Op = 11'b111_1100_0000; #10ns;
			
			// Test CBZ
			Op = 11'b101_1010_0010; #10ns;
			
			// Test ADD
			Op = 11'b100_0101_1000; #10ns;
			
			// Test SUB
			Op = 11'b110_0101_1000; #10ns;
			
			// Test AND
			Op = 11'b100_0101_0000; #10ns;
			
			// Test OR
			Op = 11'b101_0101_0000; #10ns;
			
			// Test Random
			Op = 11'b111_1111_1111; #10ns;
			Op = 11'b000_0000_0000; #10ns;
			
		end

endmodule
