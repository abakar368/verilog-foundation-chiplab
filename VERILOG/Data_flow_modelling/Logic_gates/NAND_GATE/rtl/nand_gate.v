//Abubakar Adam - 21-09-2026 - nand_gate.v

module nand_gate(
	input a,
	input b,
	output y
);

assign y=~(a&b);

endmodule
