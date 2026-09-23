//Abubakar Adam - 23-09-2026 - 2_to_4_decoder.v

module decoder_2_to_4 (
    input wire [1:0] A, // 2-bit input
    output reg [3:0] Y // 4-bit output
);

function mux_2x1;
    input sel; // select line
    input in0; // input 0
    input in1; // input 1
    begin
        mux_2x1 = sel ? in1 : in0; // if sel is 1, output in1, else output in0
    end
endfunction

always @(*) begin
    // Initialize output to 0
    Y = 4'b0000;

    // Use the mux function to determine which output line to activate
    Y[0] = mux_2x1(A[1], 1'b1, 1'b0) & mux_2x1(A[0], 1'b1, 1'b0); // Y0
    Y[1] = mux_2x1(A[1], 1'b1, 1'b0) & mux_2x1(A[0], 1'b0, 1'b1); // Y1
    Y[2] = mux_2x1(A[1], 1'b0, 1'b1) & mux_2x1(A[0], 1'b1, 1'b0); // Y2
    Y[3] = mux_2x1(A[1], 1'b0, 1'b1) & mux_2x1(A[0], 1'b0, 1'b1); // Y3
end

endmodule




