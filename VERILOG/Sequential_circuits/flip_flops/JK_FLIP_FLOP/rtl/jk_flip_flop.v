//Abubakar Adam - 22-09-2026 - jk_flip_flop.v

module jk_ff (
    input j,
    input k,
    input clk,
    input rst_n,
    output reg q,
    output q_bar
);

always @(posedge clk) begin
    if (!rst_n)
        q <= 1'b0;
    else begin
        case ({j, k})
            2'b00 : q <= q;
            2'b01 : q <= 1'b0;
            2'b10 : q <= 1'b1;
            2'b11 : q <= ~q;
            default : q <= 1'bx;
        endcase
    end
end

assign q_bar = ~q;

endmodule
