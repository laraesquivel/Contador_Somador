module entradas_test(
	
	//98,10,2
	input A,
	input B,
	input C,
	output [7:0]entrada

);

assign entrada[0] = 0;
assign entrada[1]= (A & !B & !C) || (!A & B & !C) || (!A & !B & C);
assign entrada[2] = 0;
assign entrada[3]= !A & B & !C;
assign entrada[4] = 0;
assign entrada[5] = A & !B & !C;
assign entrada[6] = A & !B & !C;
assign entrada[7] = 0;

//tests estão no waveform1

endmodule
