module demux_1to16 (
    input wire       din,         // 1-bit data input
    input wire [3:0] sel,         // 4-bit select input
    input wire       en,          // enable signal
    output reg [15:0] dout        // 16-bit output
);

always @(*) begin
    dout = 16'b0; // Default all outputs to 0
    if (en) begin
        dout[sel] = din;
    end
end

endmodule
