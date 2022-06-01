module fd_db(input clk,input rstn, output q);

wire [20:0]aux;

flipflopT(1,clk,rstn,aux[0]);
flipflopT(1,aux[0],rstn,aux[1]);
flipflopT(1,aux[1],rstn,aux[2]);
flipflopT(1,aux[2],rstn,aux[3]);
flipflopT(1,aux[3],rstn,aux[4]);
flipflopT(1,aux[4],rstn,aux[5]);
flipflopT(1,aux[5],rstn,aux[6]);
flipflopT(1,aux[6],rstn,aux[7]);
flipflopT(1,aux[7],rstn,aux[8]);
flipflopT(1,aux[8],rstn,aux[9]);
flipflopT(1,aux[9],rstn,aux[10]);
flipflopT(1,aux[10],rstn,aux[11]);
flipflopT(1,aux[11],rstn,aux[12]);
flipflopT(1,aux[12],rstn,aux[13]);
flipflopT(1,aux[13],rstn,aux[14]);
flipflopT(1,aux[14],rstn,aux[15]);
flipflopT(1,aux[15],rstn,aux[16]);
flipflopT(1,aux[16],rstn,aux[17]);
flipflopT(1,aux[17],rstn,aux[18]);
flipflopT(1,aux[18],rstn,aux[19]);
flipflopT(1,aux[19],rstn,aux[20]);


assign q = aux[20];

endmodule
