module not_gate_tb;

reg A;
wire Y;

not_gate dut(
    .A(A),
    .Y(Y)
);

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0,not_gate_tb);

    $monitor("A=%b Y=%b",A,Y);
    A = 1'b0;
    #10;
    A = 1'b1;
    #10;
end

endmodule