module sr_using_d_flipflop (
    input clk,
    input rst_n,
    input S,
    input R,
    output reg Q
);
    wire D;

    assign D = S | (~R & Q); // Derived D logic to mimic SR behavior

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            Q <= 0;
        else
            Q <= D;
    end
endmodule
