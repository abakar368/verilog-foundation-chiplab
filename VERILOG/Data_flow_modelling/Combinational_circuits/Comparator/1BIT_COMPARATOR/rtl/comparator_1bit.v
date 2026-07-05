//Abubakar Adam - 05-07-2026 - comparator_1bit.v
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
