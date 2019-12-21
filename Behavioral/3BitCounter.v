`timescale 1ns / 1ps

module counter_3bd(
    input clk,
    output reg [2:0] Q
    );
	 
	 integer i=0;
	 reg no = 0;
	  always @(posedge clk)
		begin
			for(i=0; i<2; i=i+1)
				begin
					no = Q[i] *  (2** i);
				end
				//$monitor("Number=%d", no);
			if(no < 7)
				Q = Q+1;
			else 
				Q = no;
		end


endmodule
