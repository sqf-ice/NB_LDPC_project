`timescale 1ns / 1ps

module decoder_sim;

	// Inputs
	reg [6*20-1:0] LLRs;
	reg [20-1:0] max_num_iter;
	reg clk;
	reg rst;

	// Outputs
	wire [6-1:0] result;
	wire [1:0] done;
	wire [20-1:0] iterations_num;
	wire [20-1:0] vn_00;
	wire [20-1:0] vn_01;
	wire [20-1:0] vn_02;
	wire [20-1:0] vn_03;
	wire [20-1:0] vn_04;
	wire [20-1:0] vn_05;
	wire [20-1:0] vn_10;
	wire [20-1:0] vn_11;
	wire [20-1:0] vn_12;
	wire [20-1:0] vn_13;
	wire [20-1:0] vn_14;
	wire [20-1:0] vn_15;
	wire [20-1:0] vn_20;
	wire [20-1:0] vn_21;
	wire [20-1:0] vn_22;
	wire [20-1:0] vn_23;
	wire [20-1:0] vn_24;
	wire [20-1:0] vn_25;
	wire [20-1:0] cn_00;
	wire [20-1:0] cn_01;
	wire [20-1:0] cn_02;
	wire [20-1:0] cn_03;
	wire [20-1:0] cn_04;
	wire [20-1:0] cn_05;
	wire [20-1:0] cn_10;
	wire [20-1:0] cn_11;
	wire [20-1:0] cn_12;
	wire [20-1:0] cn_13;
	wire [20-1:0] cn_14;
	wire [20-1:0] cn_15;
	wire [20-1:0] cn_20;
	wire [20-1:0] cn_21;
	wire [20-1:0] cn_22;
	wire [20-1:0] cn_23;
	wire [20-1:0] cn_24;
	wire [20-1:0] cn_25;
	wire [20-1:0] belief_5_out;
	wire [20-1:0] belief_4_out;
	wire [20-1:0] belief_3_out;
	wire [20-1:0] belief_2_out;
	wire [20-1:0] belief_1_out;
	wire [20-1:0] belief_0_out;
	wire dot_product_result;
	wire LLR_indc_wire;
	wire vn_latch_to_cn_sig;
	wire vn_latch_to_cn_sig_neg;

	
	decoder uut (
		.LLRs(LLRs),
		.max_num_iter(max_num_iter),
		.clk(clk),
		.rst(rst),
		.result(result),
		.done(done),
		.iterations_num(iterations_num),
		.vn_00(vn_00),
		.vn_01(vn_01),
		.vn_02(vn_02),
		.vn_03(vn_03),
		.vn_04(vn_04),
		.vn_05(vn_05),
		.vn_10(vn_10),
		.vn_11(vn_11),
		.vn_12(vn_12),
		.vn_13(vn_13),
		.vn_14(vn_14),
		.vn_15(vn_15),
		.vn_20(vn_20),
		.vn_21(vn_21),
		.vn_22(vn_22),
		.vn_23(vn_23),
		.vn_24(vn_24),
		.vn_25(vn_25),
		.cn_00(cn_00),
		.cn_01(cn_01),
		.cn_02(cn_02),
		.cn_03(cn_03),
		.cn_04(cn_04),
		.cn_05(cn_05),
		.cn_10(cn_10),
		.cn_11(cn_11),
		.cn_12(cn_12),
		.cn_13(cn_13),
		.cn_14(cn_14),
		.cn_15(cn_15),
		.cn_20(cn_20),
		.cn_21(cn_21),
		.cn_22(cn_22),
		.cn_23(cn_23),
		.cn_24(cn_24),
		.cn_25(cn_25),
		.belief_0_out(belief_0_out),
		.belief_1_out(belief_1_out),
		.belief_2_out(belief_2_out),
		.belief_3_out(belief_3_out),
		.belief_4_out(belief_4_out),
		.belief_5_out(belief_5_out),
		.dot_product_result(dot_product_result),
		.LLR_indc_wire(LLR_indc_wire),
		.vn_latch_to_cn_sig(vn_latch_to_cn_sig),
		.vn_latch_to_cn_sig_neg(vn_latch_to_cn_sig_neg)
	);
	
	always begin
	#5 clk <= ~clk;
	end

	initial begin
		// Initialize Inputs
		LLRs = 120'b111111111111110000001111111111111100000000000000000001000000000000000000010000001111111111111100000011111111111111000000;
		max_num_iter = 5;
		clk = 0;
		rst = 1;
		
		#6
		rst = 0;




		#10
		if(vn_00==20'b11111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_01==20'b11111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_02==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_03==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_04==20'b11111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_05==20'b11111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_10==20'b11111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_11==20'b11111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_12==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_13==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_14==20'b11111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_15==20'b11111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_20==20'b11111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_21==20'b11111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_22==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_23==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_24==20'b11111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_25==20'b11111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(~done) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(~dot_product_result) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(result==6'b110011) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(done==2'b10) begin
			O$display("Passed");
		end else begin
			$display("Failed");
		end




		#5
		rst = 1;
		LLRs = 120'b000000000000010000000000000000000100000000000000000001000000000000000000010000001111111111111100000000000000000001000000;
		#5
		rst = 0;
		#10
		if(vn_00==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_01==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_02==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_03==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_04==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_05==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_10==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_11==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_12==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_13==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_14==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_15==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_20==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_21==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_22==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_23==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_24==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_25==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(cn_00==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_01==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_02==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_03==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_04==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_05==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(cn_10==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_11==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_12==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_13==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_14==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_15==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(cn_20==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_21==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_22==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_23==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_24==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_25==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end



		if(done==2'b00) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(belief_0_out==20'b11111111111110000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_1_out==20'b00010000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_2_out==20'b11111111111110000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_3_out==20'b11111111111110000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_4_out==20'b11111111111110000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_5_out==20'b11111111111110000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(result==6'b111101) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(iterations_num==1) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end





		#20
		if(iterations_num==2) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_00==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_01==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_02==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_03==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_04==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_05==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_10==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_11==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_12==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_13==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_14==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_15==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_20==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_21==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_22==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_23==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_24==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_25==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end



		if(cn_00==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_01==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_02==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_03==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_04==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_05==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(cn_10==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_11==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_12==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_13==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_14==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_15==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(cn_20==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_21==20'b11111111111111000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_22==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_23==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_24==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_25==20'b00001000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(belief_0_out==20'b00100000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_1_out==20'b11111111111100000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_2_out==20'b00100000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_3_out==20'b00100000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_4_out==20'b00100000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_5_out==20'b00100000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(result==6'b000010) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end




		#20
		if(iterations_num==3) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_00==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_01==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_02==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_03==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_04==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_05==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_10==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_11==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_12==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_13==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_14==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_15==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_20==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_21==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_22==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_23==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_24==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_25==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(cn_00==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_01==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_02==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_03==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_04==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_05==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(cn_10==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_11==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_12==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_13==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_14==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_15==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(cn_20==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_21==20'b00011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_22==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_23==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_24==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_25==20'b11111111111101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(belief_0_out==20'b11111111111000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_1_out==20'b01000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_2_out==20'b11111111111000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_3_out==20'b11111111111000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_4_out==20'b11111111111000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_5_out==20'b11111111111000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(result==6'b111101) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end






		#20
		if(iterations_num==4) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_00==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_01==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_02==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_03==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_04==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_05==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_10==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_11==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_12==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_13==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_14==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_15==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_20==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_21==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_22==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_23==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_24==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_25==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(cn_00==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_01==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_02==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_03==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_04==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_05==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(cn_10==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_11==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_12==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_13==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_14==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_15==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(cn_20==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_21==20'b11111111111011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_22==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_23==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_24==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_25==20'b00101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(belief_0_out==20'b010000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_1_out==20'b11111111110000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_2_out==20'b010000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_3_out==20'b010000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_4_out==20'b010000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_5_out==20'b010000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(result==6'b000010) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end






		#20
		if(iterations_num==5) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_00==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_01==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_02==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_03==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_04==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_05==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_10==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_11==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_12==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_13==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_14==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_15==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_20==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_21==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_22==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_23==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_24==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_25==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(cn_00==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_01==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_02==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_03==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_04==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_05==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(cn_10==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_11==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_12==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_13==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_14==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_15==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(cn_20==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_21==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_22==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_23==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_24==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_25==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(belief_0_out==20'b11111111100000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_1_out==20'b0100000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_2_out==20'b11111111100000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_3_out==20'b11111111100000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_4_out==20'b11111111100000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_5_out==20'b11111111100000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(result==6'b111101) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end













		#20
		if(iterations_num==5) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(result==6'b111101) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(done==2'b01) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_00==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_01==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_02==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_03==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_04==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_05==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_10==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_11==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_12==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_13==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_14==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_15==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(vn_20==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_21==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_22==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_23==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_24==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(vn_25==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(cn_00==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_01==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_02==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_03==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_04==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_05==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(cn_10==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_11==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_12==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_13==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_14==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_15==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

		if(cn_20==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_21==20'b001011000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_22==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_23==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_24==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(cn_25==20'b11111111110101000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end


		if(belief_0_out==20'b11111111100000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_1_out==20'b0100000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_2_out==20'b11111111100000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_3_out==20'b11111111100000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_4_out==20'b11111111100000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end
		if(belief_5_out==20'b11111111100000000000) begin
			$display("Passed");
		end else begin
			$display("Failed");
		end

	end

endmodule
