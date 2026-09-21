module siso_tb;

reg clk;
reg rst_n;
reg serial_in;

wire serial_out;

siso dut (
    .clk(clk),
    .rst_n(rst_n),
    .serial_in(serial_in),
    .serial_out(serial_out)
);

// Generate clock
always #5 clk = ~clk;

initial begin

    $monitor("t=%0t | clk=%b rst_n=%b serial_in=%b | q=%b serial_out=%b",
              $time,
              clk,
              rst_n,
              serial_in,
              dut.q,
              serial_out);

    //-------------------------
    // Initialize
    //-------------------------
    clk       = 0;
    rst_n     = 0;
    serial_in = 0;

    //-------------------------
    // Apply Reset
    //-------------------------
    #10;
    rst_n = 1;

    //-------------------------
    // Shift in: 1 0 1 1
    //-------------------------
    serial_in = 1;
    #10;

    serial_in = 0;
    #10;

    serial_in = 1;
    #10;

    serial_in = 1;
    #10;

    //-------------------------
    // Shift out remaining bits
    //-------------------------
    serial_in = 0;
    #10;

    serial_in = 0;
    #10;

    serial_in = 0;
    #10;

    serial_in = 0;
    #10;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, siso_tb);
end

endmodule
