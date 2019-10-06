
/**
* Fetch Stage:
* Returns the instruction to be executed next.
*/

module fetch(input logic PCSrc_F,
				 input logic clk,
				 input logic reset,
				 input logic [63:0] PCBranch_F,
				 output logic [63:0] imem_addr_F);
				 
	// intialize variables
	
	logic [63:0] outMux = 64'b0;
	logic [63:0] resultAdder = 64'b0;
	logic [63:0] outFlipFlop = 64'b0;
	logic [63:0] four = 64'd4;
	
	// modules
	
	mux2 muxFetch(resultAdder, PCBranch_F, PCSrc_F, outMux);
	flopr flipflop(clk, reset, outMux, outFlipFlop);
	adder add(four, outFlipFlop, resultAdder);
		
	assign imem_addr_F = outFlipFlop;
				 
endmodule
