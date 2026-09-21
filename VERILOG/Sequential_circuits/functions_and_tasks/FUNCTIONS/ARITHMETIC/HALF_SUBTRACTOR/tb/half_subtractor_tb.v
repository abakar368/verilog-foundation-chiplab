module tb_half_subtractor_mux;

reg A;
reg B;

wire Difference;
wire Borrow;

half_subtractor_mux dut(

.A(A),
.B(B),

.Difference(Difference),
.Borrow(Borrow)

);

initial begin

$monitor("A=%b B=%b | Difference=%b Borrow=%b", A, B, Difference, Borrow);

A=0; B=0; #10;
A=0; B=1; #10;
A=1; B=0; #10;
A=1; B=1; #10;

$finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, tb_half_subtractor_mux);
end 

endmodule