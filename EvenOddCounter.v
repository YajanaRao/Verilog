`timescale 1ns / 1ps

module even_odd_counter(
    input clk,
    input reset,
    input dir,
	 input even,
    output reg [3:0] count
    );
	 
	 initial begin
		count = 0;
	 end
	 
	 always @(posedge clk)
		begin
			if(reset || count > 15)
				count = 0;
				
			else 
				begin
					if(dir)
						count = count + 2;
					else
						count = count - 2;
				end
		end
		
	always @(posedge clk)
		begin
			if(even && count % 2 != 0)
				count = count + 1;
					
			else if(~even && count %2 == 0)
				count = count + 1;
		end

endmodule
