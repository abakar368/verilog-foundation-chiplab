module half_adder_task_tb;
    reg A;
    reg B;
    wire SUM;
    wire CARRY;

    half_adder_task uut (
        .A(A),
        .B(B),
        .SUM(SUM),
        .CARRY(CARRY)
    );

    initial begin
        // Test case 1: A=0, B=0
        A = 0; B = 0;
        #10;
        $display("Test case 1: A=%b, B=%b => SUM=%b, CARRY=%b", A, B, SUM, CARRY);

        // Test case 2: A=0, B=1
        A = 0; B = 1;
        #10;
        $display("Test case 2: A=%b, B=%b => SUM=%b, CARRY=%b", A, B, SUM, CARRY);

        // Test case 3: A=1, B=0
        A = 1; B = 0;
        #10;
        $display("Test case 3: A=%b, B=%b => SUM=%b, CARRY=%b", A, B, SUM, CARRY);

        // Test case 4: A=1, B=1
        A = 1; B = 1;
        #10;
        $display("Test case 4: A=%b, B=%b => SUM=%b, CARRY=%b", A, B, SUM, CARRY);

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, half_adder_task_tb);
    end

endmodule