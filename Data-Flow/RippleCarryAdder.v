`timescale 1ns / 1ps

module rca(
    input [3:0] a,
    input [3:0] b,
    output [4:0] s
    );

    wire [3:0] c;
	 assign c[0] = 0;
	 assign s[0] = a[0] ^ b[0] ^ c[0];
	 assign c[1] = (a[0] & b[0]) | (b[0] & c[0]) |  (c[0] & a[0]);
	 
	 assign s[1] = a[1] ^ b[1] ^ c[1];
	 assign c[2] = (a[1] & b[1]) | (b[1] & c[1]) |  (c[1] & a[1]);
	 
	 assign s[2] = a[2] ^ b[2] ^ c[2];
	 assign c[3] = (a[2] & b[2]) | (b[2] & c[2]) |  (c[2] & a[2]);
	 
	 assign s[3] = a[3] ^ b[3] ^ c[3];
	 assign s[4] = (a[3] & b[3]) | (b[3] & c[3]) |  (c[3] & a[3]);
	 

endmodule
