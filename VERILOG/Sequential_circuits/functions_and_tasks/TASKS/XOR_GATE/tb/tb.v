module xor_gate_tb;

reg A;
reg B;
wire Y;

xor_gate_task uut (
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    // Test case 1: A=0, B=0
    A = 0; B = 0;
    #10;
    $display("Test case 1: A=%b, B=%b, Y=%b", A, B, Y);

    // Test case 2: A=0, B=1
    A = 0; B = 1;
    #10;
    $display("Test case 2: A=%b, B=%b, Y=%b", A, B, Y);

    // Test case 3: A=1, B=0
    A = 1; B = 0;
    #10;
    $display("Test case 3: A=%b, B=%b, Y=%b", A, B, Y);

    // Test case 4: A=1, B=1
    A = 1; B = 1;
    #10;
    $display("Test case 4: A=%b, B=%b, Y=%b", A, B, Y);

    $finish;
end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, xor_gate_tb);
end

endmodule