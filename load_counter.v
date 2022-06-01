//Modulo do contador com entrada de dados
//clear precisa ser 0 para limpar, 1 conta normalmente
//load é a permissão para carregar os dados, quando for 1 os dados são carregados
//count permission e a permissão para contagem 
//load_data os valores a serem inseridos
//contagem é a contagem de numeros crescente
//saida é a contagem decrescente, basicamente contagem negado
//poderia ser um if Thiago

module load_counter(
	
	input clear,
	input clk,
	input load,
	input count_permission,
	input [4:0] load_data,
	output [4:0] contagem,
	output [4:0] saida
);


wire count = count_permission & ~load;
wire [4:0]J;
wire [4:0]K;

assign J[0] = (load & load_data[0]) | count;
assign K[0] = (load & ~load_data[0]) | count;

flipflopJK f0(J[0],K[0],clk,clear,contagem[0]);

wire aux = count & contagem[0];
assign J[1] =(load & load_data[1]) | aux;
assign K[1] = (load & ~load_data[1]) | aux;

flipflopJK f1(J[1],K[1],clk,clear,contagem[1]);

wire aux2 = count & contagem[0] & contagem[1];
assign J[2] = (load & load_data[2]) | aux2;
assign K[2] = (load & ~load_data[2]) | aux2;

flipflopJK f2(J[2],K[2],clk,clear,contagem[2]);

wire aux3 = count & contagem[0] & contagem[1] & contagem[2];
assign J[3] = (load & load_data[3]) | aux3;
assign K[3] = (load & ~load_data[3]) |aux3;

flipflopJK f3(J[3],K[3],clk,clear,contagem[3]);

wire aux4 = count & contagem[0] & contagem[1] & contagem[2] & contagem[3];
assign J[4] = (load & load_data[4]) | aux4;
assign K[4] = (load & ~load_data[4]) |aux4;

flipflopJK f4(J[4],K[4],clk,clear,contagem[4]);

assign saida = ~contagem;

endmodule
