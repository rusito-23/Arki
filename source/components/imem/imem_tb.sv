
/* TestBench 
* Top-Level Entity: imem */

module imem_tb();
	logic [5:0] addr;
	logic	[31:0] q; // internal variables
	
	// instantiate device under test
	imem dut(addr, q);
	
	initial begin
		addr = 0; #10ns;
		addr = 1; #10ns;
		addr = 2; #10ns;
		addr = 3; #10ns;
		addr = 4; #10ns;
		addr = 5; #10ns;
		addr = 6; #10ns;
		addr = 7; #10ns;
		addr = 8; #10ns;
		addr = 9; #10ns;
		addr = 10; #10ns;
		addr = 11; #10ns;
		addr = 12; #10ns;
		addr = 13; #10ns;
		addr = 14; #10ns;
		addr = 15; #10ns;
		addr = 16; #10ns;
		addr = 17; #10ns;
		addr = 18; #10ns;
		addr = 19; #10ns;
		addr = 20; #10ns;
		addr = 21; #10ns;
		addr = 22; #10ns;
		addr = 23; #10ns;
		addr = 24; #10ns;
	end
endmodule
