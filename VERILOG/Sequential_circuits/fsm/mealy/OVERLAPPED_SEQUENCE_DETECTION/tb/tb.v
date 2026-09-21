module mealy_1011_tb;

reg clk;
reg rst;
reg din;

wire detect;

mealy_1011 DUT(
    .clk(clk),
    .rst(rst),
    .din(din),
    .detect(detect)
);

// Clock
always #5 clk = ~clk;

// Apply one serial bit
task send_bit;
input bit_in;
begin
    din = bit_in;
    #10;
end
endtask

initial
begin
    clk = 0;
    rst = 1;
    din = 0;

    #15 rst = 0;

    // Sequence : 1011011
    send_bit(1);
    send_bit(0);
    send_bit(1);
    send_bit(1);

    send_bit(0);
    send_bit(1);
    send_bit(1);

    #20 $finish;
end

initial
begin
    $monitor("Time=%0t  din=%b  detect=%b", $time, din, detect);
end

initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0, mealy_1011_tb);
end

endmodule
