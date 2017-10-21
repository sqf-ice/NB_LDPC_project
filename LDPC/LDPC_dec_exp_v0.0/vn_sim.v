`timescale 1ns / 1ps

module vn_sim;

	// Inputs
	reg [10:0] a;
	reg [10:0] b;
	reg [10:0] c;
	reg [10:0] belief;

	// Outputs
	wire [10:0] r;
	wire [10:0] s;
	wire [10:0] t;
	
	vn uut (
		.msg_in_1(a),
		.msg_in_2(b),
		.msg_in_3(c),
		.belief(belief),
		.msg_out_1(r),
		.msg_out_2(s),
		.msg_out_3(t)
	);
	
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		
		#10
		a = 11'b00110101011;
		b = 11'b00110011010;
		c = 11'b11100101000;
		belief = 11'b10110110011;

	end
      
endmodule

