//Abubakar Adam - 22-09-2026 - d_flip_flop.v

module d_ff (
    input  d,
    input  clk,
    input  rst_n,
    output reg q,
    output q_bar
);

always @(posedge clk) begin
    if (!rst_n)
        q <= 1'b0;      
    else
        q <= d;         
end

assign q_bar = ~q;

endmodule
