module not_gate_tb;

reg a;
wire y;

not_gate(a,y);

initial begin
	$monitor("a=%0d, y=%0d", a,y);

	a=0; 
	#10 a=1;
	#10 a=0; 
	#10;
	$finish;
end 

initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,not_gate_tb);
end

endmodule
