module comparator_2bit_tb;

reg a1,a0,b1,b0;
wire a_gt_b,a_eq_b,a_lt_b;

comparator_2bit dut(
    .a1(a1),
    .a0(a0),
    .b1(b1),
    .b0(b0),
    .a_gt_b(a_gt_b),
    .a_eq_b(a_eq_b),
    .a_lt_b(a_lt_b)
);

initial begin

    a1=0; a0=1;
    b1=0; b0=0;

    #5;

    a1=1; a0=0;
    b1=1; b0=0;

    #5;

    a1=0; a0=0;
    b1=1; b0=1;

    #5;

end

endmodule
