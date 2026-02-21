`timescale 1ns / 1ps
module Decoder_tb();
    //inputs
    reg b0;
    reg b1;
    reg b2;
    reg b3;
    
    //outputs
    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;
    
    //Unit Under Test
    SegmentDecoder uut(
    .b0(b0),
    .b1(b1),
    .b2(b2),
    .b3(b3),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g)
    );
    
    integer k = 0;
    initial
        begin
            {b3, b2, b1, b0} = 4'b0000;
            for(k=0;k<=9;k=k+1)begin
                #10 {b3,b2,b1,b0} = k;
                $strobe("Input: %b%b%b%b | Output %b%b%b%b%b%b%b", b3, b2, b1, b0, a,b,c,d,e,f,g);
            end
        $finish;
    end
    
endmodule