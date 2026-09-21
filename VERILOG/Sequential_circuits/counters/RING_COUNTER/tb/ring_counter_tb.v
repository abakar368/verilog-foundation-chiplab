module ring_counter_tb;

reg clk;
reg rst_n;

wire [3:0] counter;

ring_counter dut (
    .clk(clk),
    .rst_n(rst_n),
    .counter(counter)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    $monitor("t=%0t | clk=%b rst_n=%b | counter=%b",
              $time, clk, rst_n, counter);

    // Initialize
    clk   = 0;
    rst_n = 0;

    // Apply synchronous reset
    #10;
    rst_n = 1;

    // Run for several rotations
    #80;

    $finish;
end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, ring_counter_tb);
end

endmodule