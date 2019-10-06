
/**
* Shift Left 2:
* Multiply a number by 2**2 (4)
*/

module sl2
			#(parameter N=64)
			(input logic [N-1: 0] in,
			 output logic [N-1: 0] out);
			 
	assign out = in << 2;
	
endmodule
