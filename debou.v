module debou(
	input signal,
	input clk,
	output singal_bou

);

wire auxQ;
wire auxQ2;
wire final_clk;

fb_db(clk,1,final_clk);

flipflopD(~signal,final_clk,auxQ);
flipflopD(auxQ,final_clk,auxQ2);

assign signal_bou = ~(auxQ & ~auxQ2);



endmodule
