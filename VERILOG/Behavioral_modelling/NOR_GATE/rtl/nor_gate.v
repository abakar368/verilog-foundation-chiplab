//Abubakar Adam - 21-09-2026 - nor_gate.v

module nor_gate(
    input A,
    input B,
    output reg Y
);

always @(*) begin
    Y = ~(A | B);
end

endmodule
