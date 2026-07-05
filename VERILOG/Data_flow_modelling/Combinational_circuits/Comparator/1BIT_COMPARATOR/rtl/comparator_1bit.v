module comparator_1bit(
	input a,
	input b,
	output gt,
	output eq,
	output lt
);

assign gt = a & ~b;
assign eq = ~(a ^ b);
assign lt = ~a & b;

endmodule
