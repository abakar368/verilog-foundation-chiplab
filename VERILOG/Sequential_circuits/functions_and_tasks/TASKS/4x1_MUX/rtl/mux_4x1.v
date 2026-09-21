module mux_4x1_task(
    input  [3:0] in,
    input  [1:0] sel,
    output reg out
);

reg w0, w1;

task mux_task;
    input a;
    input b;
    input s;
    output y;
    begin
        y = s ? b : a;
    end
endtask

always @(*) begin
    mux_task(in[0], in[1], sel[0], w0);
    mux_task(in[2], in[3], sel[0], w1);
    mux_task(w0, w1, sel[1], out);
end

endmodule