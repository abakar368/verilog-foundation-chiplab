module pipo(
    input clk,
    input rst_n,
    input [3:0] parallel_in,
    output [3:0] parallel_out
);

reg [3:0] q;

always @(posedge clk) begin
    if (!rst_n)
        q <= 4'b0000;
    else
        q <= parallel_in;
end

assign parallel_out = q;

endmodule
