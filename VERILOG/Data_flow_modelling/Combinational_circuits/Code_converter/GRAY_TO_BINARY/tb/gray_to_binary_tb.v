module gray_to_binary_tb;

    reg  [3:0] gray;
    wire [3:0] bin;

    integer i;

    gray_to_binary dut (
        .gray(gray),
        .bin(bin)
    );

    initial begin
        $display("Time\tGray\tBinary");
        $display("------------------------");

        for (i = 0; i < 16; i = i + 1) begin
            gray = i;
            #10;
            $display("%0t\t%b\t%b", $time, gray, bin);
        end

        $finish;
    end

initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0, gray_to_binary_tb);
end

endmodule
