
module alu(input logic [63:0] a,
				input logic [63:0] b,
				input logic [3:0] ALUControl,
				output logic [63:0] result,
				output logic zero);
				
	always_comb begin
		case (ALUControl)
			4'b0000: result = a & b;
			4'b0001: result = a | b;
			4'b0010: result = a + b;
			4'b0110: result = a - b;
			4'b0111: result = b;
			4'b1100: result = ~ (a | b);
			default: result = 64'b0;
		endcase
	
		if (result === 0) begin
			zero = 1;
		end else begin
			zero = 0;
		end
	
	end
				
endmodule
