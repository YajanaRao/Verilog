`timescale 1ns / 1ps

module thermometer(temp_c, temp_f);
	input[7:0] temp_c;
	output reg [7:0] temp_f;
	always @(temp_c)
		begin
			convert(temp_c, temp_f);
			$display("Temp in %d C, Temp in %d F", temp_c, temp_f);
		end
		
	task convert;
		input[7:0] temp_c;
		output[7:0] temp_f;
		begin
			temp_f=1.8*temp_c + 32;
		end
	endtask
endmodule
