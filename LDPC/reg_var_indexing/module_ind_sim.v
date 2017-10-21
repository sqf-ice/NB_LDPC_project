`timescale 1ns / 1ps

module ind_sim;

	// Outputs
	wire [3:0] a;
	reg [3:0] sel;

	
	ind uut (
		.sel(sel),
		.a(a)
	);
	
	initial begin
		
		sel = 15;
		#10
		a = 5;
		#10
		a = 8;
		
		
	end
      
endmodule

