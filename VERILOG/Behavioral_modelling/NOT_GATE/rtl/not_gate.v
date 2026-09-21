//Abubakar Adam - 21-09-2026 - not_gate.v

module not_gate(
    input A,
    output reg Y
);

always @(*) begin
    Y = ~A;
end

endmodule
