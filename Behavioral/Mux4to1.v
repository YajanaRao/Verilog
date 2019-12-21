`timescale 1ns / 1ps

module mux4to1b(
    input [3:0] data,
    input [1:0] s,
	 input en,
    output reg out
    );
	 
	 always @(data, s, en)
	 begin
		if(en == 1)
			begin
			 if(s[0] == 0 && s[1] == 0)
				out = data[0];
			 else if(s[0] == 1 && s[1] == 0)
				out = data[1];
			 else if(s[0] == 0 && s[1] == 1)
				out = data[2];
			 else
				out = data[3];
			end
		else 
			out = 0;
	 end
endmodule
