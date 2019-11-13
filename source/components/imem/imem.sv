
/**
* ROM Memory Implementation:
* Saves instructions to the program to be excecuted.
*/

module imem 
			#(parameter N = 32)
			(input logic [5:0] addr, 
			 output logic [N-1:0] q);
										  
	logic [N-1:0] ROM [0:63] = '{32'hcb000017,
											32'h91003c0a,
											32'haa14018b,
											32'h8a14018c,
											32'h8b0a0000,
											32'hcb01014a,
											32'hf80002eb,
											32'hf80082ec,
											32'hb5ffff8a,
											32'hf80102e0,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00,
											32'h00};
										
	always_comb begin
		if (addr < 64) begin
			q = ROM[addr];
		end else begin
			q = 0;
		end
	end

endmodule
