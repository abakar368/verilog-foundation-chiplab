module gated_sr_latch_tb;

reg s;
reg r;
reg en;

wire q;
wire q_bar;

gated_sr_latch dut (
    .s(s),
    .r(r),
    .en(en),
    .q(q),
    .q_bar(q_bar)
);

initial begin

    $monitor("t=%0t | en=%b s=%b r=%b | q=%b q_bar=%b",
              $time, en, s, r, q, q_bar);

    // Latch Disabled
    en = 0;

    {s, r} = 2'b00;
    #5;

    {s, r} = 2'b10;
    #5;

    {s, r} = 2'b01;
    #5;

    {s, r} = 2'b11;
    #5;

    // Enable the Latch
    en = 1;


    // Hold
    {s, r} = 2'b00;
    #5;


    // Set
    {s, r} = 2'b10;
    #5;

    // Hold (Q should remain 1)
    {s, r} = 2'b00;
    #5;

    // Reset
    {s, r} = 2'b01;
    #5;

    // Hold (Q should remain 0)
    {s, r} = 2'b00;
    #5;

    // Invalid
    {s, r} = 2'b11;
    #5;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, gated_sr_latch_tb);
end

endmodule
