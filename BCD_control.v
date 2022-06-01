`timescale 1ns/ 1ps

module BCD_control(

	input [3:0] digit1, //right digit unidade
	input [3:0] digit2, //dezena
	input [3:0] digit3, //contador unidade
	input [3:0] digit4, //contador dezena
	input [6:0] segm1,
	input [6:0] segm2,
	input [6:0] segm3,
	input [6:0] segm4,
	input [1:0]refreshcounter,
	output reg[3:0] digito=0,
	output reg [7:0] segmentos//digito a ser mostrado no display

);

always@(refreshcounter)
begin
	case(refreshcounter)
	2'b00:
	begin
		digito = digit1;
		segmentos = segm1;
		end
	2'b01:
	begin
		digito = digit2;
		segmentos = segm2;
		end
	2'b10:
	begin
		digito=digit3;
		segmentos = segm3;
		end
	2'b11:
	begin
		digito=digit4;
		segmentos = segm4;
		end
	
	endcase
	segmentos[7] = 1;
end



endmodule


