module full_subtractor_task_tb;

    reg A;
    reg B;
    reg BIN;
    wire DIFF;
    wire BORROW;

    full_subtractor_task uut (
        .A(A),
        .B(B),
        .BIN(BIN),
        .DIFF(DIFF),
        .BORROW(BORROW)
    );

    initial begin
        // Test case 1: A=0, B=0, BIN=0
        A = 0; B = 0; BIN = 0;
        #10;
        $display("Test case 1: A=%b, B=%b, BIN=%b => DIFF=%b, BORROW=%b", A, B, BIN, DIFF, BORROW);

        // Test case 2: A=0, B=1, BIN=0
        A = 0; B = 1; BIN = 0;
        #10;
        $display("Test case 2: A=%b, B=%b, BIN=%b => DIFF=%b, BORROW=%b", A, B, BIN, DIFF, BORROW);

        // Test case 3: A=1, B=0, BIN=0
        A = 1; B = 0; BIN = 0;
        #10;
        $display("Test case 3: A=%b, B=%b, BIN=%b => DIFF=%b, BORROW=%b", A, B, BIN, DIFF, BORROW);

        // Test case 4: A=1, B=1, BIN=0
        A = 1; B = 1; BIN = 0;
        #10;
        $display("Test case 4: A=%b, B=%b, BIN=%b => DIFF=%b, BORROW=%b", A, B, BIN, DIFF, BORROW);

        // Test case 5: A=0, B=0, BIN=1
        A = 0; B = 0; BIN = 1;
        #10;
        $display("Test case 5: A=%b, B=%b, BIN=%b => DIFF=%b, BORROW=%b", A, B, BIN, DIFF, BORROW);

        // Test case 6: A=0, B=1, BIN=1
        A = 0; B = 1; BIN = 1;
        #10;
        $display("Test case 6: A=%b, B=%b, BIN=%b => DIFF=%b, BORROW=%b", A, B, BIN, DIFF, BORROW);

        // Test case 7: A=1, B=0, BIN=1
        A = 1; B = 0; BIN = 1;
        #10;
        $display("Test case 7: A=%b, B=%b, BIN=%b => DIFF=%b, BORROW=%b", A, B, BIN, DIFF, BORROW);

        // Test case 8: A=1, B=1, BIN=1
        A = 1; B = 1; BIN = 1;
        #10;
        $display("Test case 8: A=%b, B=%b, BIN=%b => DIFF=%b, BORROW=%b", A, B, BIN, DIFF, BORROW);

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, full_subtractor_task_tb);
    end

endmodule