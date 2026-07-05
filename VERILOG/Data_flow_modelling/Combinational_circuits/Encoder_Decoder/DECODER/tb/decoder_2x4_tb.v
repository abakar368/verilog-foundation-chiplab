module decoder_2x4_tb;

reg a,b,en;
wire y0,y1,y2,y3;

decoder_2x4 dut(
    .a(a),
    .b(b),
    .en(en),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin
    $monitor(
    "en=%b a=%b b=%b | y3=%b y2=%b y1=%b y0=%b",
    en,a,b,y3,y2,y1,y0
    );

    en=0; a=0; b=0;

    #5 en=1; a=0; b=0;
    #5 en=1; a=0; b=1;
    #5 en=1; a=1; b=0;
    #5 en=1; a=1; b=1;

end
endmodule
