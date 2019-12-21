`timescale 1ns / 1ps

module mealy_fsm(din,reset, clk, y);
	input din;
	input clk;
	input reset;
	output reg y;
	reg [1:0] cst,nst;
	parameter s0=2'b00, s1=2'b01, s2= 2'b10, s3=2'b11;
	
	initial begin
		nst = s0;
	end
	
	always @(posedge clk)
		begin
			if(reset)
				begin
					y=0;
					nst=s0;
				end
			else
				begin
				case(nst)
					s0: 
						if(din == 1'b1)
							begin
								nst=s0;
								y=1'b0;
							end	
						else
							begin
								nst=s1;
								y=1'b0;
							end
							
					s1: 
						if(din == 1'b0)
							begin
								nst=s1;
								y=1'b0;
							end
						else
							begin
								nst=s2;
								y=1'b0;
							end
					
					s2: if(din == 1'b1)
						begin 
							nst=s0;
							y=1'b0;
						end
					else
						begin
							nst=s3;
							y=1'b0;
						end
										
					s3:
						if(din == 1'b0)
							begin
								nst=s1;
								y=1'b0;
							end
						else
							begin
								nst=s2;
								y=1'b1;
							end
						
					default: nst=s0;
						
				endcase
			end
		end
			

endmodule
