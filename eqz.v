`timescale 1ns / 1ps
module eqz(
    input [15:0]data,
    output eqz
    );
    assign eqz=(data==0);
endmodule
