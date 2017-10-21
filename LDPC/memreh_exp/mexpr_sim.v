`timescale 1ns / 1ps

module mexpr_sim;

	// Outputs
	wire [7:0] b;
	reg [7:0] a;
	reg [7:0] mem_array [0:9];  // 100 byte array

	
	memor uut (
		.a(a),
		.b(b)
	);
	
	initial begin
		$readmemh ("mexp.data", mem_array);
		
		a = 0;
		#10
		a = mem_array[3];
		
		
	end
      
endmodule

