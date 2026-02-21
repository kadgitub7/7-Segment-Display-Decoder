`timescale 1ns / 1ps
module SegmentDecoder(
    input b0,
    input b1,
    input b2,
    input b3,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
    
    assign a = b3 | b1 | (b0 ~^ b2);
    assign b = b3 | (b1&b0) | (~b2)&~(b3) | (~b1& ~b0);
    assign c = b3 | ~b1 | b0 | b2;
    assign d = b3 | (b1&~b0) | (~b0&~b2) | (b1&~b2) | ((~b1)&b0&b2);
    assign e = (b1&~b0) | (~b0&~b2);
    assign f = b3 | (b2&~b1) | (b2&(~b0)) | ((~b1)&(~b0));
    assign g = b3 | (b1&(~b0)) | (b1^b2);
    
endmodule