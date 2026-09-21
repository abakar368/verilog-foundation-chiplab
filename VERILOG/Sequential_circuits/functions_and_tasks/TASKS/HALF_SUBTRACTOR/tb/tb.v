module half_subtractor_task_tb;
    reg A;
    reg B;
    wire DIFF;
    wire BORROW;

    half_subtractor_task uut (
        .A(A),
        .B(B),
        .DIFF(DIFF),
        .BORROW(BORROW)
    );

    initial begin
        // Test case 1: A=0, B=0
        A = 0; B = 0;
        #10;
        $display("Test case 1: A=%b, B=%b => DIFF=%b, BORROW=%b", A, B, DIFF, BORROW);

        // Test case 2: A=0, B=1
        A = 0; B = 1;
        #10;
        $display("Test case 2: A=%b, B=%b => DIFF=%b, BORROW=%b", A, B, DIFF, BORROW);

        // Test case 3: A=1, B=0
        A = 1; B = 0;
        #10;
        $display("Test case 3: A=%b, B=%b => DIFF=%b, BORROW=%b", A, B, DIFF, BORROW);

        // Test case 4: A=1, B=1
        A = 1; B = 1;
        #10;
        $display("Test case 4: A=%b, B=%b => DIFF=%b, BORROW=%b", A, B, DIFF, BORROW);

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, half_subtractor_task_tb);
    end

endmodule