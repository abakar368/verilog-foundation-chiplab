module piso (
    input        clk,
    input        rst_n,
    input        mode,          // 0 = Load, 1 = Shift
    input  [3:0] parallel_in,
    output       serial_out
);

reg [3:0] q;

always @(posedge clk) begin
    if (!rst_n)
        q <= 4'b0000;

    else if (!mode)
        q <= parallel_in;

    else begin
        q[3] <= 1'bx;
        q[2] <= q[3];
        q[1] <= q[2];
        q[0] <= q[1];
    end
end

assign serial_out = q[0];

endmodule
