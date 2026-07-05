module or_gate_tb;

reg tb_a,tb_b;
wire tb_y;

or_gate dut(
	.a(tb_a),
	.b(tb_b),
	.y(tb_y)
);

initial begin
	$monitor("a=%b, b=%b, y=%b", tb_a,tb_b,tb_y);

	tb_a=1'b0; tb_b=1'b0;
	#10 tb_a=1'b0; tb_b=1'b1;
        #10 tb_a=1'b1; tb_b=1'b0;
	#10 tb_a=1'b1; tb_b=1'b1;
	#10;
	$finish;
end

initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,or_gate_tb);
end

endmodule
