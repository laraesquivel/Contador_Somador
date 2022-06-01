 module chaves(
	//+1
	input A,
	//+2
	input B,
	//+3
	input C,
	//negativo
	input D,

	//saida
	output [7:0]s
);

//Valores para as saidas

assign s[1]= (~A & B & C & D) | (A & ~B & C & D) | (A & B & ~C & ~D) |(A & ~B & C & ~D);
assign s[0] = (~A & B & C & ~D) | (~A & B & C & D) | (A & B & ~C & ~D) | (A & B & ~C & D);

wire aux = (~A & B & C & D) | (A & ~B & C & D) | (A & B & ~C & D);

assign s[2]=aux;
assign s[3]=aux;
assign s[4]=aux;
assign s[5]=aux;
assign s[6]=aux;
assign s[7]=aux;

//Testes deste arquivo se encontram no Waveform.vwf
endmodule
