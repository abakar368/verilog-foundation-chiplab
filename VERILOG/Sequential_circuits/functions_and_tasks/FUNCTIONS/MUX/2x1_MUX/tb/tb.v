module mux_2x1_tb;
    reg a, b, s;
    wire y;

    mux_2x1 dut(
        .a(a),
        .b(b),
        .s(s),
        .y(y)
    );

    initial begin
        $monitor("a=%b | b=%b | s=%b | y=%b", a, b, s, y);

        a = 1'b0; b = 1'b0; s = 1'b0; #10;
        a = 1'b0; b = 1'b1; s = 1'b0; #10;
        a = 1'b1; b = 1'b0; s = 1'b0; #10;
        a = 1'b1; b = 1'b1; s = 1'b0; #10;

        a = 1'b0; b = 1'b0; s = 1'b1; #10;
        a = 1'b0; b = 1'b1; s = 1'b1; #10;
        a = 1'b1; b = 1'b0; s = 1'b1; #10;
        a = 1'b1; b = 1'b1; s = 1'b1; #10;

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, mux_2x1_tb);
    end

endmodule