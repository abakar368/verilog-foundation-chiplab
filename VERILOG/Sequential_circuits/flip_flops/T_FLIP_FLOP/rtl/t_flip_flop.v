//Abubakar Adam - 22-09-2026 - t_flip_flop.v

module t_flip_flop (
    input  t,
    input  clk,
    input  rst_n,
    output reg q,
    output q_bar
);

always @(posedge clk) begin
    if (!rst_n)
        q <= 1'b0;
    else
        q <= (t ? ~q : q);
end

assign q_bar = ~q;

endmodule
