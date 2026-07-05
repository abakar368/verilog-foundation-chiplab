module priority_encoder_4x2_tb;

reg a0,a1,a2,a3;
wire y1,y0;

priority_encoder_4x2 dut(
    .a0(a0),
    .a1(a1),
    .a2(a2),
    .a3(a3),
    .y1(y1),
    .y0(y0)
);

initial begin

    $monitor(
    "a3=%b a2=%b a1=%b a0=%b | y1=%b y0=%b",
    a3,a2,a1,a0,y1,y0
    );

    a0=1; a1=1; a2=1; a3=0;
    #5;

    a0=1; a1=1; a2=0; a3=1;
    #5;

    a0=1; a1=0; a2=1; a3=0;
    #5;

    a0=0; a1=1; a2=0; a3=0;
    #5;

end

endmodule
