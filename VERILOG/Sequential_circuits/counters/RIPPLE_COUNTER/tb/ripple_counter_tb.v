module ripple_counter_tb;

reg clk;
reg rst_n;

wire [3:0] counter;

ripple_counter dut(
    .clk(clk),
    .rst_n(rst_n),
    .counter(counter)
);

// Generate clock
always #5 clk = ~clk;

initial begin

    $monitor("t=%0t | clk=%b rst_n=%b | counter=%b (%0d)",
              $time,
              clk,
              rst_n,
              counter,
              counter);

    // Initialize
    clk   = 0;
    rst_n = 0;

    // Apply reset
    #10;
    rst_n = 1;

    // Let the counter run
    #180;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, ripple_counter_tb);
end

endmodule