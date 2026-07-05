module mux_4x1_tb;

reg a, b, c, d;
reg [1:0] sel;
wire y;

mux_4x1 dut(a, b, c, d, sel, y);

initial begin
    $monitor("sel=%b a=%b b=%b c=%b d=%b | y=%b",
              sel, a, b, c, d, y);

    a=0; b=1; c=0; d=1;

    sel=2'b00; #5;
    sel=2'b01; #5;
    sel=2'b10; #5;
    sel=2'b11; #5;
   
end
endmodule
