module full_adder_tb;

reg a, b, cin;
wire sum, carry;

full_adder dut(a, b, cin, sum, carry);

initial begin
    $monitor("a=%b b=%b cin=%b | sum=%b carry=%b", a, b, cin, sum, carry);

    a=0; b=0; cin=0;
    #5 a=0; b=0; cin=1;
    #5 a=0; b=1; cin=0;
    #5 a=0; b=1; cin=1;
    #5 a=1; b=0; cin=0;
    #5 a=1; b=0; cin=1;
    #5 a=1; b=1; cin=0;
    #5 a=1; b=1; cin=1;
    #5;
    $finish;
end

initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,full_adder_tb);
end


endmodule
