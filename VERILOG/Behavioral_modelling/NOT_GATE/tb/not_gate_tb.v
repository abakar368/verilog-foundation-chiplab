module not_gate_tb;

reg A;
wire Y;

not_gate dut(.A(A),.Y(Y));

initial begin
    $monitor("Time=%0t A=%b Y=%b",$time,A,Y);

    A=0;
    #10 A=1;
end

endmodule
