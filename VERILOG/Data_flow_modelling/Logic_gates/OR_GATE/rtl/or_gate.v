module or_gate(
	input a,
	input b,
	output reg y
);

always@(*)
	y = a|b;

endmodule
