module comparator_4bit_tb;

reg [3:0] A,B;
wire Greater,Equal,Less;

comparator_4bit dut(.A(A),.B(B),.Greater(Greater),.Equal(Equal),.Less(Less));

initial begin
    $monitor("Time=%0t A=%d B=%d G=%b E=%b L=%b",$time,A,B,Greater,Equal,Less);

    A=4; B=4;
    #10 A=7; B=2;
    #10 A=1; B=9;
    #10 A=15; B=15;
    #10 $finish;
end

endmodule
