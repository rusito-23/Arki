
/**
* Fetch Stage:
* Returns the instruction to be executed next.
*/

module fetch #(parameter N=64)
				(input logic PCSrc_F,
				 input logic clk,
				 input logic reset,
				 input logic [N-1:0] PCBranch_F,
				 output logic [N-1:0] imem_addr_F);
				 
	// intialize variables
	
	logic [N-1:0] outMux = 'b0;
	logic [N-1:0] resultAdder = 'b0;
	logic [N-1:0] outFlipFlop = 'b0;
	logic [N-1:0] four = 'd4;
	
	// modules
	
	mux2 #(N) muxFETCH(resultAdder, PCBranch_F, PCSrc_F, outMux);
	flopr #(N) floprFETCH(clk, reset, outMux, outFlipFlop);
	adder #(N) adderFETCH(four, outFlipFlop, resultAdder);
		
	assign imem_addr_F = outFlipFlop;
				 
endmodule
