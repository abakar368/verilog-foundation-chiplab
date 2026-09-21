//Abubakar Adam - 21-09-2026 - half_adder.v

module half_adder(
    input A,
    input B,
    output reg Sum,
    output reg Carry
);

always @(*) begin
    Sum = A ^ B;
    Carry = A & B;
end

endmodule
