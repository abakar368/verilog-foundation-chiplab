module comparator_tb;


reg a,b;

wire a_gt_b;
wire a_eq_b;
wire a_lt_b;


comparator dut(
    .a(a),
    .b(b),
    .a_gt_b(a_gt_b),
    .a_eq_b(a_eq_b),
    .a_lt_b(a_lt_b)
);


initial begin


$monitor("a=%b b=%b | a>b=%b a=b=%b a<b=%b",
          a,b,a_gt_b,a_eq_b,a_lt_b);


// Test cases

a=0; b=0;
#10;

a=0; b=1;
#10;

a=1; b=0;
#10;

a=1; b=1;
#10;


end

endmodule
