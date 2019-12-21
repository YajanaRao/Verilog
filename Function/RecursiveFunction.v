`timescale 1ns / 1ps

module RecursiveFunction(a);
	output reg [31:0] a;
	
	function automatic [31:0] calFactorial;
		input [7:0] number;
		begin
			if(number == 1)
				calFactorial = 1;
				
			else
				calFactorial = number * (calFactorial(number -1));
		end
	endfunction
		initial a = calFactorial(3);
endmodule

