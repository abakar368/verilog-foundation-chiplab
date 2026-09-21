//Abubakar Adam - 21-09-2026 - encoder_4x2.v

module encoder_4x2(
    input a0,
    input a1,
    input a2,
    input a3,
    output y1,
    output y0
);

assign y1 = a2 | a3;
assign y0 = a1 | a3;

endmodule
