module full_subtractor_tb;

reg A;
reg B;
reg Bin;

wire D;
wire Bout;

full_subtractor uut(
    .A(A),
    .B(B),
    .Bin(Bin),
    .D(D),
    .Bout(Bout)
);

initial
begin
    $monitor("A=%b B=%b Bin=%b D=%b Bout=%b",
               A, B, Bin, D, Bout);

    A=0; B=0; Bin=0;
    #5 A=0; B=0; Bin=1;
    #5 A=0; B=1; Bin=0;
    #5 A=0; B=1; Bin=1;
    #5 A=1; B=0; Bin=0;
    #5 A=1; B=0; Bin=1;
    #5 A=1; B=1; Bin=0;
    #5 A=1; B=1; Bin=1;
    #5;
    $finish;
end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0, full_subtractor_tb);
end

endmodule
