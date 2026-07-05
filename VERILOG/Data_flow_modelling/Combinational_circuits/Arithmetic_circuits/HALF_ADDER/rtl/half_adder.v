//Abubakar Adam - 05-07-2026 - half_adder.v
module half_adder(
    input a,
    input b,
    output sum,
    output carry
);

assign sum   = a ^ b;
assign carry = a & b;

endmodule
