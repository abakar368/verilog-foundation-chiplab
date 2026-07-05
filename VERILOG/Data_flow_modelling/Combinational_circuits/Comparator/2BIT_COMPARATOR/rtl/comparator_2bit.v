module comparator_2bit(
    input a1,a0,
    input b1,b0,
    output a_gt_b,
    output a_eq_b,
    output a_lt_b
);

assign a_eq_b =
    (a1 ~^ b1) &
    (a0 ~^ b0);

assign a_gt_b =
    (a1 & ~b1) | ((a1 ~^ b1) & a0 & ~b0);

assign a_lt_b =
    (~a1 & b1) | ((a1 ~^ b1) & ~a0 & b0);

endmodule
