// Etapa: MEMORY

module memory 	(input logic BranchZero, BranchNotZero, zero_W,					
					output logic PCSrc_W);
					
	assign PCSrc_W = BranchZero & (zero_W  | BranchNotZero);
	
endmodule