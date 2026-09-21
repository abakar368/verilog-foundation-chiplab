module mux_8x1(
    input [7:0] in,
    input [2:0] sel,
    output reg out
);

function mux_2x1;
    input a, b, s;
    begin
        mux_2x1 = s ? b : a;
    end
endfunction

always @(*) begin
    out = mux_2x1(mux_2x1(mux_2x1(in[0], in[1], sel[0]), mux_2x1(in[2], in[3], sel[0]), sel[1]),
                  mux_2x1(mux_2x1(in[4], in[5], sel[0]), mux_2x1(in[6], in[7], sel[0]), sel[1]),
                  sel[2]);
end

endmodule

