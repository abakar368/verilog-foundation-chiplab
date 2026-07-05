module demux_1x2_tb;

reg din, sel;
wire y0, y1;

demux_1x2 dut(
    .din(din),
    .sel(sel),
    .y0(y0),
    .y1(y1)
);

initial begin
    $monitor(
    "din=%b sel=%b y0=%b y1=%b",
    din,sel,y0,y1
    );

    din=0; sel=0;
    #5 din=0; sel=1;
    #5 din=1; sel=0;
    #5 din=1; sel=1;
 
end
endmodule
