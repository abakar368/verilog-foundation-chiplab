//Abubakar Adam - 21-09-2026 - or_gate.v

module or_gate(
	input a,
	input b,
	output reg y
);

always@(*)
	y = a|b;

endmodule
