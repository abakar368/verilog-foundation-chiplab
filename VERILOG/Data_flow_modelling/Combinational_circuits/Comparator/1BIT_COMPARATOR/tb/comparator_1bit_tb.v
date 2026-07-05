module comparator_1bit_tb;

reg a;
reg b;

wire gt;
wire lt;
wire eq;

comparator_1bit dut (

    .a(a),
    .b(b),
    .gt(gt),
    .lt(lt),
    .eq(eq)

);

initial begin

    $monitor("Time=%0t | a=%b b=%b | gt=%b lt=%b eq=%b",
              $time, a, b, gt, lt, eq);

    a = 0; b = 0;
    #5;

    a = 0; b = 1;
    #5;

    a = 1; b = 0;
    #5;

    a = 1; b = 1;
    #5;

    $finish;

end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,comparator_1bit_tb);
end

endmodule
