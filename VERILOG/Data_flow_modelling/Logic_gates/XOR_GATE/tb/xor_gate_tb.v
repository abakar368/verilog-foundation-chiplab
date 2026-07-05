module xor_gate_tb;

reg a,b;
wire y;

xor_gate dut(
	.a(a),
	.b(b),
	.y(y)
);

initial begin
	$monitor("a=%b, b=%b, y=%b", a,b,y);

	a=1'b0; b=1'b0;
	#10 a=1'b0; b=1'b1;
        #10 a=1'b1; b=1'b0;
	#10 a=1'b1; b=1'b1;
	#10;
	$finish;

end

initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,xor_gate_tb);
end

endmodule
