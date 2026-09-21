//Abubakar Adam - 21-09-2026 - xnor_gate.v

module xnor_gate(
	input a,
	input b,
	output y
);

assign y=~(a^b);

endmodule
