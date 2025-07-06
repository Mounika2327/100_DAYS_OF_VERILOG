module min_max (
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] min,
    output reg [7:0] max
);

    always @(*) begin
        if (a < b) begin
            min = a;
            max = b;
        end else begin
            min = b;
            max = a;
        end
    end
endmodule
