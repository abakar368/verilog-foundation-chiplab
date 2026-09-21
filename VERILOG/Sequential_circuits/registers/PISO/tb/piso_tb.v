module piso_tb;

reg clk;
reg rst_n;
reg mode;
reg [3:0] parallel_in;

wire serial_out;

piso dut (
    .clk(clk),
    .rst_n(rst_n),
    .mode(mode),
    .parallel_in(parallel_in),
    .serial_out(serial_out)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    $monitor("t=%0t | clk=%b rst_n=%b mode=%b parallel_in=%b q=%b serial_out=%b",
              $time,
              clk,
              rst_n,
              mode,
              parallel_in,
              dut.q,
              serial_out);

    //----------------------------------
    // Initialize
    //----------------------------------
    clk         = 0;
    rst_n       = 0;
    mode        = 0;
    parallel_in = 4'b0000;

    //----------------------------------
    // Reset
    //----------------------------------
    #10;
    rst_n = 1;

    //----------------------------------
    // Load 1011
    //----------------------------------
    parallel_in = 4'b1011;
    mode = 0;
    #10;

    //----------------------------------
    // Shift Out
    //----------------------------------
    mode = 1;

    #10;
    #10;
    #10;
    #10;

    //----------------------------------
    // Load another value
    //----------------------------------
    mode = 0;
    parallel_in = 4'b0101;
    #10;

    //----------------------------------
    // Shift Again
    //----------------------------------
    mode = 1;

    #10;
    #10;
    #10;
    #10;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, piso_tb);
end

endmodule
