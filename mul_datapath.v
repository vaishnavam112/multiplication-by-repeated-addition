`timescale 1ns / 1ps
module mul_datapath(
    input ldA, ldB,ldP,clrP,decB,clk,
    input [15:0] data_in,
    output eqz
    );
    wire [15:0]x,y,z,Bout,Bus;
    
    pipo1 A(.d_out(x),.d_in(Bus),.ld(ldA),.clk(clk));
    pipo2 P(.d_out(y), .d_in(z), .ld(ldP), .clr(clrP), .clk(clk));
    cntr B(.d_out(Bout), .d_in(Bus), .ld(ldB), .dec(decB), .clk(clk));
    add ad(.out(z), .in1(x), .in2(y));
    eqz comp(.eqz(eqz),.data(Bout));
    
    assign Bus = data_in;
    
endmodule
