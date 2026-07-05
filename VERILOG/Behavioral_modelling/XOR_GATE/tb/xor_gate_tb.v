module xor_gate_tb;

reg A,B;
wire Y;

xor_gate dut(.A(A),.B(B),.Y(Y));

initial begin
    $monitor("Time=%0t A=%b B=%b Y=%b",$time,A,B,Y);

    A=0;B=0;
    #10 A=0;B=1;
    #10 A=1;B=0;
    #10 A=1;B=1;

end

endmodule
