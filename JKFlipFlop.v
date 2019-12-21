`timescale 1ns / 1ps

module jk(
    input [1:0] jk,
    input clk,
    output reg Q,
    output reg Qb
    );
	 initial begin
		Q=1'b0;
	 end 
	 
	 always @(posedge clk)
		begin
			case(jk)
				2'b00: Q=Q;
				2'b01: Q=1'b0;
				2'b10: Q=1'b1;
				2'b11: Q=~Q;
			endcase
			Qb = ~Q;
		end
		
endmodule
