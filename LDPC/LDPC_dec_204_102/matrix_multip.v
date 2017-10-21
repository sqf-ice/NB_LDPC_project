module matrix_multip #(parameter WIDTH = 20, parameter N = 204, parameter K = 102)(
input [N*(N-K)-1:0] H_t,
input [N-1:0] cw,
output dot_product
);

wire [N-K-1:0] element_0;
wire [N-K-1:0] element_1;
wire [N-K-1:0] element_2;
wire [N-K-1:0] element_3;
wire [N-K-1:0] element_4;
wire [N-K-1:0] element_5;

wire [N-K-1:0] dot_product_vector;


assign element_0 = H_t[1*(N-K)-1:0*(N-K)]*cw[0];
assign element_1 = H_t[2*(N-K)-1:1*(N-K)]*cw[1];
assign element_2 = H_t[3*(N-K)-1:2*(N-K)]*cw[2];
assign element_3 = H_t[4*(N-K)-1:3*(N-K)]*cw[3];
assign element_4 = H_t[5*(N-K)-1:4*(N-K)]*cw[4];
assign element_5 = H_t[6*(N-K)-1:5*(N-K)]*cw[5];

assign dot_product_vector = element_0^element_1^element_2^element_3^element_4^element_5;

assign dot_product = (dot_product_vector)? 1:0;

endmodule
