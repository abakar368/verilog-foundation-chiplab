//Abubakar Adam - 21-09-2026 - nor_gate.v

module nor_gate(
	input a,
	input b,
	output y
);

assign y=~(a|b);

endmodule
