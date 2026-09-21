module up_down_counter_tb;

reg clk;
reg rst_n;
reg up_down;

wire [3:0] counter;

up_down_counter dut (
    .clk(clk),
    .rst_n(rst_n),
    .up_down(up_down),
    .counter(counter)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    $monitor("t=%0t | clk=%b rst_n=%b up_down=%b | counter=%b (%0d)",
              $time, clk, rst_n, up_down, counter, counter);

    // Initialize
    clk     = 0;
    rst_n   = 0;
    up_down = 1;

    // Apply synchronous reset
    #10;
    rst_n = 1;

    // Count Up
    #80;

    // Count Down
    up_down = 0;
    #80;

    // Count Up again
    up_down = 1;
    #40;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, up_down_counter_tb);
end

endmodule