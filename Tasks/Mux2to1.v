`timescale 1ns / 1ps

module mux2to1(enable, s, a, b,y);
	input enable,s,a,b;
	output y;
	reg y;
	always @(enable or s)
		 mux2_1(enable, s, a, b, y);
		 
		 
		task mux2_1;
			input enable,s,a,b;
			output y;
			begin
				if(s & enable)
					y=a;
				else if(enable)
					y=b;
			end
		endtask
endmodule
