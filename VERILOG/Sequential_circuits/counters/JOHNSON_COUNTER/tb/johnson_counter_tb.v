module johnson_counter_tb;
    reg clk;
    reg rst_n;
    wire [3:0] counter;

    johnson_counter dut (
        .clk(clk),
        .rst_n(rst_n),
        .counter(counter)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock period of 10 time units
    end

    initial begin
        rst_n = 0;
        #15 rst_n = 1; // Release reset after 15 time units
    end

    initial begin
        $monitor("t=%0t | clk=%b rst_n=%b | counter=%b (%0d)",
                  $time, clk, rst_n, counter, counter);

        // Run long enough to see the Johnson counter sequence
        #200;

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, johnson_counter_tb);
    end

endmodule