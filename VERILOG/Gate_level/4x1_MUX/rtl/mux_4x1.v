module mux4x1(
    input i0,
    input i1,
    input i2,
    input i3,
    input s0,
    input s1,
    output y
);

wire ns0, ns1;
wire w1, w2, w3, w4;

not (ns0, s0);
not (ns1, s1);

and (w1, i0, ns1, ns0);
and (w2, i1, ns1, s0);
and (w3, i2, s1, ns0);
and (w4, i3, s1, s0);

or (y, w1, w2, w3, w4);

endmodule
