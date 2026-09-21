module pipo_tb;

reg clk;
reg rst_n;
reg [3:0] parallel_in;

wire [3:0] parallel_out;

pipo dut(
    .clk(clk),
    .rst_n(rst_n),
    .parallel_in(parallel_in),
    .parallel_out(parallel_out)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    $monitor("t=%0t | clk=%b rst_n=%b parallel_in=%b | parallel_out=%b",
              $time,
              clk,
              rst_n,
              parallel_in,
              parallel_out);

    // Initialization
    clk = 0;
    rst_n = 0;
    parallel_in = 4'b0000;

    // Reset
    #10;
    rst_n = 1;

    // Load first value
    parallel_in = 4'b1010;
    #10;

    // Load second value
    parallel_in = 4'b0101;
    #10;

    // Load third value
    parallel_in = 4'b1111;
    #10;

    // Load fourth value
    parallel_in = 4'b0011;
    #10;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, pipo_tb);
end

endmodule
