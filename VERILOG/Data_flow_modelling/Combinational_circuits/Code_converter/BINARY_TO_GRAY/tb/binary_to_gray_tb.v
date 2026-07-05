module binary_to_gray_tb;

reg [3:0] bin;
wire [3:0] gray;

binary_to_gray dut(
    .bin(bin),
    .gray(gray)
);

initial begin

    $monitor("bin=%b --> gray=%b", bin, gray);

    bin=4'b0000;
    #5;

    bin=4'b0001;
    #5;

    bin=4'b0010;
    #5;

    bin=4'b1011;
    #5;

end

initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0, binary_to_gray_tb);	
end
endmodule
