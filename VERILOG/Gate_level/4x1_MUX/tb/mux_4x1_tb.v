module mux4x1_tb;

reg i0,i1,i2,i3;
reg s0,s1;

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


$monitor("s1=%b s0=%b y=%b",
          s1,s0,y);


i0=1;i1=0;i2=0;i3=0;

s1=0;s0=0;

#10 s1=0;s0=1;

#10 s1=1;s0=0;

#10 s1=1;s0=1;


end

endmodule
