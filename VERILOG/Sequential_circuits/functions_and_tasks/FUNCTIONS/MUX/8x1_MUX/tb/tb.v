module mux_8x1_tb;
    reg [7:0] in;
    reg [2:0] sel;
    wire out;

    mux_8x1 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        // Test case 1
        in = 8'b00000001; sel = 3'b000; #10;
        $display("Test case 1: in=%b, sel=%b, out=%b", in, sel, out);

        // Test case 2
        in = 8'b00000010; sel = 3'b001; #10;
        $display("Test case 2: in=%b, sel=%b, out=%b", in, sel, out);

        // Test case 3
        in = 8'b00000100; sel = 3'b010; #10;
        $display("Test case 3: in=%b, sel=%b, out=%b", in, sel, out);

        // Test case 4
        in = 8'b00001000; sel = 3'b011; #10;
        $display("Test case 4: in=%b, sel=%b, out=%b", in, sel, out);

        // Test case 5
        in = 8'b00010000; sel = 3'b100; #10;
        $display("Test case 5: in=%b, sel=%b, out=%b", in, sel, out);

        // Test case 6
        in = 8'b00100000; sel = 3'b101; #10;
        $display("Test case 6: in=%b, sel=%b, out=%b", in, sel, out);

        // Test case 7
        in = 8'b01000000; sel = 3'b110; #10;
        $display("Test case 7: in=%b, sel=%b, out=%b", in, sel, out);

        // Test case 8
        in = 8'b10000000; sel = 3'b111; #10;
        $display("Test case 8: in=%b, sel=%b, out=%b", in, sel, out);

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, mux_8x1_tb);
    end

endmodule