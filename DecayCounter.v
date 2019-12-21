`timescale 1ns / 1ps

module decay_counter(
	input clk,
	output [3:0]q, qb,
	output tc
    );
	 
	 wire [3:0]d;
	 wire s1,s2,s3,s4,s5,s6,s7;
	
	
	 
	 DFF d0(d[0], clk, q[0], qb[0]);
	 not n1(d[0], q[0]);
	 
	 DFF d1(d[1], clk, q[1], qb[1]);
	 and a1(s1, q[1], qb[0]);
	 and a2(s2, q[0], qb[1], qb[3]);
	 or o1(d[1], s1, s2);

	 DFF d2(d[2], clk, q[2], qb[2]);
	 and a3(s3, q[2], qb[2]);
	 and a4(s4, q[2], qb[0]);
	 and a5(s5, qb[2], q[1], q[0]);
	 or o2(d[2], s3, s4, s5);
	 
	 DFF d3(d[3], clk, q[3], qb[3]);
	 and a6(s6, q[3], qb[0]);
	 and a7(s7, q[3], qb[2], q[1], q[0]);
	 or o3(d[3], s6, s7);


endmodule

module DFF(
	input d, 
	input clk, 
	output q, 
	output qb
	);
	
	wire s1, s2;
	dlatch d1(d, clk, s1, s2);
	dlatch d2(d, clkb, q, qb);
	not n(clkb, clk);
	
endmodule

module dlatch(
	input d, 
	input clk,  
	output reg s1, 
	output reg s2
	);
	
	always @ (posedge clk)
      begin
		s1 <= d;
		s2 <= ~d;
		end
		
endmodule
