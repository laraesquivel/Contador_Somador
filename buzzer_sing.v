module buzzer_sing(
	input [4:0] cont,
	output buzzer
);

	wire ZERO = 8'b00000000;
	wire [7:0] num;
	
	
	assign num[0] = cont[0];
	assign num[1] = cont[1];
	assign num[2] = cont[2];
	assign num[3] = cont[3];
	assign num[4] = cont[4];
	assign num[5] = 0;
	assign num[6] = 0;
	assign num[7] = 0;
	
	magnitude_comparator_8_bits(ZERO,num,buzzer);
	
	

endmodule
