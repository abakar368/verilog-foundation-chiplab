//Abubakar Adam - 21-09-2026 - and_gate.v

module and_gate(
    input A,
    input B,
    output reg Y
);

always @(A or B) begin
    Y = A & B;
end

endmodule
