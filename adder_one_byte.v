module adder_one_byte(a,b,carry_in,op,soma);

input [7:0] a;
input [7:0] b;
input carry_in;
input op;
output [7:0]soma;

wire [6:0] carry;


wire [7:0]sum;
//wire aux = b[7];

wire [7:0]noventa_nove = 8'b01100011;

wire carry_out;
 





wire aux_s;

full_adder a1(a[0],b[0],carry_in,sum[0],carry[0]);
full_adder a2(a[1],b[1],carry[0], sum[1],carry[1]);
full_adder a3(a[2],b[2],carry[1],sum[2],carry[2]);
full_adder a4(a[3],b[3],carry[2],sum[3],carry[3]);
full_adder a5(a[4],b[4],carry[3],sum[4],carry[4]);
full_adder a6(a[5],b[5],carry[4],sum[5],carry[5]);
full_adder a7(a[6],b[6],carry[5],sum[6],carry[6]);
//full_adder a8(a[7],b[7],carry[6],aux_s,carry_out);
assign sum[7]=0;





wire igual2;
wire maior2;
wire menor2;



magnitude_comparator_8_bits x(sum,noventa_nove,igual2,maior2,menor2);
wire [7:0]aux;

mux_sum(maior2,sum,aux);

assign soma = aux;



endmodule
