//Abubakar Adam - 24-09-2026 - d_latch.v

module d_latch(
    input  d,
    input  en,
    output reg q
);

always @(*) begin
    if (en)
        q <= d;
    else
        q <= q;
end

endmodule
