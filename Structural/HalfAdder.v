`timescale 1ns / 1ps

// Sum = A XOR B 
// Carry = A AND B 

// Block Diagram
// A   -> |''''''| -> Sum
// B   -> |......| -> Carry

module HalfAdder(A, B, S, C);

    input A, B;
    output S, C;

    and a1(C, A, B);
    xor x1(S, A, B);

endmodule;

