module mux_2x1_tb;

reg a, b, s;
wire y;

mux_2x1 dut(a, b, s, y);

initial begin
    $monitor("a=%b b=%b s=%b | y=%b", a, b, s, y);

    a=0; b=1; s=0;
    #5 a=0; b=1; s=1;
    #5 a=1; b=0; s=0;
    #5 a=1; b=0; s=1;

end

endmodule
