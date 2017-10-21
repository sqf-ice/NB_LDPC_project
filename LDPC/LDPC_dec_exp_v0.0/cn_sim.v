`timescale 1ns / 1ps

module cn_sim;

	// Inputs
	reg [10:0] a;
	reg [10:0] b;
	reg [10:0] c;
	reg [10:0] d;
	reg [10:0] e;
	reg [10:0] f;

	// Outputs
	wire [10:0] r;
	wire [10:0] s;
	wire [10:0] t;
	wire [10:0] x;
	wire [10:0] y;
	wire [10:0] z;
	
	cn uut (
		.msg_in_1(a), 
		.msg_in_2(b), 
		.msg_in_3(c), 
		.msg_in_4(d), 
		.msg_in_5(e), 
		.msg_in_6(f),
		.msg_out_1(r),
		.msg_out_2(s),
		.msg_out_3(t),
		.msg_out_4(x),
		.msg_out_5(y),
		.msg_out_6(z)
	);
	
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;
		f = 0;
		
		#10
		a = 8'b00110101;
		b = 8'b01011010;
		c = 8'b00101000;
		d = 8'b10110010;
		e = 8'b10101001;
		f = 8'b01001101;

	end
      
endmodule

