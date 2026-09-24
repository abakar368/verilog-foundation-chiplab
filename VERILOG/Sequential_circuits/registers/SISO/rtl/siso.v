//Abubakar Adam - 24-09-2026 - siso.v

module siso (
    input  clk,
    input  rst_n,
    input  serial_in,
    output serial_out
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

assign serial_out = q[0];

endmodule
