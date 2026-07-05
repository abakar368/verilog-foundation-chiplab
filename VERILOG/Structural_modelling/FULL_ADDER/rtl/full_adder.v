module half_adder(
    input a,
    input b,
    output sum,
    output carry
);

xor(sum,a,b);
and(carry,a,b);

endmodule


module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output carry
);

wire s1;
wire c1;
wire c2;

half_adder HA1(
    .a(a),
    .b(b),
    .sum(s1),
    .carry(c1)
);

half_adder HA2(
    .a(s1),
    .b(cin),
    .sum(sum),
    .carry(c2)
);

or(carry,c1,c2);

endmodule
