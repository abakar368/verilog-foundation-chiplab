module alu_4bit_tb;

reg [3:0] a,b;
reg [2:0] sel;
wire [3:0] y;

alu_4bit dut(a,b,sel,y);

initial begin
    $monitor("a=%b | b=%b, sel=%s --> y=%b",a,b,sel,y);

    a=4'b1010;
    b=4'b0011;

    sel=3'b000; #5;
    sel=3'b001; #5;
    sel=3'b010; #5;
    sel=3'b011; #5;
    sel=3'b100; #5;
    sel=3'b101; #5;
    sel=3'b110; #5;
    sel=3'b111; #5;

end

endmodule
