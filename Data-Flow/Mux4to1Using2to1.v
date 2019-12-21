`timescale 1ns / 1ps

module mux4to1using2(
    input [3:0] data,
    input s1,
    input s2,
    input en,
	 output y
    );
	 
	 wire [1:0] a;
	 assign a[0] = (((~s1) & data[0]) | ( s1 & data[1])) & en;
	 assign a[1] = (((~s1) & data[2]) | ( s1 & data[3])) & en;
	 assign y =  ~s2 & a[0] | s2 & a[1];	 
	 


endmodule
