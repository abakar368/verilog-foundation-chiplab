module jk_ff_tb;

reg j;
reg k;
reg clk;
reg rst_n;

wire q;
wire q_bar;

jk_ff dut (
    .j(j),
    .k(k),
    .clk(clk),
    .rst_n(rst_n),
    .q(q),
    .q_bar(q_bar)
);

// Generate 10-time-unit clock
always #5 clk = ~clk;

initial begin

    $monitor("t=%0t | clk=%b rst_n=%b j=%b k=%b | q=%b q_bar=%b",
              $time, clk, rst_n, j, k, q, q_bar);

    // Initialize Signals
    clk   = 0;
    rst_n = 0;
    j     = 0;
    k     = 0;

    // Apply Synchronous Active-Low Reset
    #10;
    rst_n = 1;

    // Hold
    {j, k} = 2'b00;
    #10;

    // Set
    {j, k} = 2'b10;
    #10;

    // Hold (Q should remain 1)
    {j, k} = 2'b00;
    #10;

    // Reset
    {j, k} = 2'b01;
    #10;

    // Hold (Q should remain 0)
    {j, k} = 2'b00;
    #10;

    // Toggle
    {j, k} = 2'b11;

    repeat (4)
        #10;

    // Hold (Q should remain at its
    // final toggled value)
    {j, k} = 2'b00;
    #10;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, jk_ff_tb);
end

endmodule
