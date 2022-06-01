module emitir_sinalizacao(

input [7:0]somatorio,
output led
//input let_go
);

wire [7:0]noventa_e_nove;
wire trash1;
wire igual_led;
wire maior_led;
wire menor_led;

assign noventa_e_nove[0] = 1;
assign noventa_e_nove[1]=1;
assign noventa_e_nove[2] = 0;
assign noventa_e_nove[3]=0;
assign noventa_e_nove[4]=0;
assign noventa_e_nove[5]=1;
assign noventa_e_nove[6]=1;
assign noventa_e_nove[7]=0;
//A,B,igual,maior,menor
magnitude_comparator_8_bits comp_m(somatorio,noventa_e_nove,igual_led,maior_led,menor_led);

assign led = (((maior_led || igual_led) && !menor_led));

//modulo ok
//testes no waveform5

endmodule
