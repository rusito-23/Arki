

module mux2_tb();

	logic [63:0] a,  b, out;
	logic s;
	
	// instantiate device under test
	mux2 dut(a, b, s, out);
	
	initial begin
		a = 64'd23;
		b = 64'd46;
		
		s = 1; #10;
		s = 0; #10;
		s = 1; #10;
		s = 0; #10;
		s = 1; #10;
		s = 0; #10;
		s = 1; #10;
		s = 0; #10;
		
	end
 
endmodule
