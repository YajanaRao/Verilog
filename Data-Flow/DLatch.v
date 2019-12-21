`timescale 1ns / 1ps

module DLatch(data,enable, q, qbar);
	input data, enable;
	output q,qbar;
	
	assign qbar = ~((enable && data) | (~enable & q));
	assign q = ~qbar;


endmodule
