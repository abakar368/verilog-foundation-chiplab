module encoder_tb;


reg d0,d1,d2,d3;

wire y1,y0;


encoder4x2 dut(
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.y1(y1),
.y0(y0)
);


initial begin


$monitor("d0=%b d1=%b d2=%b d3=%b y1=%b y0=%b",
d0,d1,d2,d3,y1,y0);


d0=1;d1=0;d2=0;d3=0;
#10 d0=0;d1=1;d2=0;d3=0;
#10 d0=0;d1=0;d2=1;d3=0;
#10 d0=0;d1=0;d2=0;d3=1;

end

endmodule
