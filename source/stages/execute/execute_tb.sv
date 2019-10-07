

/* TestBench 
* Top-Level Entity: execute */

module execute_tb();

	logic AluSrc;
	logic [3:0] AluControl;
	logic [63:0] PC_E;
	logic [63:0] signImm_E;
	logic [63:0] readData1_E;
	logic [63:0] readData2_E;
	logic [63:0] PCBranch_E;
	logic [63:0] aluResult_E;
	logic [63:0] writeData_E;
	logic zero_E;
	
	// intialize device under test
	execute dut(AluSrc, AluControl, PC_E, signImm_E, readData1_E,
					readData2_E, PCBranch_E, aluResult_E, writeData_E);
					
	initial begin
	
	// Test a simple addition
	AluSrc = 1;
	AluControl = 4'b0010;
	readData1_E = 64'd23;
	readData2_E = 64'd32;
	// aluResult_E should be 64'd55
	#10ns;
	
	// Al immediate operand
	AluSrc = 1;
	PC_E = 64'd15;
	signImm_E = 64'd2;
	// PCBranch_E should be 23
	#10ns;
	
	// Test a immediate operand with ALU
	AluSrc = 0;
	signImm_E = 64'd23;
	// aluResult_E should be 46
	#10ns;
	
	end

endmodule
