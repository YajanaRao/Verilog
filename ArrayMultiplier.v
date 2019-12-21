`timescale 1ns / 1ps

module arraymultiplier(
    input [1:0]a,
    input [1:0]b,
    output [2:0]p
    );
	 
	 wire [3:0]i;
	 
	 assign i[0] = a[0] & b[0];
	 assign i[1] = a[1] & b[0];
	 assign i[2] = a[0] & b[1];
	 assign i[3] = a[1] & b[1];
	 
	 assign p[0] = i[0];
	 assign p[1] = i[1] ^ i[2];
	 assign p[2] = i[3];
	 
	
	 


endmodule
