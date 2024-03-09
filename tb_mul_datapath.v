`timescale 1ns / 1ps
module tb_mul_datapath();

    reg ldA, ldB,ldP,clrP,decB,clk;
    reg [15:0] data_in;
    wire eqz;
    
    mul_datapath mul(.ldA(ldA), .ldB(ldB), .ldP(ldP), .clrP(clrP),
                    .decB(decB), .clk(clk), .data_in(data_in), .eqz(eqz));
                    
    always #5 clk = ~clk;
    initial
    begin
    clk=0;
    clrP=1;
    ldA=0; ldB=0; ldP=0; decB=0;
    
    #15;
    clrP=0;
    ldA=1; ldB=1; ldP=1; decB=1;
    data_in=16'h14;
    #90;
    data_in=16'h20;
    #150;
    $finish;
    
    
    end                
endmodule
