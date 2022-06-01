module mux_sum(

	input maior,
	input [7:0]sum,
	output [7:0]soma
);

assign soma[0] = sum[0] & ~maior;
assign soma[1] = sum[1] & ~maior;
assign soma[2] = sum[2] & ~maior;
assign soma[3] = sum[3] & ~maior;
assign soma[4] = sum[4] & ~maior;
assign soma[5] = sum[5] & ~maior;
assign soma[6] = sum[6] & ~maior;
assign soma[7] = sum[7] & ~maior;






endmodule
