module xor_gate_tb;

reg A,B;
wire Y;

xor_gate dut(
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0,xor_gate_tb);

    $monitor("A=%b B=%b Y=%b",A,B,Y);
    A = 1'b0; B = 1'b0;
    #10;
    A = 1'b0; B = 1'b1;
    #10;
    A = 1'b1; B = 1'b0;
    #10;
    A = 1'b1; B = 1'b1;
    #10;
end

endmodule