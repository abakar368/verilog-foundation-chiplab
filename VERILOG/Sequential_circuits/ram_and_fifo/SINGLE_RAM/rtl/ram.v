//Abubakar Adam - 24-09-2026 - ram.v

module single_port_ram #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4,
    parameter DEPTH = 16
)(
    input clk,
    input we,
    input [ADDR_WIDTH-1:0] addr,
    input [DATA_WIDTH-1:0] din,
    output reg [DATA_WIDTH-1:0] dout
);

reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

always @(posedge clk)
begin
    if(we)
        mem[addr] <= din;
    else
        dout <= mem[addr];
end

endmodule