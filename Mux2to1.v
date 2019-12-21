`timescale 1ns / 1ps

module mux2to1(
    input data1,
    input data2,
    input en,
    input s,
    output y
    );
	 
	 
	 assign y = (((~s) & data1) | ( s & data2)) & en;


endmodule
