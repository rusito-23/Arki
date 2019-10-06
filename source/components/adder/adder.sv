
/**
* Adder:
* Sums two numbers.
*/

module adder
			#(parameter N = 64)
			(input logic [N-1: 0] s1, s2,
			output logic [N-1: 0] res);
			
	assign res = s1 + s2;
			
endmodule
