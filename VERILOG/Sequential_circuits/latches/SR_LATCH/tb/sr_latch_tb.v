module sr_latch_tb;

reg s_n;
reg r_n;

wire q;
wire q_bar;

sr_latch dut (
    .s_n   (s_n),
    .r_n   (r_n),
    .q     (q),
    .q_bar (q_bar)
);

initial begin

    $monitor("t=%0t | s_n=%b r_n=%b | q=%b q_bar=%b",
              $time, s_n, r_n, q, q_bar);

    {s_n, r_n} = 2'b11;

    #5;

    {s_n, r_n} = 2'b01;

    #5;

    {s_n, r_n} = 2'b11;

    #5;

    {s_n, r_n} = 2'b10;

    #5;

    {s_n, r_n} = 2'b11;

    #5;

    {s_n, r_n} = 2'b00;

    #5;

    {s_n, r_n} = 2'b01;

    #5;

    {s_n, r_n} = 2'b11;

    #5;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, sr_latch_tb);
end

endmodule