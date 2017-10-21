`timescale 1ns / 1ps

module cn_sim;

	// Inputs
	reg clk;
	reg [11:0] addr;
	reg [19:0] data_in;
	reg core_en;
	reg wr_en;

	// Outputs
	wire [19:0] data_out;
	
	matrix_multip uut (
		.clk(clk),
		.addr(addr),
		.data_in(data_in),
		.data_out(data_out),
		.core_en(core_en),
		.wr_en(wr_en)
	);
	
	always begin
	#2 clk <= ~clk;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		data_in = 0;
		addr = 0;
		core_en = 1;
		wr_en = 0;
		
		#10
		addr = 22;
		data_in = 3456;
		#10
		wr_en = 1;
		#5
		wr_en = 0;
		#5
		addr = 0;
		#5
		addr = 22;

	end
      
endmodule

