

module alu_tb();

	logic [3:0] control;
	logic [63:0] a;
	logic [63:0] b;
	
	logic [63:0] result;
	logic zero;
	
	// initialize device under test
	alu dut(a, b, control, result, zero);
	
	initial begin
		
		// sum (+/+)
		a = 'd23;
		b = 'd23;
		control = 4'b0010;
		#10ns; // result = 46
		
		// sum (+/-)
		a = 'd23;
		b = -'d23;
		control = 4'b0010;
		#10ns; // result = 0
		
		// sum (-/-)
		a = -'d11;
		b = -'d12;
		control = 4'b0010;
		#10ns; // result = -23
		
		// sub
		a = 'd23;
		b = 'd5;
		control = 4'b0110;
		#10ns; // result = 18
		
		
		// Overflow
		a = 64'h7FFFFFFFFFFFFFFF; // A really big number
		b = 64'h7FFFFFFFFFFFFFFF; // Another really big number
		control = 4'b0010;
		#10ns; // result = -2
		
		// AND
		a = 'b01;
		b = 'b10;
		control = 4'b0000;
		#10ns; // result = 'b00 = 0
		
		// OR
		control = 4'b0001;
		#10ns; // result = 'b11 = 3
	
	end

endmodule
