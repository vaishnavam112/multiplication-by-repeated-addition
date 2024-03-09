`timescale 1ns / 1ps
module cntr(
    input [15:0]d_in,
    input ld,dec,clk,
    output reg[15:0] d_out
    );
    always@(posedge clk)
    begin
        if(ld)
             d_out<=d_in;
        else if(dec) d_out<=d_out-1;
    end
endmodule
