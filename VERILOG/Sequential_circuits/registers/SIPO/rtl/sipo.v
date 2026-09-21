module sipo(
    input clk,
    input rst_n,
    input serial_in,
    output [3:0] parallel_out
);

reg [3:0] q;

always @(posedge clk) begin
    if (!rst_n)
        q <= 4'b0000;
    else begin
        q[3] <= serial_in;
        q[2] <= q[3];
        q[1] <= q[2];
        q[0] <= q[1];
    end
end

assign parallel_out = q;

endmodule
