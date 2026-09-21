module sr_latch (
    input  s_n,
    input  r_n,
    output reg q,
    output q_bar
);

always @(*) begin
    case ({s_n, r_n})
        2'b00 : q <= 1'bx;   // Invalid
        2'b01 : q <= 1'b1;   // Set
        2'b10 : q <= 1'b0;   // Reset
        2'b11 : q <= q;      // Hold
        default : q <= 1'bx;
    endcase
end

assign q_bar = ~q;

endmodule