module demux1to4 (
    input wire d,        // Data input
    input wire [1:0] sel,  // 2-bit selection signal
    output reg y0,      // Output 0
    output reg y1,      // Output 1
    output reg y2,      // Output 2
    output reg y3       // Output 3
);

    always @(*) begin
        // Default all outputs to 0
        y0 = 0;
        y1 = 0;
        y2 = 0;
        y3 = 0;

        // Based on the selection signal, assign the input data to the corresponding output
        case(sel)
            2'b00: y0 = d;  // Select y0
            2'b01: y1 = d;  // Select y1
            2'b10: y2 = d;  // Select y2
            2'b11: y3 = d;  // Select y3
            default: begin
                y0 = 0;
                y1 = 0;
                y2 = 0;
                y3 = 0;
            end
        endcase
    end

endmodule
