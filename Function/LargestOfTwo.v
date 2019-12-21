`timescale 1ns / 1ps
// function to find the greater of two signed numbers
module LargestOfTwo(g,enable,a,b);
	input enable, a, b;
	output reg g;
	always @(enable)
		g = largest(a,b);
		
		function largest;
			input a,b;
				begin
					if(a>b)
						largest=a;
					else
						largest=b;
				end
		endfunction
endmodule
