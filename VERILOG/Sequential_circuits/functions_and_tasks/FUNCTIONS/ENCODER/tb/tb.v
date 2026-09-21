module encoder_4to2_mux_tb;
    reg [3:0] in;
    wire [1:0] out;

    encoder_4to2_mux dut(
        .in(in),
        .out(out)
    );

    initial begin
        $monitor("in=%b | out=%b", in, out);

        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0100; #10;
        in = 4'b1000; #10;

        $finish;
    end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, encoder_4to2_mux_tb);
end

endmodule