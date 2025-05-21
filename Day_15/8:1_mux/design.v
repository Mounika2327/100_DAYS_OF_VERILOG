module mux8to1 (
    input wire [7:0] d,      // 8-bit data input (d[7:0])
    input wire [2:0] sel,    // 3-bit selection signal
    output wire y           // Output
);
    always @(*) begin
        case (sel)
            3'b000: y = d[0];  // Select d[0]
            3'b001: y = d[1];  // Select d[1]
            3'b010: y = d[2];  // Select d[2]
            3'b011: y = d[3];  // Select d[3]
            3'b100: y = d[4];  // Select d[4]
            3'b101: y = d[5];  // Select d[5]
            3'b110: y = d[6];  // Select d[6]
            3'b111: y = d[7];  // Select d[7]
            default: y = 1'bx;  // Undefined case (should not occur)
        endcase
    end
endmodule
