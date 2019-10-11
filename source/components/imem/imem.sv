
/**
* ROM Memory Implementation:
* Saves instructions to the program to be excecuted.
*/

module imem 
			#(parameter N = 32)
			(input logic [5:0] addr, 
			 output logic [N-1:0] q);
										  
	logic [N-1:0] ROM [0:63] = '{32'hcb010037,
											32'h8b0403e0,
											32'h8b040001,
											32'h8b040022,
											32'h8b040043,
											32'hf80002e0,
											32'hf80082e1,
											32'hf80102e2,
											32'hf80182e3,
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
