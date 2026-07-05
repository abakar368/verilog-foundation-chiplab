module decoder_2x4(
    input a,
    input b,
    input en,
    output y0,
    output y1,
    output y2,
    output y3
);

assign y0 = en & (~a) & (~b);
assign y1 = en & (~a) & b;
assign y2 = en & a & (~b);
assign y3 = en & a & b;

endmodule