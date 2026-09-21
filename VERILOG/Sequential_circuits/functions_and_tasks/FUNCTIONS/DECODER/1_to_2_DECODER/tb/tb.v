module decoder_1to2_tb;
reg A;
wire Y0, Y1;

decoder_1to2_mux dut(
    .A(A),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin
    $monitor("A=%b | Y0=%b Y1=%b", A, Y0, Y1);

    A=0; #10;
    A=1; #10;

    $finish;
end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, decoder_1to2_tb);
end

endmodule