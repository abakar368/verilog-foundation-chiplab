module full_adder(
    input A,
    input B,
    input Cin,
    output reg Sum,
    output reg Cout
);

always @(*) begin
    Sum = A ^ B ^ Cin;
    Cout = (A & B) | (Cin & (A ^ B));
end

endmodule
