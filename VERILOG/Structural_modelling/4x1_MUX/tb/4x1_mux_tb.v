module tb_mux4x1;

reg i0;
reg i1;
reg i2;
reg i3;

reg s0;
reg s1;

wire y;

mux4x1 dut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s0(s0),
    .s1(s1),
    .y(y)
);

initial begin

    i0=0;
    i1=1;
    i2=0;
    i3=1;

    s1=0; s0=0; #10;
    $display("sel=00 y=%b", y);

    s1=0; s0=1; #10;
    $display("sel=01 y=%b", y);

    s1=1; s0=0; #10;
    $display("sel=10 y=%b", y);

    s1=1; s0=1; #10;
    $display("sel=11 y=%b", y);

end

endmodule
