module demux_1X2_tb;

reg D,S;
wire Y0,Y1;

demux_1x2 dut(.D(D),.S(S),.Y0(Y0),.Y1(Y1));

initial begin
    $monitor("Time=%0t D=%b S=%b Y0=%b Y1=%b",$time,D,S,Y0,Y1);

    D=1;S=0;
    #10 S=1;
    #10 D=0;
    #10 D=1;
    #10 $finish;
end

endmodule
