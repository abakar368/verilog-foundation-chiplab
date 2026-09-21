module decoder_2_to_4_tb;
    reg [1:0] A; // 2-bit input
    wire [3:0] Y; // 4-bit output

    // Instantiate the decoder
    decoder_2_to_4 dut (
        .A(A),
        .Y(Y)
    );

    initial begin
        $monitor("A=%b | Y=%b", A, Y);

        // Test all combinations of A
        A = 2'b00; #10;
        A = 2'b01; #10;
        A = 2'b10; #10;
        A = 2'b11; #10;

        $finish;
    end

initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, decoder_2_to_4_tb);
end


endmodule