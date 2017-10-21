module decoder #(parameter WIDTH = 20, parameter N = 6, parameter K = 3)(
input [N*WIDTH-1:0] LLRs,
input [WIDTH-1:0] max_num_iter,
input clk,
input rst,
output [N-1:0] result,
output [1:0] done,
output [WIDTH-1:0] iterations_num
);


wire signed [N*WIDTH-1:0] LLRs_ass;
reg LLR_indc;
assign LLRs_ass = (LLR_indc)? {belief_5_out,belief_4_out,belief_3_out,belief_2_out,belief_1_out,belief_0_out}:LLRs;

reg [WIDTH-1:0] iter_num = 0;
reg [1:0] done_sig = 0;
assign done = done_sig;
assign iterations_num = iter_num;

reg latch_FSM = 0;
reg vn_latch_to_cn_toggle = 0;
assign vn_latch_to_cn_sig = vn_latch_to_cn_toggle;

// vn_cn_msgs init
reg signed [WIDTH-1:0] vn_cn_msgs_0_0;
reg signed [WIDTH-1:0] vn_cn_msgs_0_1;
reg signed [WIDTH-1:0] vn_cn_msgs_0_2;
reg signed [WIDTH-1:0] vn_cn_msgs_0_3;
reg signed [WIDTH-1:0] vn_cn_msgs_0_4;
reg signed [WIDTH-1:0] vn_cn_msgs_0_5;

reg signed [WIDTH-1:0] vn_cn_msgs_1_0;
reg signed [WIDTH-1:0] vn_cn_msgs_1_1;
reg signed [WIDTH-1:0] vn_cn_msgs_1_2;
reg signed [WIDTH-1:0] vn_cn_msgs_1_3;
reg signed [WIDTH-1:0] vn_cn_msgs_1_4;
reg signed [WIDTH-1:0] vn_cn_msgs_1_5;

reg signed [WIDTH-1:0] vn_cn_msgs_2_0;
reg signed [WIDTH-1:0] vn_cn_msgs_2_1;
reg signed [WIDTH-1:0] vn_cn_msgs_2_2;
reg signed [WIDTH-1:0] vn_cn_msgs_2_3;
reg signed [WIDTH-1:0] vn_cn_msgs_2_4;
reg signed [WIDTH-1:0] vn_cn_msgs_2_5;

// cn_vn_msgs init
wire signed [WIDTH-1:0] cn_vn_msgs_0_0;
wire signed [WIDTH-1:0] cn_vn_msgs_0_1;
wire signed [WIDTH-1:0] cn_vn_msgs_0_2;
wire signed [WIDTH-1:0] cn_vn_msgs_0_3;
wire signed [WIDTH-1:0] cn_vn_msgs_0_4;
wire signed [WIDTH-1:0] cn_vn_msgs_0_5;

wire signed [WIDTH-1:0] cn_vn_msgs_1_0;
wire signed [WIDTH-1:0] cn_vn_msgs_1_1;
wire signed [WIDTH-1:0] cn_vn_msgs_1_2;
wire signed [WIDTH-1:0] cn_vn_msgs_1_3;
wire signed [WIDTH-1:0] cn_vn_msgs_1_4;
wire signed [WIDTH-1:0] cn_vn_msgs_1_5;

wire signed [WIDTH-1:0] cn_vn_msgs_2_0;
wire signed [WIDTH-1:0] cn_vn_msgs_2_1;
wire signed [WIDTH-1:0] cn_vn_msgs_2_2;
wire signed [WIDTH-1:0] cn_vn_msgs_2_3;
wire signed [WIDTH-1:0] cn_vn_msgs_2_4;
wire signed [WIDTH-1:0] cn_vn_msgs_2_5;


// Psoterior Belief Message Nets Declaration
wire [WIDTH-1:0] belief_5_out;
wire [WIDTH-1:0] belief_4_out;
wire [WIDTH-1:0] belief_3_out;
wire [WIDTH-1:0] belief_2_out;
wire [WIDTH-1:0] belief_1_out;
wire [WIDTH-1:0] belief_0_out;


// Variable Nodes Message Nets Declaration
// Variable Node 0
wire [WIDTH-1:0] vn_0_out_1;
wire [WIDTH-1:0] vn_0_out_2;
wire [WIDTH-1:0] vn_0_out_3;
// Variable Node 1
wire [WIDTH-1:0] vn_1_out_1;
wire [WIDTH-1:0] vn_1_out_2;
wire [WIDTH-1:0] vn_1_out_3;
// Variable Node 2
wire [WIDTH-1:0] vn_2_out_1;
wire [WIDTH-1:0] vn_2_out_2;
wire [WIDTH-1:0] vn_2_out_3;
// Variable Node 3
wire [WIDTH-1:0] vn_3_out_1;
wire [WIDTH-1:0] vn_3_out_2;
wire [WIDTH-1:0] vn_3_out_3;
// Variable Node 4
wire [WIDTH-1:0] vn_4_out_1;
wire [WIDTH-1:0] vn_4_out_2;
wire [WIDTH-1:0] vn_4_out_3;
// Variable Node 5
wire [WIDTH-1:0] vn_5_out_1;
wire [WIDTH-1:0] vn_5_out_2;
wire [WIDTH-1:0] vn_5_out_3;

///////////////////////////////////////////////////////
// Variable Nodes
///////////////////////////////////////////////////////
vn vn_0_inst (
	.msg_in_1(cn_vn_msgs_0_0),
	.msg_in_2(cn_vn_msgs_1_0),
	.msg_in_3(cn_vn_msgs_2_0),
	.msg_out_1(vn_0_out_1),
	.msg_out_2(vn_0_out_2),
	.msg_out_3(vn_0_out_3),
	.belief(belief_0_out)
	);

vn vn_1_inst (
	.msg_in_1(cn_vn_msgs_0_1),
	.msg_in_2(cn_vn_msgs_1_1),
	.msg_in_3(cn_vn_msgs_2_1),
	.msg_out_1(vn_1_out_1),
	.msg_out_2(vn_1_out_2),
	.msg_out_3(vn_1_out_3),
	.belief(belief_1_out)
	);

vn vn_2_inst (
	.msg_in_1(cn_vn_msgs_0_2),
	.msg_in_2(cn_vn_msgs_1_2),
	.msg_in_3(cn_vn_msgs_2_2),
	.msg_out_1(vn_2_out_1),
	.msg_out_2(vn_2_out_2),
	.msg_out_3(vn_2_out_3),
	.belief(belief_2_out)
	);

vn vn_3_inst (
	.msg_in_1(cn_vn_msgs_0_3),
	.msg_in_2(cn_vn_msgs_1_3),
	.msg_in_3(cn_vn_msgs_2_3),
	.msg_out_1(vn_3_out_1),
	.msg_out_2(vn_3_out_2),
	.msg_out_3(vn_3_out_3),
	.belief(belief_3_out)
	);

vn vn_4_inst (
	.msg_in_1(cn_vn_msgs_0_4),
	.msg_in_2(cn_vn_msgs_1_4),
	.msg_in_3(cn_vn_msgs_2_4),
	.msg_out_1(vn_4_out_1),
	.msg_out_2(vn_4_out_2),
	.msg_out_3(vn_4_out_3),
	.belief(belief_4_out)
	);

vn vn_5_inst (
	.msg_in_1(cn_vn_msgs_0_5),
	.msg_in_2(cn_vn_msgs_1_5),
	.msg_in_3(cn_vn_msgs_2_5),
	.msg_out_1(vn_5_out_1),
	.msg_out_2(vn_5_out_2),
	.msg_out_3(vn_5_out_3),
	.belief(belief_5_out)
	);

///////////////////////////////////////////////////////
// Posterior Belief
///////////////////////////////////////////////////////
posterior_belief posterior_belief_0_inst (
	.msg_in_1(cn_vn_msgs_0_0),
	.msg_in_2(cn_vn_msgs_1_0),
	.msg_in_3(cn_vn_msgs_2_0),
	.LLR_init(LLRs[1*WIDTH-1:0*WIDTH]),
	.result(belief_0_out)
	);

posterior_belief posterior_belief_1_inst (
	.msg_in_1(cn_vn_msgs_0_1),
	.msg_in_2(cn_vn_msgs_1_1),
	.msg_in_3(cn_vn_msgs_2_1),
	.LLR_init(LLRs[2*WIDTH-1:1*WIDTH]),
	.result(belief_1_out)
	);

posterior_belief posterior_belief_2_inst (
	.msg_in_1(cn_vn_msgs_0_2),
	.msg_in_2(cn_vn_msgs_1_2),
	.msg_in_3(cn_vn_msgs_2_2),
	.LLR_init(LLRs[3*WIDTH-1:2*WIDTH]),
	.result(belief_2_out)
	);

posterior_belief posterior_belief_3_inst (
	.msg_in_1(cn_vn_msgs_0_3),
	.msg_in_2(cn_vn_msgs_1_3),
	.msg_in_3(cn_vn_msgs_2_3),
	.LLR_init(LLRs[4*WIDTH-1:3*WIDTH]),
	.result(belief_3_out)
	);

posterior_belief posterior_belief_4_inst (
	.msg_in_1(cn_vn_msgs_0_4),
	.msg_in_2(cn_vn_msgs_1_4),
	.msg_in_3(cn_vn_msgs_2_4),
	.LLR_init(LLRs[5*WIDTH-1:4*WIDTH]),
	.result(belief_4_out)
	);

posterior_belief posterior_belief_5_inst (
	.msg_in_1(cn_vn_msgs_0_5),
	.msg_in_2(cn_vn_msgs_1_5),
	.msg_in_3(cn_vn_msgs_2_5),
	.LLR_init(LLRs[6*WIDTH-1:5*WIDTH]),
	.result(belief_5_out)
	);

///////////////////////////////////////////////////////
// Check Nodes
///////////////////////////////////////////////////////
cn cn_0_inst (
	.msg_in_1(vn_cn_msgs_0_0),
	.msg_in_2(vn_cn_msgs_0_1),
	.msg_in_3(vn_cn_msgs_0_2),
	.msg_in_4(vn_cn_msgs_0_3),
	.msg_in_5(vn_cn_msgs_0_4),
	.msg_in_6(vn_cn_msgs_0_5),
	.msg_out_1(cn_vn_msgs_0_0),
	.msg_out_2(cn_vn_msgs_0_1),
	.msg_out_3(cn_vn_msgs_0_2),
	.msg_out_4(cn_vn_msgs_0_3),
	.msg_out_5(cn_vn_msgs_0_4),
	.msg_out_6(cn_vn_msgs_0_5)
	);

cn cn_1_inst (
	.msg_in_1(vn_cn_msgs_1_0),
	.msg_in_2(vn_cn_msgs_1_1),
	.msg_in_3(vn_cn_msgs_1_2),
	.msg_in_4(vn_cn_msgs_1_3),
	.msg_in_5(vn_cn_msgs_1_4),
	.msg_in_6(vn_cn_msgs_1_5),
	.msg_out_1(cn_vn_msgs_1_0),
	.msg_out_2(cn_vn_msgs_1_1),
	.msg_out_3(cn_vn_msgs_1_2),
	.msg_out_4(cn_vn_msgs_1_3),
	.msg_out_5(cn_vn_msgs_1_4),
	.msg_out_6(cn_vn_msgs_1_5)
	);

cn cn_2_inst (
	.msg_in_1(vn_cn_msgs_2_0),
	.msg_in_2(vn_cn_msgs_2_1),
	.msg_in_3(vn_cn_msgs_2_2),
	.msg_in_4(vn_cn_msgs_2_3),
	.msg_in_5(vn_cn_msgs_2_4),
	.msg_in_6(vn_cn_msgs_2_5),
	.msg_out_1(cn_vn_msgs_2_0),
	.msg_out_2(cn_vn_msgs_2_1),
	.msg_out_3(cn_vn_msgs_2_2),
	.msg_out_4(cn_vn_msgs_2_3),
	.msg_out_5(cn_vn_msgs_2_4),
	.msg_out_6(cn_vn_msgs_2_5)
	);
///////////////////////////////////////////////////////
// LLRs_to_cw
///////////////////////////////////////////////////////

LLRs_to_cw LLRs_to_cw_inst(
	.LLRs(LLRs_ass),
	.result(result)
	);

matrix_multip matrix_multip_inst(
	.H_t(18'b111111111111111111),
	.cw(result),
	.dot_product(dot_product_result)
	);

///////////////////////////////////////////////////////
// vn_latch_to_cn
///////////////////////////////////////////////////////
always @(posedge vn_latch_to_cn_sig) begin
	// Check Node 0
	vn_cn_msgs_0_0 <= vn_0_out_1;
	vn_cn_msgs_0_1 <= vn_1_out_1;
	vn_cn_msgs_0_2 <= vn_2_out_1;
	vn_cn_msgs_0_3 <= vn_3_out_1;
	vn_cn_msgs_0_4 <= vn_4_out_1;
	vn_cn_msgs_0_5 <= vn_5_out_1;

	// Check Node 1
	vn_cn_msgs_1_0 <= vn_0_out_2;
	vn_cn_msgs_1_1 <= vn_1_out_2;
	vn_cn_msgs_1_2 <= vn_2_out_2;
	vn_cn_msgs_1_3 <= vn_3_out_2;
	vn_cn_msgs_1_4 <= vn_4_out_2;
	vn_cn_msgs_1_5 <= vn_5_out_2;

	// Check Node 2
	vn_cn_msgs_2_0 <= vn_0_out_3;
	vn_cn_msgs_2_1 <= vn_1_out_3;
	vn_cn_msgs_2_2 <= vn_2_out_3;
	vn_cn_msgs_2_3 <= vn_3_out_3;
	vn_cn_msgs_2_4 <= vn_4_out_3;
	vn_cn_msgs_2_5 <= vn_5_out_3;
end

always @(posedge clk) begin
	if (rst) begin
		done_sig <= 0;
		iter_num <= 0;
		LLR_indc <= 0;
		latch_FSM <= 0;

	// Check Node 0
		vn_cn_msgs_0_0 <= LLRs[1*WIDTH-1:0*WIDTH];
		vn_cn_msgs_0_1 <= LLRs[2*WIDTH-1:1*WIDTH];
		vn_cn_msgs_0_2 <= LLRs[3*WIDTH-1:2*WIDTH];
		vn_cn_msgs_0_3 <= LLRs[4*WIDTH-1:3*WIDTH];
		vn_cn_msgs_0_4 <= LLRs[5*WIDTH-1:4*WIDTH];
		vn_cn_msgs_0_5 <= LLRs[6*WIDTH-1:5*WIDTH];

	// Check Node 1
		vn_cn_msgs_1_0 <= LLRs[1*WIDTH-1:0*WIDTH];
		vn_cn_msgs_1_1 <= LLRs[2*WIDTH-1:1*WIDTH];
		vn_cn_msgs_1_2 <= LLRs[3*WIDTH-1:2*WIDTH];
		vn_cn_msgs_1_3 <= LLRs[4*WIDTH-1:3*WIDTH];
		vn_cn_msgs_1_4 <= LLRs[5*WIDTH-1:4*WIDTH];
		vn_cn_msgs_1_5 <= LLRs[6*WIDTH-1:5*WIDTH];

	// Check Node 2
		vn_cn_msgs_2_0 <= LLRs[1*WIDTH-1:0*WIDTH];
		vn_cn_msgs_2_1 <= LLRs[2*WIDTH-1:1*WIDTH];
		vn_cn_msgs_2_2 <= LLRs[3*WIDTH-1:2*WIDTH];
		vn_cn_msgs_2_3 <= LLRs[4*WIDTH-1:3*WIDTH];
		vn_cn_msgs_2_4 <= LLRs[5*WIDTH-1:4*WIDTH];
		vn_cn_msgs_2_5 <= LLRs[6*WIDTH-1:5*WIDTH];
	end
	else if (~done_sig) begin
			if(dot_product_result) begin
				LLR_indc <= 1;
				if(latch_FSM) begin
					latch_FSM <= 0;
					vn_latch_to_cn_toggle <= ~vn_latch_to_cn_toggle;
				end else if(iter_num == 0) begin
					iter_num <= iter_num + 1;
				end else if (iter_num < max_num_iter && iter_num != 0) begin
					iter_num <= iter_num + 1;
					vn_latch_to_cn_toggle <= ~vn_latch_to_cn_toggle;
					latch_FSM <= 1;
				end else begin
					done_sig <= 2'b01;
				end
			end
			else begin
				done_sig <= 2'b10;
			end
	end
end

endmodule
