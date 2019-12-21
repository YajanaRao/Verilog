`timescale 1ns / 1ps

module up_down_counter(
    input clk,
    input reset,
    input dir,
	 output reg [3:0]count
    );
	 
	 initial begin
		count = 0;
	 end
	 
	 always @(posedge clk)
		begin
			if(reset || count > 15)
				count = 0;
			else if(count < 0)
				count = 15;
			else 
				begin
					if(dir)
						count = count + 1;
					else
						count = count - 1;
				end
		end

endmodule
