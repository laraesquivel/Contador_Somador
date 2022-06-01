module magnitude_comparator_8_bits(
input [7:0]A,
input [7:0]B,
output saida_e,
output saida_plus,
output saida_less

);

wire A_more_B1;
wire A_equal_B1;
wire A_less_B1;

wire A_more_B2;
wire A_equal_B2;
wire A_less_B2;

wire [3:0]var_aux;

assign var_aux[0] = A[0];
assign var_aux[1] = A[1];
assign var_aux[2] = A[2];
assign var_aux[3] = A[3];

wire [3:0]var_aux2;
assign var_aux2[0] = A[4];
assign var_aux2[1] = A[5];
assign var_aux2[2] = A[6];
assign var_aux2[3] = A[7];

wire [3:0]var_auxb;
assign var_auxb[0] = B[0];
assign var_auxb[1] = B[1];
assign var_auxb[2] = B[2];
assign var_auxb[3] = B[3];

wire [3:0]var_auxb2;
assign var_auxb2[0] = B[4];
assign var_auxb2[1]= B[5];
assign var_auxb2[2] = B[6];
assign var_auxb2[3] = B[7];


magnitude_comparator_4_bits m1(var_aux,var_auxb,A_equal_B1,A_more_B1,A_less_B1);

magnitude_comparator_4_bits m2(var_aux2,var_auxb2,A_equal_B2,A_more_B2,A_less_B2);

//A=B
and(saida_e,A_equal_B1,A_equal_B2); //ok
//A>B
assign saida_plus = A_more_B2 || (A_equal_B2 & A_more_B1);
//A<B
assign saida_less = (A_equal_B2 & A_less_B1) || A_less_B2;

//testes no waveform4, modulo ok
endmodule
