module decoder #(parameter NUM_TRIALS = 8, parameter WIDTH = 20, parameter N = 6, parameter K = 3)(
	input clk,
	input rst,
	input [WIDTH-1:0] max_num_iter,
	output [NUM_TRIALS-1:0] undet_err,
	output [NUM_TRIALS-1:0] det_err);

	//decoder dec_inst(
	//	.clk(clk)
	//	);


	always @(posedge clk) begin
		if (rst) begin
			undet_err <= 0;
			det_err <= 0;			
		end else begin
			
		end
	end

endmodule
