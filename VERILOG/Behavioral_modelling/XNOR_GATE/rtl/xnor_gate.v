//Abubakar Adam - 21-09-2026 - xnor_gate.v

module xnor_gate(
    input A,
    input B,
    output reg Y
);

always @(*) begin
    Y = ~(A ^ B);
end

endmodule
