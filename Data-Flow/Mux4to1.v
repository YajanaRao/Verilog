`timescale 1ns / 1ps

module mux4to1(
    input [3:0]data,
    input s1,
    input s2,
    input en,
    output y
    );
	 
	wire a[3:0];
	assign a[0] = (~s1 & ~s2) & data[0];
	assign a[1] = (s1 & ~s2) & data[1];
	assign a[2] = (~s2 & s1) & data[2];
	assign a[3] = (s2 & s1) & data[3];
	
	assign y = (a[0] | a[1] | a[2] | a[3]) & en;

endmodule
