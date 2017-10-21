`timescale 1ns / 1ps

module min_sim;

	// Inputs
	reg [10:0] a;
	reg [10:0] b;
	reg [10:0] c;
	reg [10:0] d;
	reg [10:0] e;

	// Outputs
	wire [10:0] r;
	
	min uut (
		.msg_1(a), 
		.msg_2(b), 
		.msg_3(c), 
		.msg_4(d), 
		.msg_5(e), 
		.msg(r)
	);
	
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;
		
		#10
		a = 11'b00000110100111;
		b = 11'b00001010111010;
		c = 11'b10000010101000;
		d = 11'b11100010110010;
		e = 11'b01000010101001;

	end
      
endmodule

