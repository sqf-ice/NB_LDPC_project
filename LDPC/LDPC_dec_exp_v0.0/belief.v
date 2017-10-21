module posterior_belief #(parameter WIDTH = 20)(
input [WIDTH-1:0] msg_in_1,
input [WIDTH-1:0] msg_in_2,
input [WIDTH-1:0] msg_in_3,
input [WIDTH-1:0] LLR_init,
output [WIDTH-1:0] result
);

assign result = LLR_init + msg_in_1 + msg_in_2 + msg_in_3;

endmodule
