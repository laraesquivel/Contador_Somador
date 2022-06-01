module flipflopT ( input t, input clk, input rstn, output reg q);  
      

always @ (posedge clk) 
begin  
	if (!rstn)  
		q <= 0;  
        
	else  
		 if (t)  
			q <= ~q;
		  else  
			q <= q;

	end  

endmodule
		