`timescale 1ns / 1ps

module LLRs_to_cw_sim;

	// Inputs
	reg [119:0] LLRs;

	// Outputs
	wire [10:0] r;
	
	LLRs_to_cw uut (
		.LLRs(LLRs), 
		.result(r)
	);
	
	initial begin
		// Initialize Inputs
		LLRs = 0;
		
		#10
		LLRs = 120'b111111111111110000001111111111111100000000000000000001000000000000000000010000001111111111111100000011111111111111000000;

	end
      
endmodule

