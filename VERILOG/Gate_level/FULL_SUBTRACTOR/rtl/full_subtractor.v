module full_subtractor(
    input a,
    input b,
    input bin,
    output diff,
    output bout
);

wire w1, w2, w3, w4, w5, w6; 

// Difference
xor (w1, a, b);
xor (diff, w1, bin);

// Borrow
not (w2, a);

and (w3, b, bin);
and (w4, w2, b);
and (w5, w2, bin);

or (w6, w3, w4);
or (bout, w6, w5);

endmodule
