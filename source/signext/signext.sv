
module signext(input logic [31:0] a, output logic [63:0] y);
	
	always_comb
	case (a[31:20])
		11'b11111000010: y = a << 32;
		11'b11111000000: y = a << 32;
		11'b10110100???: y = a << 32;
		default: y = '0;
	endcase
	
endmodule
