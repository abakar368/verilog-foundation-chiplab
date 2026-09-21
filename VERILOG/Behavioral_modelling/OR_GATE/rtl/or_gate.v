//Abubakar Adam - 21-09-2026 - or_gate.v

module or_gate(
    input A,
    input B,
    output reg Y
);

always @(*) begin
    Y = A | B;
end

endmodule
