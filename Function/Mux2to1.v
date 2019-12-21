`timescale 1ns / 1ps

module mux2to1_function(enable, s, a, b,y);
	input enable,s,a,b;
	output y;
	reg y;
	always @(enable or s)
		 y = mux2_1(enable, s, a, b);
		 
		 
		function mux2_1;
			input enable,s,a,b;
			begin
				if(s & enable)
					mux2_1=a;
				else if(enable)
					mux2_1=b;
			end
		endfunction
endmodule
