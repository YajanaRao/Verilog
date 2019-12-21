`timescale 1ns / 1ps
// function to find the greater of two signed numbers
module LargestOfTwo(g,enable,a,b);
	input enable;
	input signed [2:0] a, b;
	output reg [2:0] g;
	always @(enable)
		g = largest(a,b);
		
		function [2:0] largest;
			input [2:0] a,b;
				begin
					if(a>b)
						largest=a;
					else
						largest=b;
				end
		endfunction
endmodule
