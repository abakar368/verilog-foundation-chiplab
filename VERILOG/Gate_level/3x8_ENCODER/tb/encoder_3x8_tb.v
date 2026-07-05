module encoder8x3_tb;

reg d0, d1, d2, d3, d4, d5, d6, d7;

wire y2, y1, y0;

encoder8x3 dut (
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .d4(d4),
    .d5(d5),
    .d6(d6),
    .d7(d7),
    .y2(y2),
    .y1(y1),
    .y0(y0)
);

initial begin

    $monitor("d7=%b d6=%b d5=%b d4=%b d3=%b d2=%b d1=%b d0=%b | y2=%b y1=%b y0=%b",
              d7,d6,d5,d4,d3,d2,d1,d0,y2,y1,y0);

    // Input 0
    d0=1; d1=0; d2=0; d3=0;
    d4=0; d5=0; d6=0; d7=0;
    #10;

    // Input 1
    d0=0; d1=1; d2=0; d3=0;
    d4=0; d5=0; d6=0; d7=0;
    #10;

    // Input 2
    d0=0; d1=0; d2=1; d3=0;
    d4=0; d5=0; d6=0; d7=0;
    #10;

    // Input 3
    d0=0; d1=0; d2=0; d3=1;
    d4=0; d5=0; d6=0; d7=0;
    #10;

    // Input 4
    d0=0; d1=0; d2=0; d3=0;
    d4=1; d5=0; d6=0; d7=0;
    #10;

    // Input 5
    d0=0; d1=0; d2=0; d3=0;
    d4=0; d5=1; d6=0; d7=0;
    #10;

    // Input 6
    d0=0; d1=0; d2=0; d3=0;
    d4=0; d5=0; d6=1; d7=0;
    #10;

    // Input 7
    d0=0; d1=0; d2=0; d3=0;
    d4=0; d5=0; d6=0; d7=1;
    #10;

end

endmodule
