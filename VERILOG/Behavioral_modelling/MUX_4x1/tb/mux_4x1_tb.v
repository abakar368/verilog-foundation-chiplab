module mux_4x1_tb;

reg [3:0] D;
reg [1:0] S;
wire Y;

mux_4x1 dut(.D(D),.S(S),.Y(Y));

initial begin
    $monitor("Time=%0t D=%b S=%b Y=%b",$time,D,S,Y);

    D=4'b1010;

    S=0;
    #10 S=1;
    #10 S=2;
    #10 S=3;
    #10 $finish;
end

endmodule
