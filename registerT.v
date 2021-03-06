/*module registerT( input d, input clk);
	
	output reg [7:0] sR;

	sR = .flipflopT fto(input d[0], input clk, input rsnt, output reg q);
	
	sR[1] = .flipflopT fti(input d[1], input clk, input rsnt, output reg q);
	sR[2] = .flipflopT ftii(input d[2], input clk, input rsnt, output reg q);
	sR[3] = .flipflopT ftiii(input d[3], input clk, input rsnt, output reg q);
	sR[4] = .flipflopT ftiv(input d[4], input clk, input rsnt, output reg q);
	sR[5] = .flipflopT ftv(input d[5], input clk, input rsnt, output reg q);
	sR[6] = .flipflopT ftvi(input d[6], input clk, input rsnt, output reg q);
	sR[7] = .flipflopT ftvii(input d[7], input clk, input rsnt, output reg q);
	
endmodule*/


module registerT(
  input [7:0]in,
  input clock,
  output [7:0]out
);

	reg b0;
	reg b1;
	reg b2;
	reg b3;
	reg b4;
	reg b5;
	reg b6;
	reg b7;
	reg [7:0] bs;

	assign out = bs;

	always @(posedge clock) begin
	  b7 <= b6;
	  b6 <= b5;
	  b5 <= b4;
	  b4 <= b3;
	  b3 <= b2;
	  b2 <= b1;
	  b1 <= b0;
	  b0 <= in;
	end



	always @(posedge clock) begin
	  bs <= bs << 1;
	  bs <= in;
	end

endmodule

