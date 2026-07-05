module decoder_tb;


reg a,b;

wire d0,d1,d2,d3;


decoder2x4 dut(
.a(a),
.b(b),
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3)
);


initial begin


$monitor("a=%b b=%b d0=%b d1=%b d2=%b d3=%b",
a,b,d0,d1,d2,d3);


a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;

end

endmodule

