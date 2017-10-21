module ind(
	input [3:0] sel,
	output [3:0] a
	);

reg [15:0] b = 16'b1010101010110011;
wire [3:0] sels;
assign sels = sel - 4;

assign a = b[sel:sels];

endmodule
