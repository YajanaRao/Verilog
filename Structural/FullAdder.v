`timescale 1ns / 1ps


// Block Diagram
// A   -> |''''''| -> Sum
// B   -> |      | -> Carry
// Cin -> |......|

module FullAdder(A, B, Cin, S, Cout);

    input A, B;
    output S, C;

    wire w1, w2, w3; 

    HalfAdder h1(A, B, w1, w2);
    HalfAdder h2(w1, Cin, S, Cout);

    or o1(Cout, w2, w3);

endmodule;