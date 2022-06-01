 //modulo principal
//entradas de ch0 a ch5 corresponde a entrada de numeros do somador
//clk clock da placa
//numero, numeros a serem postos no display de sete segmentos
// segmentos os segmentos a serem mostrados no display
//led o led que vai ascender quando a soma for igual a 99
module main_pbl(

	input ch0, //operacao
	input bt1,
	input bt2,
	input bt0,
	
	//load
	input ch4,
	//clear
	input ch5,//clear
	input ch3, //count_permission
	input ch6, //24
	input ch7, //14

	input wire clk,
	input clk_segs,
	output buzzer,
	output [3:0]numero,
	output [7:0]segmentos,
	output led,
	
	output [4:0]contagem_numero
	
);




//wire refresh_clock_wire = refresh_clock_reg;

wire [3:0]ONE_DIGIT;
wire [1:0]refresh_counter;


frequency_divider Divisor_milagroso(clk,1,clock_dividido);

refreshcounter Refreshcounter_wrapper(

	.refresh_clock(clock_dividido),
	.refresh_counter(refresh_counter)

);

//botao fornece nivel logico baixo quando e pressionado

wire [7:0]numero_entrada;

wire [7:0]saida_registrador;

wire [7:0]soma;
//wire [4:0] contagem_numero;
wire [4:0] extra;
wire load_permission;
wire clear_permission;
wire count_permission;
wire [4:0] load;

//wire [2:0] bc;

//debou d1(bt0,clock_dividido,bc[0]);
//debou d2(bt1,clock_dividido,bc[1]);
//debou d3(bt2,clock_dividido,bc[2]);

chaves keys(bt0,bt1,bt2,ch0,numero_entrada);
 
entradas_sel_tempo(ch6,ch7,load);

registerT registrador(soma,clk,saida_registrador);

wire [7:0]total_entrada = saida_registrador;

adder_one_byte somador_completo_one_byte(total_entrada,numero_entrada,0,ch0,soma);

load_counter(ch5,clk_segs,ch4,ch3,~load,extra,contagem_numero);

buzzer_sing singer(contagem_numero,buzzer);





emitir_sinalizacao sinalizador(soma,led);
//assign led = button1;_e 
//testes no waveform3.vwf


wire [3:0]one;
wire [3:0]hund;
wire [1:0]thus;

wire [7:0] contagem_to_bcd;
wire [3:0] one_contador;
wire [3:0] hund_contador;
wire [1:0]thus_contador;

assign contagem_to_bcd[0] = contagem_numero[0];
assign contagem_to_bcd[1]=contagem_numero[1];
assign contagem_to_bcd[2]=contagem_numero[2];
assign contagem_to_bcd[3]=contagem_numero[3];
assign contagem_to_bcd[4]=contagem_numero[4];
assign contagem_to_bcd[5] = 0;
assign contagem_to_bcd[6]=0;
assign contagem_to_bcd[7]=0;

binary_to_BCD bcd(soma,one,hund,thus);
binary_to_BCD bcd_contador(contagem_to_bcd,one_contador,hund_contador,thus_contador);

anode_control anode_control_wrapper(

.refreshcounter(refresh_counter),
.anode(numero)

);

wire [6:0] segm_sum1;
wire [6:0] segm_sum2;
wire [6:0] segm_count1;
wire [6:0] segm_count2;
bcd_to_display bcd7s_sum1(
	.digito(one),
	.anodo(segm_sum1)

);
bcd_to_display bcd7s_sum2(
	.digito(hund),
	.anodo(segm_sum2)

);

bcd_to_display bcd7s_c1(
	.digito(one_contador),
	.anodo(segm_count1)
);

bcd_to_display bcd7s_c2(
	.digito(hund_contador),
	.anodo(segm_count2)

);

BCD_control BCD_control_wrapper(

	.digit1(one),
	.digit2(hund),
	.digit3(one_contador),
	.digit4(hund_contador),
	.segm1(segm_sum1),
	.segm2(segm_sum2),
	.segm3(segm_count1),
	.segm4(segm_count2),
	.refreshcounter(refresh_counter),
	.digito(ONE_DIGIT),
	.segmentos(segmentos)

);

always @(soma)
begin

end



endmodule

