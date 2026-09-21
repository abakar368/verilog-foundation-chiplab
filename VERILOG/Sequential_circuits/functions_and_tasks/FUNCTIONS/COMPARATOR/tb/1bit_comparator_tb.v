module tb_comparator_mux;   
reg A, B;
wire Greater, Equal, Less;

comparator_mux dut(
    .A(A),
    .B(B),
    .Greater(Greater),
    .Equal(Equal),
    .Less(Less)
);

initial begin
    $monitor("A=%b B=%b | Greater=%b Equal=%b Less=%b", A, B, Greater, Equal, Less);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, tb_comparator_mux);
end

endmodule