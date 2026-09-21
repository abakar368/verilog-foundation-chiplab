module d_latch_tb;

reg d;
reg en;

wire q;

d_latch dut (
    .d(d),
    .en(en),
    .q(q)
);

initial begin

    $monitor("t=%0t | en=%b d=%b | q=%b",
              $time, en, d, q);

    // Latch Disabled
    en = 0;
    d  = 0;

    #5;

    // Enable Latch (Load 1)
    en = 1;
    d  = 1;

    #5;


    // Disable Latch (Hold 1)
    en = 0;
    d  = 0;

    #5;

    // Enable Latch (Load 0)
    en = 1;
    d  = 0;

    #5;


    // Disable Latch (Hold 0)
    en = 0;
    d  = 1;

    #5;


    // Enable Latch (Load 1)
    en = 1;
    d  = 1;

    #5;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, d_latch_tb);
end

endmodule
