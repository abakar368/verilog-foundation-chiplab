module decoder_2x4_tb;

reg [1:0] A;
wire [3:0] Y;

decoder_2x4 dut(.A(A),.Y(Y));

initial begin
    $monitor("Time=%0t A=%b Y=%b",$time,A,Y);

    A=0;
    #10 A=1;
    #10 A=2;
    #10 A=3;
    #10 $finish;
end

endmodule
