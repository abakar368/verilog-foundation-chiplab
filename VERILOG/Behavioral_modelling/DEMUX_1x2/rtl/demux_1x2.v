module demux_1x2(
    input D,
    input S,
    output reg Y0,
    output reg Y1
);

always @(*) begin
    Y0 = 0;
    Y1 = 0;

    if(S)
        Y1 = D;
    else
        Y0 = D;
end

endmodule
