module BRAM #(parameter WIDTH = 20, parameter N = 204, parameter K = 102, parameter para_v = 6, parameter para_c = 3)(
input clk,
input [10:0] addr,
input [para_c*para_v*WIDTH-1:0] data_in,
output [para_c*para_v*WIDTH-1:0] data_out,
input core_en,
input wr_en
);

blk_mem_gen_0 bram_inst(
	.clka(clk),
	.ena(core_en),
	.wea(wr_en),
	.addra(addr),
	.dina(data_in),
	.douta(data_out)
	);

endmodule
