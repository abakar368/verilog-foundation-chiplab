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
