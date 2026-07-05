module half_subtractor(
    input A,
    input B,
    output reg Difference,
    output reg Borrow
);

always @(*) begin
    Difference = A ^ B;
    Borrow = (~A) & B;
end

endmodule
