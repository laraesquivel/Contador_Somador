module bcd_to_display(

	input [3:0]digito,
	output reg [6:0]anodo = 0

);

always@(digito)
begin
	case(digito)
	4'd0: 
	anodo = 7'b1000000;  //g -> a
	4'd1:
	anodo = 7'b1111001;
	4'd2:
	anodo = 7'b0100100;
	4'd3:
	anodo= 7'b0110000;
	4'd4:
	anodo = 7'b0011001;
	4'd5:
	anodo= 7'b0010010;
	4'd6:
	anodo=7'b0000010;
	4'd7:
	anodo= 7'b1111000;
	4'd8:
	anodo = 7'b0000000;
	4'd9:
	anodo= 7'b0010000;
	
endcase
end
endmodule
