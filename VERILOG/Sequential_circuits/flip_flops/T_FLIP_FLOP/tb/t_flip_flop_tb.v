module t_flip_flop_tb;

reg t;
reg clk;
reg rst_n;

wire q;
wire q_bar;

t_flip_flop dut (
    .t(t),
    .clk(clk),
    .rst_n(rst_n),
    .q(q),
    .q_bar(q_bar)
);

// Generate 10-time-unit clock
always #5 clk = ~clk;

initial begin

    $monitor("t=%0t | clk=%b rst_n=%b t=%b | q=%b q_bar=%b",
              $time, clk, rst_n, t, q, q_bar);

    // Initialize Signals
    clk   = 0;
    rst_n = 0;
    t     = 0;

    // Apply Synchronous Active-Low Reset
    #10;
    rst_n = 1;

    // Hold
    t = 0;
    #10;

    // Toggle
    t = 1;

    repeat (4)
        #10;


    // Hold (Q should remain at its
    // final toggled value)
    t = 0;
    #10;

    // Toggle Again
    t = 1;

    repeat (2)
        #10;

    // Apply Reset
    rst_n = 0;
    #10;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, t_flip_flop_tb);
end

endmodule
