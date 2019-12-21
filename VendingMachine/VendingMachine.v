`timescale 1ns / 1ps

module vending_machine(clk,change,amount,total,product,enable,option,coin1,coin2,coin5,coin10);
input clk;
input [1:0]option;
input enable;
input [4:0]coin1,coin2,coin5,coin10;
output integer change=0;
output integer total=0;
output integer amount=0;
output reg [1:0]product=0;

always @(posedge clk)
begin 
   //if enable is 1 then the vending machine is turned on. 
	if(enable)
	begin
		$display ("******************Welcome to vending machine******************************");
		$display ("Option\t Available items\t\t price");
		$display ("1\t Tea\t\t  Rs.5");
		$display ("0\t Coffee\t\t  Rs.10");
		$display ("******************************************************************************");

		$display ("########################   Insert coins  ############################");   
	   //if option selected is 1 
		if(option == 1)
		 begin
			amount = 5;
			$display ("Price of Tea : %d",amount);
			product = 2'b 01;
		 end
		 
		//if option selected is 2 
		else if(option == 2)
		  begin
			amount = 10;
			$display ("Price of Coffee: %d",amount);    
			product = 2'b 10;
		  end
		  
		 // Invalid option input
		 else 
			$display("Please enter the valid option");
		//total amount given is stored in total variable
		total = (coin1 + (coin2 * 2) + (coin5 * 5) + (coin10 * 10));
		$display ("Total amount paid: %d",total);
		
		//if total is less than the actual amount.
		if(total < amount)
			begin
				$display ("Money shortage by: %d",amount-total);
				change = total;
				product = 0;
				$display ("Please collect the remaining amount : %d",change);  
			end
			
		//if total is equal or more than the actual amount
		else
			begin
				change = total - amount;
				//if option selected is 1 than present tea
				if(option==1)
					$display ("****************** Your tea is ready ******************************");
					
				//if option selected is 2 than present coffee
				else if(option==2)
					$display ("****************** Your coffee is ready ******************************");
				
				$display ("Please collect the remaining amount : %d",change);  
			end
		$display("****************** (: Visit Again :) ******************************");
	end
	else
		$display("****************** Vending machine is down ******************************");
end//end always
endmodule//end module


