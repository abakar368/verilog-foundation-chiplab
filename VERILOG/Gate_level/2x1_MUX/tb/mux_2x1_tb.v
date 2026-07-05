module mux2x1_tb;

reg a,b,sel;
wire y;


mux2x1 dut(
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);


initial begin

$monitor("a=%b b=%b sel=%b y=%b",
          a,b,sel,y);


a=0;b=0;sel=0;
#10 a=1;b=0;sel=0;
#10 a=0;b=1;sel=1;
#10 a=1;b=1;sel=1;


end

endmodule
