`timescale 1ns / 1ps

module mux2to1b(
    input a,
    input b,
    input s,
	 output reg out
    );
	 
	 always @(a, b, s)
	 begin 
	 if(s == 0)
		out = a;
	 else
		out = b;
	 end
endmodule
