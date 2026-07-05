module priority_encoder_4x2(
    input a0,
    input a1,
    input a2,
    input a3,
    output y1,
    output y0
);

assign y1 = a3 | a2;

assign y0 = a3 | ((~a2) & a1);

endmodule
