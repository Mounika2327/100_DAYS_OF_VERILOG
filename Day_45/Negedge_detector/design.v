module negedge_detector (
    input  wire clk,      // Clock input
    input  wire rst_n,    // Active low reset
    input  wire signal,   // Input signal to monitor
    output reg  neg_edge  // Output goes high when a negative edge is detected
);

    reg signal_d; // Delayed version of the input signal

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            signal_d <= 1'b0;
            neg_edge <= 1'b0;
        end else begin
            signal_d <= signal; // Store previous signal value
            if (signal_d == 1'b1 && signal == 1'b0) // 1 to 0 transition
                neg_edge <= 1'b1;
            else
                neg_edge <= 1'b0;
        end
    end

endmodule
