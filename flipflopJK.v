module flipflopJK(J,K,Clk,clear,Qout);

    input J,K;  //inputs
    input Clk;  //Clock
    input clear;    //synchronous reset (R) 
    output Qout;  //data output (Q)
    
    //Internal variable
    reg Qout;
    
    always@ (posedge(Clk))  //Everything is synchronous to positive edge of clock
    begin
        if(~clear) //reset has highest priority.
            Qout = 0;

            else
                if(clear) //J,K values are considered only when CE is ON.
                    if(J == 0 && K == 0)    
                        Qout = Qout; //no change
                    else if(J == 0 && K == 1)
                        Qout = 0;  //reset
                    else if(J == 1 && K == 0)
                        Qout = 1;  //set
                    else
                        Qout = ~Qout;  //toggle
                else
                    Qout = Qout; //no change
    end
    
endmodule
