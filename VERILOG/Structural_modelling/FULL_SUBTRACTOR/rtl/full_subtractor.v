//Abubakar Adam - 05-07-2026 - full_subtractor.v
module half_subtractor(
    input A,
    input B,
    output D,
    output Bout
);

assign D = A ^ B;
assign Bout = (~A) & B;

endmodule


module full_subtractor(
    input A,
    input B,
    input Bin,
    output D,
    output Bout
);

wire d1, b1, b2;

half_subtractor HS1(
    .A(A),
    .B(B),
    .D(d1),
    .Bout(b1)
);

half_subtractor HS2(
    .A(d1),
    .B(Bin),
    .D(D),
    .Bout(b2)
);

assign Bout = b1 | b2;

endmodule
