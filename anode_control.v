module anode_control(

	input [1:0]refreshcounter, //10kHz
	
	output reg [3:0] anode

);


always@(refreshcounter)
begin
	case(refreshcounter)
	2'b00:
		anode = 4'b1110; //digito 1 on
	2'b01:
		anode = 4'b1101; //digito 2 on
	2'b10:
		anode = 4'b1011; //digito3 on
	2'b11:
		anode= 4'b0111; //digito 4 on
	endcase
end
		
endmodule
