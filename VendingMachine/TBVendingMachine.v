`timescale 1ns / 1ps

module tb_vending_machine;

	// Inputs
	reg clk;
	reg [1:0]option;
	reg enable;
	reg [4:0]coin1;
	reg [4:0]coin2;
	reg [4:0]coin5;
	reg [4:0]coin10; 

	// Outputs
	wire [4:0]change,total,amount;
	wire [1:0]product;

	// Instantiate the Unit Under Test (UUT)
	vending_machine uut (
		.enable(enable),
		.clk(clk),  
		.change(change), 
		.amount(amount),
		.total(total),
		.product(product),
		.option(option), 
		.coin1(coin1), 
		.coin2(coin2), 
		.coin5(coin5), 
		.coin10(coin10)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		enable = 0;
		option = 0;
		coin1 = 0;
		coin2 = 0;
		coin5 = 0;
		coin10 = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
       
		// Add stimulus here
		enable = 1;
		option = 2'b 01;
		coin1 =4'b 0001;
		coin2 = 0;
		coin5 = 0; 
		coin10 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		enable = 1;
		option = 2'b 01;
		coin1 =0;
		coin2 = 4'b 001;
		coin5 = 0; 
		coin10 = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
       
		// Add stimulus here
		enable = 1;
		option = 2'b 01;
		coin1 = 0;
		coin2 = 0;
		coin5 = 4'b 001; 
		coin10 = 0;
		
		// Wait 100 ns for global reset to finish
      #100;
		// Add stimulus here
		enable = 1;
		option = 2'b 10;
		coin1 = 0;
		coin2 = 0;
		coin5 = 4'b 001; 
		coin10 = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
       
		// Add stimulus here
		enable = 1;
		option = 2'b 10;
		coin1 = 0;
		coin2 = 0;
		coin5 = 0; 
		coin10 = 4'b 001;
		
		// Wait 100 ns for global reset to finish
		#100;
       
		// Add stimulus here
		enable = 1;
		option = 2'b 01;
		coin1 = 0;
		coin2 = 0;
		coin5 = 0; 
		coin10 = 4'b 001;

		// Wait 100 ns for global reset to finish
		#100;
       
		// Add stimulus here
		enable = 1;
		clk = 1;
		option = 2'b 01;
		coin1 =4'b 0101;
		coin2 = 0;
		coin5 = 0; 
		coin10 =4'b 0001;
		
		// Wait 100 ns for global reset to finish
		#100;
       
		// Add stimulus here
		enable = 1;
		clk = 1;
		option = 2'b 01;
		coin1 =0;
		coin2 = 0;
		coin5 = 0; 
		coin10 =4'b 0001;
		
		// Wait 100 ns for global reset to finish
		#100;
       
		// Add stimulus here
		enable = 1;
		clk = 1;
		option = 2'b 10;
		coin1 =4'b 0000;
		coin2 = 4'b 0000;
		coin5 = 0; 
		coin10 =4'b 0001;

	end
	
	always #10 clk = ~clk;
      
endmodule

