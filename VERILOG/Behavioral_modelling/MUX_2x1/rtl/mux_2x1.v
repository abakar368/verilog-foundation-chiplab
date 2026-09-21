//Abubakar Adam - 21-09-2026 - mux_2x1.v

module mux_2x1(
    input A,
    input B,
    input S,
    output reg Y
);

always @(*) begin
    if(S)
        Y = B;
    else
        Y = A;
end

endmodule
