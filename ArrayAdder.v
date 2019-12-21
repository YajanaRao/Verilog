`timescale 1ns / 1ps

module array_adder(
    input [1:0] a,
    input [1:0] b,
    output [3:0] p
    );
	 
	 wire [3:0]s;
	 
	 assign p[0] = a[0] & b[0];
	 assign s[0] = a[1] & b[0];
	 assign s[1] = a[0] & b[1];
	 assign s[2] = a[1] & b[1];
	 assign p[1] = s[0] ^ s[1];
	 assign s[3] = s[0] & s[1];
	 
	 assign p[2] = s[2] ^ s[3];
	 assign p[3] = s[2] & s[3];


endmodule
