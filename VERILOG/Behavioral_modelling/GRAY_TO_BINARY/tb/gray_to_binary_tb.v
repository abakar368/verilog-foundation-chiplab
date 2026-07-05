module gray_to_binary_tb;

reg [3:0] G;
wire [3:0] B;

gray_to_binary dut(.G(G),.B(B));

initial begin
    $monitor("Time=%0t Gray=%b Binary=%b",$time,G,B);

    G=4'b0000;
    #10 G=4'b0001;
    #10 G=4'b0011;
    #10 G=4'b0010;
    #10 G=4'b0110;
    #10 G=4'b0111;
    #10 G=4'b0101;
    #10 G=4'b0100;
    #10 $finish;
end

endmodule
