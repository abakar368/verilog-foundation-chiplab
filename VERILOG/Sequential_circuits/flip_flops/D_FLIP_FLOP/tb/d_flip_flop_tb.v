module d_ff_tb;

reg d;
reg clk;
reg rst_n;

wire q;
wire q_bar;

d_ff dut (
    .d(d),
    .clk(clk),
    .rst_n(rst_n),
    .q(q),
    .q_bar(q_bar)
);

always #5 clk = ~clk;

initial begin

    $monitor("t=%0t | clk=%b rst_n=%b d=%b | q=%b q_bar=%b",
              $time, clk, rst_n, d, q, q_bar);

    // Initialize
    clk   = 0;
    rst_n = 0;
    d     = 0;

    // Apply Reset
    #10;
    rst_n = 1;

    // Load 1
    d = 1;
    #10;

    // Load 0
    d = 0;
    #10;

    // Load 1
    d = 1;
    #10;

    // Apply Reset Again
    rst_n = 0;
    #10;

    // Release Reset
    rst_n = 1;
    d = 0;
    #10;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, d_ff_tb);
end

endmodule
