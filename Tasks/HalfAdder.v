`timescale 1ns / 1ps

module main(
	input a,
	input b,
	input cin,
	output reg s,
	output reg cout
    );
	 always @(a,b,cin,s,cout)
		halfadder(a,b,s,cout);

		task halfaddder;
			input a, b;
			output s, cout;
			
			begin
				xor x1 (s,a,b);
				and a1 (cout,a,b);
			end
		endtask
	
endmodule
