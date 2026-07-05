module decoder2x4(
    input a,
    input b,
    output d0,
    output d1,
    output d2,
    output d3
);

wire na, nb;

not (na, a);
not (nb, b);

and (d0, na, nb);
and (d1, na, b);
and (d2, a, nb);
and (d3, a, b);

endmodule
