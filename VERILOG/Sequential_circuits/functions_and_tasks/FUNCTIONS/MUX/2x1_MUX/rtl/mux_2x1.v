//Abubakar Adam - 23-09-2026 - mux_2x1.v

module mux_2x1(
    input a,
    input b,
    input s,
    output y
);

assign y = (~s & a) | (s & b);

endmodule