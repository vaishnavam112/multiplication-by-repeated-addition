`timescale 1ns / 1ps
module add(
    input [15:0]in1,in2,
    output reg [15:0] out
    );
    always@(*)
    begin
    out=in1+in2;
    
    end
endmodule
