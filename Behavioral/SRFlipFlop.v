`timescale 1ns / 1ps

module sr_flipflop(
    input S,
    input R,
    output reg Q,
    output reg Qb,
    input En,
	 input clk
    );
	 
	 
	 always @(posedge clk)
		begin
			if(En)
				begin
					if(S && ~R)
						Q = 1;
					else if(~S && R)
						Q = 0;
					else if(S && R)
						Q = 1'bz;
					Qb = ~Q;
				end
		end
	 


endmodule
