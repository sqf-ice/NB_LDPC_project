include "tables.vh"

module LDPC #(parameter Na = 175, parameter Ma = 1023, parameter Nf = 173, parameter Mf = 1013, parameter width = 16, parameter k = , parameter m = , parameter max_loops_width = 64)(
	input clkn,
	input clkp,
	input [width-1:0] QBER,
	input [max_loops_width-1:0] max_loops,
	);

	// Initialize log belief with p = QBER
	wire [width-1:0] f_init = f_init_list[QBER];
	wire [width-1:0] a_init = a_init_list[QBER];
	reg [k-1:0] LL_reg;
	reg [] counter_k;
	reg [] counter_iter;
	reg [] counter_m;
	reg success;

	initial
	begin
		counter_k <= 0;
		reg [] counter_iter <= 0;
		success <= 0;
		reg [] counter_m <= 0;
	end

	always @(posedge clk) begin
		if (rst) begin
			if(counter_k < k)begin
				LL_reg[counter_k] <= a_init;
				counter_k <= counter_k + 1;
			end
			else begin
				counter_k <= 0;
			end
		end
		else begin
			if(counter_iter < max_loops)begin
				// compute & update beliefs by checksums
				if (counter_m < m) begin
					
					counter_m <= counter_m + 1;
				end
				else begin
					counter_m <= 0;
				end
				counter_iter <= counter_iter + 1;
			end
			else begin
				counter_iter <= 0;
			end
		end
	end