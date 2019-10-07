
/**
* Sign Extensor:
* for instructions with immediate operands,
* extends the sign for the immediate.
* Any other case, returns 0.
*/

module signext(input logic [31:0] a, output logic [63:0] y);
	
	always_comb
	casez (a[31:21])
		11'b111_1100_0010: y = {{55{a[20]}}, a[20:12]};	// LDUR
		11'b111_1100_0000: y = {{55{a[20]}}, a[20:12]};	// STDUR
		11'b101_1010_0???: y = {{45{a[23]}}, a[23:5]};	// CBZ
		default: y = 64'b0;
	endcase
	
endmodule
