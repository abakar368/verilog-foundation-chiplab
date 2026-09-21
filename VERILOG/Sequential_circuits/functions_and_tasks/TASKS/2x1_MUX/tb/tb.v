module mux_2x1_task_tb;
    reg A;
    reg B;
    reg S;
    wire Y;

    mux_2x1_task uut (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    initial begin
        // Test case 1: A=0, B=0, S=0
        A = 0; B = 0; S = 0;
        #10;
        $display("Test case 1: A=%b, B=%b, S=%b, Y=%b", A, B, S, Y);

        // Test case 2: A=0, B=1, S=0
        A = 0; B = 1; S = 0;
        #10;
        $display("Test case 2: A=%b, B=%b, S=%b, Y=%b", A, B, S, Y);

        // Test case 3: A=1, B=0, S=1
        A = 1; B = 0; S = 1;
        #10;
        $display("Test case 3: A=%b, B=%b, S=%b, Y=%b", A, B, S, Y);

        // Test case 4: A=1, B=1, S=1
        A = 1; B = 1; S = 1;
        #10;
        $display("Test case 4: A=%b, B=%b, S=%b, Y=%b", A, B, S, Y);

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, mux_2x1_task_tb);
    end

endmodule