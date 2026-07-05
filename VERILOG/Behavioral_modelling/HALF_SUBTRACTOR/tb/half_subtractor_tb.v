module half_subtractor_tb;

reg A,B;
wire Difference,Borrow;

half_subtractor dut(.A(A),.B(B),.Difference(Difference),.Borrow(Borrow));

initial begin
    $monitor("Time=%0t A=%b B=%b Difference=%b Borrow=%b",$time,A,B,Difference,Borrow);

    A=0;B=0;
    #10 A=0;B=1;
    #10 A=1;B=0;
    #10 A=1;B=1;
    #10 $finish;
end

endmodule
