module cla_4bit_tb;

reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

cla_4bit dut(a,b,cin,sum,cout);

initial begin

    a=4'b0011; b=4'b0100; cin=0;
    #5;

    a=4'b1111; b=4'b0001; cin=0;
    #5;

    a=4'b1010; b=4'b1010; cin=1;
    #5;
end

endmodule
