module refreshcounter(
	input refresh_clock,
	output reg [1:0] refresh_counter = 0

);

always@(posedge refresh_clock) 
begin
if (refresh_counter !== 2'b11)
		refresh_counter = refresh_counter + 1;
else
	refresh_counter = 2'b00;
end
endmodule
