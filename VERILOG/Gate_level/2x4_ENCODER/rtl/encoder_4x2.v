//Abubakar Adam - 22-09-2026 - encoder_4x2.v

module encoder4x2(
    input d0,
    input d1,
    input d2,
    input d3,
    output y1,
    output y0
);

or (y1, d2, d3);
or (y0, d1, d3);

endmodule
