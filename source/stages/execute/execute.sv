
/**
* Execute Stage:
* Runs the given instruction (after being decoded).
*/

module execute #(parameter N=64)
					(input logic AluSrc,
					input logic [3:0] AluControl,
					input logic [N-1:0] PC_E,
					input logic [N-1:0] signImm_E,
					input logic [N-1:0] readData1_E,
					input logic [N-1:0] readData2_E,
					output logic [N-1:0] PCBranch_E,
					output logic [N-1:0] aluResult_E,
					output logic [N-1:0] writeData_E,
					output logic zero_E);
					
	// Out: PCBranch_E
	logic [N-1:0] signImm_E_SL;
	sl2 #(N) sl2EX(signImm_E, signImm_E_SL);
	adder #(N) adderEX(signImm_E_SL, PC_E, PCBranch_E);
	
	// Out: writeData_E
	assign writeData_E = readData2_E;
	
	// ALU Multiplexor
	logic [N-1:0] aluInput;
	mux2 #(N) mux2EX(readData2_E, signImm_E, AluSrc, aluInput);
	
	// Out: aluResult_E
	alu aluEX(readData1_E, aluInput, AluControl, aluResult_E, zero_E);

endmodule
