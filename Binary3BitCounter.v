`timescale 1ns / 1ps

module counter3b(
    output reg [2:0] Q=0,
    input clk
    );
	 
	 
	 always @(posedge clk)
		begin
			if(Q < 7)
				Q = Q+1;
			else 
				Q = 3'b000;
		end
		

endmodule
