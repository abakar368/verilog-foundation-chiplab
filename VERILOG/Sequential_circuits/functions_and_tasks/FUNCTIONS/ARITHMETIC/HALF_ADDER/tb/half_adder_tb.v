module tb_half_adder_mux;

reg A;
reg B;

wire SUM;
wire CARRY;

half_adder_mux dut(

.A(A),
.B(B),

.SUM(SUM),
.CARRY(CARRY)

);

initial begin

$monitor("A=%b B=%b | SUM=%b CARRY=%b", A, B, SUM, CARRY);

A=0; B=0; #10;
A=0; B=1; #10;
A=1; B=0; #10;
A=1; B=1; #10;

$finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, tb_half_adder_mux);
end

endmodule