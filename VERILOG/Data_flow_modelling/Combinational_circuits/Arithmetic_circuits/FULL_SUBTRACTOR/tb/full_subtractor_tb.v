module full_subtractor_tb;

reg a, b, bin;
wire diff, borrow;

full_subtractor dut(a, b, bin, diff, borrow);

initial begin
    $monitor("a=%b b=%b bin=%b | diff=%b borrow=%b",
             a, b, bin, diff, borrow);

    a=0; b=0; bin=0;
    #5 a=0; b=0; bin=1;
    #5 a=0; b=1; bin=0;
    #5 a=0; b=1; bin=1;
    #5 a=1; b=0; bin=0;
    #5 a=1; b=0; bin=1;
    #5 a=1; b=1; bin=0;
    #5 a=1; b=1; bin=1;

end

endmodule