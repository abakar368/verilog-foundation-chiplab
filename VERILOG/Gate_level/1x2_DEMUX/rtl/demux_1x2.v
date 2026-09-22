//Abubakar Adam - 22-09-2026 - demux_1x2.v

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
