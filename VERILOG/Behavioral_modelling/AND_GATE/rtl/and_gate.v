module and_gate(
    input A,
    input B,
    output reg Y
);

always @(A or B) begin
    Y = A & B;
end

endmodule
