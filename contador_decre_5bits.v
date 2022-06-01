module contador_decre_5bits(
	input clk,
	input [4:0]clear,
	output [4:0]out
);

wire [3:0]T = 4'b1111;

wire [4:0]q;



flipflopT f0(T[0],clk,clear[0],q[0]);


flipflopT f1(q[0],clk,clear[1],q[1]);

wire g2 = q[0] & q[1];

flipflopT f2(g2,clk,clear[2],q[2]);

wire g3 = g2 & q[2];

flipflopT f3(g3,clk,clear[3],q[3]);

wire g5 = g3 & q[3];

flipflopT f4(g5,clk,clear[4],q[4]);

assign out = ~q;

endmodule 