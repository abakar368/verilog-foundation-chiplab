module ripple_carry_adder_tb;

reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

ripple_carry_adder dut(a,b,cin,sum,cout);

initial begin

    $monitor(
    "a=%b b=%b cin=%b sum=%b cout=%b",
    a,b,cin,sum,cout
    );

    a=4'b0011; b=4'b0010; cin=0;
    #5;

    a=4'b1111; b=4'b0001; cin=0;
    #5;

    a=4'b1010; b=4'b0101; cin=1;
    #5;	
    $finish;
end

initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,ripple_carry_adder_tb);
end


endmodule
