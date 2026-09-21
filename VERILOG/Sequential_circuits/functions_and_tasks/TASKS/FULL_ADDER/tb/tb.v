module full_adder_task_tb;
    reg A;
    reg B;
    reg CIN;
    wire SUM;
    wire COUT;

    full_adder_task uut (
        .A(A),
        .B(B),
        .CIN(CIN),
        .SUM(SUM),
        .COUT(COUT)
    );

    initial begin
        // Test case 1: A=0, B=0, CIN=0
        A = 0; B = 0; CIN = 0;
        #10;
        $display("Test case 1: A=%b, B=%b, CIN=%b => SUM=%b, COUT=%b", A, B, CIN, SUM, COUT);

        // Test case 2: A=0, B=1, CIN=0
        A = 0; B = 1; CIN = 0;
        #10;
        $display("Test case 2: A=%b, B=%b, CIN=%b => SUM=%b, COUT=%b", A, B, CIN, SUM, COUT);

        // Test case 3: A=1, B=0, CIN=0
        A = 1; B = 0; CIN = 0;
        #10;
        $display("Test case 3: A=%b, B=%b, CIN=%b => SUM=%b, COUT=%b", A, B, CIN, SUM, COUT);

        // Test case 4: A=1, B=1, CIN=0
        A = 1; B = 1; CIN = 0;
        #10;
        $display("Test case 4: A=%b, B=%b, CIN=%b => SUM=%b, COUT=%b", A, B, CIN, SUM, COUT);

        // Test case 5: A=0, B=0, CIN=1
        A = 0; B = 0; CIN = 1;
        #10;
        $display("Test case 5: A=%b, B=%b, CIN=%b => SUM=%b, COUT=%b", A, B, CIN, SUM, COUT);

        // Test case 6: A=0, B=1, CIN=1
        A = 0; B = 1; CIN = 1;
        #10;
        $display("Test case 6: A=%b, B=%b, CIN=%b => SUM=%b, COUT=%b", A, B, CIN, SUM, COUT);

        // Test case 7: A=1, B=0, CIN=1
        A = 1; B = 0; CIN = 1;
        #10;
        $display("Test case 7: A=%b, B=%b, CIN=%b => SUM=%b, COUT=%b", A, B, CIN, SUM, COUT);

        // Test case 8: A=1, B=1, CIN=1
        A = 1; B = 1; CIN = 1;
        #10;
        $display("Test case 8: A=%b, B=%b, CIN=%b => SUM=%b, COUT=%b", A, B, CIN, SUM, COUT);

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, full_adder_task_tb);
    end

endmodule