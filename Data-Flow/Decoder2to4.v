`timescale 1ns / 1ps

module decoder2to4(
    input [1:0] data,
	 input en,
    output [3:0] out
    );
	 
	 assign out[0] = ~data[0] & ~data[1] & en;
	 assign out[1] = data[0] & ~data[1] & en;
	 assign out[2] = ~data[0] & data[1] & en;
	 assign out[3] = data[0] & data[1] & en;

endmodule
