//Abubakar Adam - 21-09-2026 - nand_gate.v

module nand_gate(
    input A,
    input B,
    output reg Y
);

always @(*) begin
    Y = ~(A & B);
end

endmodule
