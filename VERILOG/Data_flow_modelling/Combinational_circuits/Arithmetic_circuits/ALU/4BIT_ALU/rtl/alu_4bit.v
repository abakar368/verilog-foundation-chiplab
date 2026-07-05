module alu_4bit(
    input [3:0] a,
    input [3:0] b,
    input [2:0] sel,
    output [3:0] y
);

assign y =
    (sel==3'b000) ? (a+b) :
    (sel==3'b001) ? (a-b) :
    (sel==3'b010) ? (a&b) :
    (sel==3'b011) ? (a|b) :
    (sel==3'b100) ? (a^b) :
    (sel==3'b101) ? (a<<1) :
    (sel==3'b110) ? (a>>1) :
                    (~a);

endmodule
