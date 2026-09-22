//Abubakar Adam - 22-09-2026 - mux_2x1.v

module mux2x1(
    input a,
    input b,
    input sel,
    output y
);

wire nsel, w1, w2;

not (nsel, sel);
and (w1, a, nsel);
and (w2, b, sel);
or (y, w1, w2);

endmodule
