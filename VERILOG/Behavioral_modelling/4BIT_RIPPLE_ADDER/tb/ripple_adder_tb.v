module ripple_carry_adder_tb;

reg [3:0] A,B;
reg Cin;
wire [3:0] Sum;
wire Cout;

ripple_carry_adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    $monitor("Time=%0t A=%d B=%d Cin=%b Sum=%d Cout=%b",
             $time,A,B,Cin,Sum,Cout);

    A=4'd3;  B=4'd2;  Cin=0;
    #10 A=4'd7;  B=4'd8;  Cin=0;
    #10 A=4'd15; B=4'd1;  Cin=0;
    #10 A=4'd10; B=4'd5;  Cin=1;
    #10 $finish;
end

endmodule
