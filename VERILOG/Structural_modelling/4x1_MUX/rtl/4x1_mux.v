module mux2x1(
    input i0,
    input i1,
    input sel,
    output y
);

wire nsel;
wire w1;
wire w2;

not(nsel, sel);

and(w1, i0, nsel);
and(w2, i1, sel);

or(y, w1, w2);

endmodule

module mux4x1(
    input i0,
    input i1,
    input i2,
    input i3,
    input s0,
    input s1,
    output y
);

wire w1;
wire w2;

mux2x1 M0(
    .i0(i0),
    .i1(i1),
    .sel(s0),
    .y(w1)
);

mux2x1 M1(
    .i0(i2),
    .i1(i3),
    .sel(s0),
    .y(w2)
);

mux2x1 M2(
    .i0(w1),
    .i1(w2),
    .sel(s1),
    .y(y)
);

endmodule
