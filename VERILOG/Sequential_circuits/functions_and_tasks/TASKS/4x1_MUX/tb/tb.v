module mux_4x1_task_tb;
    reg [3:0] in;
    reg [1:0] sel;
    wire out;

    mux_4x1_task uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        // Test case 1: in=0000, sel=00
        in = 4'b0000; sel = 2'b00;
        #10;
        $display("Test case 1: in=%b, sel=%b, out=%b", in, sel, out);

        // Test case 2: in=0001, sel=01
        in = 4'b0001; sel = 2'b01;
        #10;
        $display("Test case 2: in=%b, sel=%b, out=%b", in, sel, out);

        // Test case 3: in=0010, sel=10
        in = 4'b0010; sel = 2'b10;
        #10;
        $display("Test case 3: in=%b, sel=%b, out=%b", in, sel, out);

        // Test case 4: in=0011, sel=11
        in = 4'b0011; sel = 2'b11;
        #10;
        $display("Test case 4: in=%b, sel=%b, out=%b", in, sel, out);

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, mux_4x1_task_tb);
    end

endmodule