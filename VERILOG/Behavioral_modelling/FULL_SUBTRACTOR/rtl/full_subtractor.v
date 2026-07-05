module full_subtractor(
    input A,
    input B,
    input Bin,
    output reg Difference,
    output reg Borrow
);

always @(*) begin
    Difference = A ^ B ^ Bin;
    Borrow = (~A & B) | (~(A ^ B) & Bin);
end

endmodule
