module full_adder(
    input a, b, cin,
    output sum, carry
);

wire w1, w2, w3;
wire axb;

// sum = a ⊕ b ⊕ cin
xor (axb, a, b);
xor (sum, axb, cin);

// carry = majority(a,b,cin)
and (w1, a, b);
and (w2, b, cin);
and (w3, a, cin);
or  (carry, w1, w2, w3);

endmodule

module ripple_adder_4bit(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

wire c1;
wire c2;
wire c3;

full_adder FA0(
    .a(a[0]),
    .b(b[0]),
    .cin(cin),
    .sum(sum[0]),
    .carry(c1)
);

full_adder FA1(
    .a(a[1]),
    .b(b[1]),
    .cin(c1),
    .sum(sum[1]),
    .carry(c2)
);

full_adder FA2(
    .a(a[2]),
    .b(b[2]),
    .cin(c2),
    .sum(sum[2]),
    .carry(c3)
);

full_adder FA3(
    .a(a[3]),
    .b(b[3]),
    .cin(c3),
    .sum(sum[3]),
    .carry(cout)
);

endmodule
