`timescale 1ns / 1ps

module Mux4to1Using2to1(out,i0,i1,i2,i3,s1,s0);
	input i0,i1,i2,i3,s1,s0;
	output out;
	wire mux1,mux2;
	mux2x1 mux_1(mux1,i0,i1,s1);
	mux2x1 mux_2(mux2,i2,i3,s1);
	mux2x1 mux_3(out,mux1,mux2,s0);

endmodule


module mux2x1(out,a,b,s);
	input a,b,s;
	wire and_1,and_2,s_c;
	output out;
	not (s_c,s);
	and (and_1,a,s_c);
	and (and_2,b,s);
	or (out,and_1,and_2);
endmodule
