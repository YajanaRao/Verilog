`timescale 1ns / 1ps

module decoder3to8b(
    input [2:0] data,
    input en,
    output reg [7:0] out
    );
	 
	 initial begin
		out = 0000000;
	 end
	 always @(data, en, out)
		begin
			if(en	 == 1)
				begin
					case(data)
						3'b000: out = 1;
						3'b001: out = 2;
						3'b010: out = 4;
						3'b011: out = 8;
						3'b100: out = 16;
						3'b101: out = 32;
						3'b110: out = 64;
						3'b111: out = 128;
					endcase
				end
		end

endmodule
