`timescale 1ns / 1ps
module pipo2(
    input [15:0]d_in,
    input ld, clr,clk,
    output reg [15:0]d_out
    );
    
    always@(posedge clk)
    begin
        if(clr)
            d_out<=16'h0;
            else if(ld)
                d_out<=d_in;
    end
endmodule
