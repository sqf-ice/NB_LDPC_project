`timescale 1ns / 1ps

module matrix_multip_sim;

	// Inputs
	reg [17:0] H_t;
	reg [5:0] cw;

	// Outputs
	wire z;
	
	matrix_multip uut (
		.H_t(H_t), 
		.cw(cw),
		.dot_product(z)
	);
	
	initial begin
		// Initialize Inputs
		H_t = 0;
		cw = 0;
		
		#10
		H_t = 18'b001011010111011101;
		cw = 6'b101010;
		#30
		cw = 6'b000101;

	end
      
endmodule

