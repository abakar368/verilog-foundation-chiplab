module not_gate(
    input A,
    output reg Y
);

always @(*) begin
    Y = ~A;
end

endmodule
