module demux1x2(
    input d,
    input sel,
    output y0,
    output y1
);

wire nsel;

not (nsel, sel);

and (y0, d, nsel);
and (y1, d, sel);

endmodule
