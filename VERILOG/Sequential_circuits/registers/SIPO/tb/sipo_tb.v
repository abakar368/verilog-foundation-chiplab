module sipo_tb;

reg clk;
reg rst_n;
reg serial_in;

wire [3:0] parallel_out;

sipo dut(
    .clk(clk),
    .rst_n(rst_n),
    .serial_in(serial_in),
    .parallel_out(parallel_out)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    $monitor("t=%0t | clk=%b rst_n=%b serial_in=%b | parallel_out=%b",
              $time,
              clk,
              rst_n,
              serial_in,
              parallel_out);

    // Initialization
    clk = 0;
    rst_n = 0;
    serial_in = 0;

    // Reset
    #10;
    rst_n = 1;

    // Shift in 1
    serial_in = 1;
    #10;

    // Shift in 0
    serial_in = 0;
    #10;

    // Shift in 1
    serial_in = 1;
    #10;

    // Shift in 1
    serial_in = 1;
    #10;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, sipo_tb);
end

endmodule
