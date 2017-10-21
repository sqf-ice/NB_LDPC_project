module LLRs_to_cw #(parameter WIDTH = 20, parameter N = 6)(
input [N*WIDTH-1:0] LLRs,
output [N-1:0] result
);

assign result[0] = (LLRs[1*WIDTH-1])? 1:0;
assign result[1] = (LLRs[2*WIDTH-1])? 1:0;
assign result[2] = (LLRs[3*WIDTH-1])? 1:0;
assign result[3] = (LLRs[4*WIDTH-1])? 1:0;
assign result[4] = (LLRs[5*WIDTH-1])? 1:0;
assign result[5] = (LLRs[6*WIDTH-1])? 1:0;

endmodule
