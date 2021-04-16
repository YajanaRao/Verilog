`timescale 1ns / 1ps

//Verilog module for UpDown counter

module UpDownCounter(clk,mode, count);

    input clk, mode;
    output [3:0] count;
    reg [3:0] count = 0;  

    reg [24:0] clkdiv;
    
    initial count = 0;

    always @(posedge clkdiv[24])
        begin    
            if(mode == 1)   
                //Up mode selected   
                count = count + 1; 
                //Incremend Counter
            else  
                //Down mode selected    
                count = count - 1; 
                //Decrement counter
        end    
    
    always @(posedge clk)
        clkdiv = clkdiv + 1;


endmodule