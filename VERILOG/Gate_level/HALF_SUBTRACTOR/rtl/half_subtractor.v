module half_subtractor(
    input a,
    input b,
    output diff,
    output borrow
);

wire n1;

xor (diff, a, b);

not (n1, a);
and (borrow, n1, b);

endmodule
