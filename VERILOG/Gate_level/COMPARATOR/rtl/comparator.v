module comparator(
    input a,
    input b,
    output a_gt_b,
    output a_eq_b,
    output a_lt_b
);

wire na, nb;


// NOT gates
not (na, a);
not (nb, b);


// A > B
and (a_gt_b, a, nb);


// A < B
and (a_lt_b, na, b);


// A = B
xnor (a_eq_b, a, b);


endmodule
