module binary_to_gray_tb;

reg [3:0] B;
wire [3:0] G;

binary_to_gray dut(.B(B),.G(G));

initial begin
    $monitor("Time=%0t Binary=%b Gray=%b",$time,B,G);

    B=0;
    repeat(16) begin
        #10 B=B+1;
    end

    #10 $finish;
end

endmodule
