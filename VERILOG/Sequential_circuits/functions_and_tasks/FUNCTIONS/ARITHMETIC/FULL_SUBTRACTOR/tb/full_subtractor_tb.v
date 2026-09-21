module full_subtractor_tb;  
reg A, B, Bin;
wire Difference, Borrow;        

full_subtractor_mux dut(
    .A(A),
    .B(B),
    .Bin(Bin),
    .Difference(Difference),
    .Borrow(Borrow)
);      

initial begin
    $monitor("A=%b B=%b Bin=%b | Difference=%b Borrow=%b", A, B, Bin, Difference, Borrow);
    
    A=0; B=0; Bin=0; #10;
    A=0; B=0; Bin=1; #10;
    A=0; B=1; Bin=0; #10;
    A=0; B=1; Bin=1; #10;
    A=1; B=0; Bin=0; #10;
    A=1; B=0; Bin=1; #10;
    A=1; B=1; Bin=0; #10;
    A=1; B=1; Bin=1; #10;

    $finish;
end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, full_subtractor_tb);
end

endmodule