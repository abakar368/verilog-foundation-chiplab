module comparator1bit_tb;

reg A,B;
wire Greater,Equal,Less;

comparator_1bit dut(.A(A),.B(B),.Greater(Greater),.Equal(Equal),.Less(Less));

initial begin
    $monitor("Time=%0t A=%b B=%b G=%b E=%b L=%b",$time,A,B,Greater,Equal,Less);

    A=0;B=0;
    #10 A=0;B=1;
    #10 A=1;B=0;
    #10 A=1;B=1;
    #10 $finish;
end

endmodule
