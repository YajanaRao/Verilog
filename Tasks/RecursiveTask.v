`timescale 1ns / 1ps

module recursive_task(
   input clk,
		input clk2,
		output [15:0] cd_xor,
		output [15:0] ef_xor
	);
	reg [15:0] c, d, e, f, cd_xor, ef_xor;
	
	task automatic bitwise_xor;
		output [15:0] ab_xor;
		input [15:0] a, b;
		
		#5;
	endtask
	
	always @(posedge clk)
	bitwise_xor(ef_xor, e, f);
	always @(posedge clk2)
	bitwise_xor(cd_xor, c, d);
endmodule
