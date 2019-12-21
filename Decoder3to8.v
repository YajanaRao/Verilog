`timescale 1ns / 1ps

// decoder 3 : 6 design
module decoder3to8(
    input [2:0] data,
	 input en,
    output [7:0] out
    );
	 
	 // 000
	 assign out[0] = ~data[0] & ~data[1] & ~data[2] & en;
	  
	 // 001
	 assign out[1] = data[0] & ~data[1] & ~data[2] & en;
	 
	 // 010
	 assign out[2] = ~data[0] & data[1] &  ~data[2] & en;
	 
	 // 011
	 assign out[3] = data[0] & data[1] & ~data[2]  & en;
	 
	 // 100
	 assign out[4] = ~data[0] & ~data[1] & data[2] & en;
	 
	 // 101
	 assign out[5] = data[0] & ~data[1] & data[2] & en;
	 
	 // 110
	 assign out[6] = ~data[0] & data[1] & data[2] & en;
	 
	 // 111
	 assign out[7] = data[0] & data[1] & data[2] & en;
	 


endmodule
