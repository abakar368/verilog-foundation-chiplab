module single_port_ram_tb;

parameter DATA_WIDTH = 8;
parameter ADDR_WIDTH = 4;
parameter DEPTH = 16;

reg clk;
reg we;
reg [ADDR_WIDTH-1:0] addr;
reg [DATA_WIDTH-1:0] din;

wire [DATA_WIDTH-1:0] dout;

single_port_ram DUT(
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout)
);

always #5 clk = ~clk;

integer i;

initial
begin
    clk = 0;
    we = 0;
    addr = 0;
    din = 0;

    // Write data
    we = 1;
    for(i=0; i<8; i=i+1)
    begin
        addr = i;
        din = i + 8'hA0;
        #10;
    end

    // Read data
    we = 0;
    for(i=0; i<8; i=i+1)
    begin
        addr = i;
        #10;
    end

    #20;
    $finish;
end

initial
begin
    $monitor("Time=%0t WE=%b Addr=%d Din=%h Dout=%h",
              $time,we,addr,din,dout);
end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, single_port_ram_tb);
end

endmodule