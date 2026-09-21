module sr_ff_tb;

reg s;
reg r;
reg clk;
reg rst_n;

wire q;
wire q_bar;

sr_ff dut (
    .s(s),
    .r(r),
    .clk(clk),
    .rst_n(rst_n),
    .q(q),
    .q_bar(q_bar)
);

// Generate a 10-time-unit clock
always #5 clk = ~clk;

initial begin

    $monitor("t=%0t | clk=%b rst_n=%b s=%b r=%b | q=%b q_bar=%b",
              $time, clk, rst_n, s, r, q, q_bar);

    // Initialize signals
    clk   = 0;
    rst_n = 0;
    s     = 0;
    r     = 0;

    // Apply synchronous reset
    #10;
    rst_n = 1;


    // Hold
    {s, r} = 2'b00;
    #10;


    // Set
    {s, r} = 2'b10;
    #10;

    // Hold (Q should remain 1)
    {s, r} = 2'b00;
    #10;


    // Reset
    {s, r} = 2'b01;
    #10;

  
    // Hold (Q should remain 0)
    {s, r} = 2'b00;
    #10;

    // Invalid
    {s, r} = 2'b11;
    #10;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, sr_ff_tb);
end

endmodule
