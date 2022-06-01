//V 24
//Q 14
//pause é pausa, ativado a nivel logico baixo
// restart é ativiado a nivel logico baixo
//S dados a serem contados
//load permission - permissao de transferencia de dados para o contador
// clear_permission - permissao de limpeza de dados para o contador - opera com nivel logico baixo
//count_permission - permissao de contagem para o contador
module entradas_sel_tempo(

	input V,
	input Q,
	output [4:0]S

);

assign S[0] = 0;
assign S[1] = ~V & Q;
assign S[2] = ~V & Q;
assign S[3] = V ^ Q;
assign S[4] = V & ~Q;





endmodule
