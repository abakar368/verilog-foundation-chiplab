module full_subtractor_tb;

reg A,B,Bin;
wire Difference,Borrow;

full_subtractor dut(.A(A),.B(B),.Bin(Bin),.Difference(Difference),.Borrow(Borrow));

initial begin
    $monitor("Time=%0t A=%b B=%b Bin=%b Difference=%b Borrow=%b",$time,A,B,Bin,Difference,Borrow);

    A=0;B=0;Bin=0;
    #10 A=0;B=0;Bin=1;
    #10 A=0;B=1;Bin=0;
    #10 A=0;B=1;Bin=1;
    #10 A=1;B=0;Bin=0;
    #10 A=1;B=0;Bin=1;
    #10 A=1;B=1;Bin=0;
    #10 A=1;B=1;Bin=1;
    #10 $finish;
end

endmodule
