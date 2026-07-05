module tb_ripple_adder_4bit;

reg [3:0] a;
reg [3:0] b;
reg cin;

wire [3:0] sum;
wire cout;

ripple_adder_4bit dut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin

    a=4'b0000; b=4'b0000; cin=0; #10;
    $display("%b + %b + %b = %b%b",
              a,b,cin,cout,sum);

    a=4'b0101; b=4'b0011; cin=0; #10;
    $display("%b + %b + %b = %b%b",
              a,b,cin,cout,sum);

    a=4'b1111; b=4'b0001; cin=0; #10;
    $display("%b + %b + %b = %b%b",
              a,b,cin,cout,sum);

    a=4'b1111; b=4'b1111; cin=1; #10;
    $display("%b + %b + %b = %b%b",
              a,b,cin,cout,sum);


end

endmodule
