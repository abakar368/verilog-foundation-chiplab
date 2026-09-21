module up_counter_tb;

reg clk;
reg rst_n;

wire [3:0] counter;

up_counter dut (
    .clk(clk),
    .rst_n(rst_n),
    .counter(counter)
);

// Clock generation (10 time units period)
always #5 clk = ~clk;

initial begin

    $monitor("t=%0t | clk=%b rst_n=%b | counter=%b (%0d)",
              $time, clk, rst_n, counter, counter);

    // Initialize
    clk   = 0;
    rst_n = 0;

    // Hold reset for one clock cycle
    #10;
    rst_n = 1;

    // Run long enough to see overflow (0 → 15 → 0)
    #170;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, up_counter_tb);
end

endmodule