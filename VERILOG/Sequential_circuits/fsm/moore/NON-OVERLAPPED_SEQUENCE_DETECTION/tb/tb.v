module moore_1011_nonoverlap_tb;

reg clk;
reg rst;
reg din;
wire detect;

moore_1011_nonoverlap DUT(
    .clk(clk),
    .rst(rst),
    .din(din),
    .detect(detect)
);

always #5 clk = ~clk;

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

    // Input: 1011011
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
	$fsdbDumpvars(0, moore_1011_nonoverlap_tb);
end

endmodule
