
module alu(input logic [63:0] a,
				input logic [63:0] b,
				input logic [3:0] ALUControl,
				output logic [63:0] result,
				output logic zero);
				
	always_comb
	case (ALUControl)
		// AND
		4'b0000: result = a & b;
		
		// OR
		4'b0001: result = a | b;
		
		// ADD
		4'b0010: result = a + b;
		
		// SUB
		4'b0110: result = a - b;
		
		// PASS B
		4'b0111: result = b;
		
		// NOR
		4'b1100: result = b; // TODO
		
		default: result = '0;
	endcase
	
	always_comb
	case(result)
		'0: zero = 1;
		default: zero = 0;
	endcase
				
endmodule
