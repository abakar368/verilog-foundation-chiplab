module nand_gate(
    input A,
    input B,
    output reg Y
);

always @(*) begin
    Y = ~(A & B);
end

endmodule
