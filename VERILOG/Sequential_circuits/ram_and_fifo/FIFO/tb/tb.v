module sync_fifo_tb;

parameter DATA_WIDTH = 8;
parameter DEPTH = 8;
parameter ADDR_WIDTH = 3;

reg clk;
reg rst;
reg wr_en;
reg rd_en;
reg [DATA_WIDTH-1:0] din;

wire [DATA_WIDTH-1:0] dout;
wire full;
wire empty;

sync_fifo DUT(
    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .din(din),
    .dout(dout),
    .full(full),
    .empty(empty)
);

always #5 clk = ~clk;

// Write task
task write_fifo;
input [7:0] data;
begin
    @(posedge clk);
    wr_en = 1;
    rd_en = 0;
    din = data;

    @(posedge clk);
    wr_en = 0;
end
endtask

// Read task
task read_fifo;
begin
    @(posedge clk);
    rd_en = 1;
    wr_en = 0;

    @(posedge clk);
    rd_en = 0;
end
endtask

integer i;

initial
begin
    clk = 0;
    rst = 1;
    wr_en = 0;
    rd_en = 0;
    din = 0;

    #15 rst = 0;

    // Fill FIFO
    for(i=0;i<8;i=i+1)
        write_fifo(i+1);

    // Attempt overflow
    write_fifo(8'hFF);

    // Empty FIFO
    for(i=0;i<8;i=i+1)
        read_fifo();

    // Attempt underflow
    read_fifo();

    #20;
    $finish;
end

initial
begin
    $monitor("T=%0t WR=%b RD=%b DIN=%h DOUT=%h FULL=%b EMPTY=%b",
             $time,wr_en,rd_en,din,dout,full,empty);
end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, sync_fifo_tb);
end

endmodule