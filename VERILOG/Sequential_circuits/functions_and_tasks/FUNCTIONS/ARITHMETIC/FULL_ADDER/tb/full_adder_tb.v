//Abubakar Adam - 23-09-2026 - full_adder.v

module tb_full_adder_mux;

reg A;
reg B;
reg Cin;

wire SUM;
wire CARRY;

full_adder_mux dut(

.A(A),
.B(B),  
.Cin(Cin),                              

.SUM(SUM),
.CARRY(CARRY)

);

initial begin

$monitor("A=%b B=%b Cin=%b | SUM=%b CARRY=%b", A, B, Cin, SUM, CARRY);

A=0; B=0; Cin=0; #10;  
A=0; B=1; Cin=0; #10;
A=1; B=0; Cin=0; #10;
A=1; B=1; Cin=0; #10;
A=0; B=0; Cin=1; #10;
A=0; B=1; Cin=1; #10;
A=1; B=0; Cin=1; #10;
A=1; B=1; Cin=1; #10;

$finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, tb_full_adder_mux);
end

endmodule