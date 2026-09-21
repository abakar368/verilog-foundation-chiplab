module down_counter_tb;

reg clk;
reg rst_n;
wire [3:0] counter;

down_counter dut (
    .clk(clk),
    .rst_n(rst_n),
    .counter(counter)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst_n = 0;
end

initial begin
    $monitor("t=%0t | clk=%b rst_n=%b | counter=%b (%0d)",
              $time, clk, rst_n, counter, counter);

    #10;
    rst_n = 1;

    // Run long enough to see underflow (15 → 0 → 15)
    #170;

    $finish;
end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, down_counter_tb);
end

endmodule