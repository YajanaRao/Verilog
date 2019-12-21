`timescale 1ns / 1ps

module stateMachine_moore(
    );
	input din;
	input clk;
	input reset;
	output reg y;
	reg [1:0] cst,nst;
	parameter s0=3'b000, s1=3'b001, s2= 3'b010, s3=3'b011,s4=3'b100;
	
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
								nst=s2;
								y=1'b0;
							end
							
					s1: 
						if(din == 1'b1)
							begin
								nst=s2;
								y=1'b0;
							end	
						else
							begin
								nst=s1;
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
								nst=s4;
								y=1'b0;
							end
					s4:
						if(din == 1'b0)
							begin
								nst=s1;
								y=1'b1;
							end
						else
							begin
								nst=s0;
								y=1'b1;
							end	
					default: nst=s0;
						
						
				endcase
			end
		end

endmodule
