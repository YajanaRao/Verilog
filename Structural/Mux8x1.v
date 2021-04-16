`timescale 1ns / 1ps

// Y = Sbar * D0 + S * D1 

module mux2x1(Y, DO, D1, S);
    input D0, D1, S;
    output Y;

    wire T0, T1, Sbar;

    not(Sbar, S);
    and(T0, D1, S);
    and(T1, D0, Sbar);
    or(Y, T0, T1);

endmodule;

module mux8x1(Y, D, S);
    input [7:0] D;
    input [2:0] S;
    output Y;

    wire [5: 0]w;

    mux2x1 m1(w[0], D[0], D[1], S[0]);
    mux2x1 m2(w[1], D[2], D[3], S[0]);
    mux2x1 m3(w[2], D[4], D[5], S[0]);
    mux2x1 m4(w[3], D[6], D[7], S[0]);

    mux2x1 m5(w[4], w[0], w[1], S[1]);
    mux2x1 m6(w[5], w[2], w[3], S[1]);

    mux2x1 m7(Y, w[4], w[5], S[2]);
    
endmodule;
