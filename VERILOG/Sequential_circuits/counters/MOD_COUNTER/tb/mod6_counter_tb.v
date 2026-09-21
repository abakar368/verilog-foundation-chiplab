module mod6_counter_tb;

reg clk;
reg rst_n;

wire [2:0] counter;

mod6_counter dut (
    .clk(clk),
    .rst_n(rst_n),
    .counter(counter)
);

// Clock generation (10 time unit period)
always #5 clk = ~clk;

initial begin

    $monitor("t=%0t | clk=%b rst_n=%b | counter=%b (%0d)",
              $time, clk, rst_n, counter, counter);

    // Initialize
    clk   = 0;
    rst_n = 0;

    // Apply synchronous reset
    #10;
    rst_n = 1;

    // Run long enough to observe several Mod-6 cycles
    #120;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, mod6_counter_tb);
end

endmodule