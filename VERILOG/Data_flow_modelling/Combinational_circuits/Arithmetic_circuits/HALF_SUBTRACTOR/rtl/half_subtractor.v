//Abubakar Adam - 21-09-2026 - half_subtractor.v

module half_subtractor(
    input a,
    input b,
    output diff,
    output borrow
);

assign diff   = a ^ b;
assign borrow = (~a) & b;

endmodule
