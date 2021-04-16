`timescale 1ns / 1ps

module FourBitAdder(A, B, Cin, S, Cout);
    input [3:0] A, B;
    input Cin;
    output [3:0] S;
    output Cout;

    wire [2:0] C;

    FullAdder fa1(A[0], B[0], Cin, S[0], C[0]);
    FullAdder fa2(A[1], B[1], C[0], S[1], C[1]);
    FullAdder fa3(A[2], B[2], C[0], S[2], C[2]);
    FullAdder fa4(A[3], B[3], C[0], S[3], Cout);

endmodule;