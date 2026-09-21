module decoder_1to2_mux(

input A,

output Y0,
output Y1

);

function mux_2x1;

input a,b,s;

begin
    mux_2x1 = (~s&a) | (s&b);
end

endfunction

assign Y0 = mux_2x1(1'b1,1'b0,A);

assign Y1 = mux_2x1(1'b0,1'b1,A);

endmodule

