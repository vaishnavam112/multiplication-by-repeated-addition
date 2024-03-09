`timescale 1ns / 1ps
module pipo1(
    input [15:0]d_in,
    input ld, clk,
    output reg[15:0]d_out
    );
    
    always@(posedge clk)
    begin
        if(ld) 
            d_out<=d_in;
    end               
endmodule
