module mux_2x1_tb;

reg A,B,S;
wire Y;

mux_2x1 dut(.A(A),.B(B),.S(S),.Y(Y));

initial begin
    $monitor("Time=%0t S=%b A=%b B=%b Y=%b",$time,S,A,B,Y);

    A=0;B=1;S=0;
    #10 S=1;
    #10 A=1;B=0;S=0;
    #10 S=1;
 
end

endmodule
