
/**
* ROM Memory Implementation:
* Saves instructions to the program to be excecuted.
*/

module imem 
			#(parameter N = 32)
			(input logic [5:0] addr, 
			 output logic [N-1:0] q);
										  
	logic [N-1:0] ROM [0:63] = '{ 32'hcb170018,
											32'hb4000098,
											32'hf8000000,
											32'h8b010000,
											32'h17fffffc, 
											32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00,
											32'h00, 32'h00, 32'h00, 32'h00, 32'h00,

											32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00,
											32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00,
											32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00,
											32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00,
											32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00, 32'h00};
										
	always_comb begin
		if (addr < 64) begin
			q = ROM[addr];
		end else begin
			q = 0;
		end
	end

endmodule
