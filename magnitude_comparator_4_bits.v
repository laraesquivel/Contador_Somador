module magnitude_comparator_4_bits(
input [3:0]A,
input [3:0]B,
output saida_e,
output saida_plus,
output saida_less
);

wire x3 = (A[3] ^~ B[3]);
wire x2 = (A[2] ^~ B[2]);
wire x1 = (A[1] ^~ B[1]);
wire x0 = (A[0] ^~ B[0]);

//assign saida_e =(A[3]^~B[3])&(A[2]^~B[2])&(A[1]^~B[1])&(A[0]^~B[0]);

assign saida_e = x3&x2&x1&x0;
assign saida_plus = (A[3]&!B[3]) || (x3&A[2]&!B[2]) || (x3&x2&A[1]&!B[1]) || (x3&x2&x1&A[0]&!B[0]);
assign saida_less = (!A[3]&B[3]) || (x3 & !A[2]&B[2]) || (x3 & x2 &!A[1] & B[1]) || (x3 & x2 & x1 & !A[0]&B[0]);


endmodule

//As comparações sempre são feitas em relação ao número A, A=B, A>B, A<B.
//testes se encontram no waveform2.vwf