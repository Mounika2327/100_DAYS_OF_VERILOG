module tb_negedge_detector;

    reg clk;
    reg rst_n;
    reg signal;
    wire neg_edge;

    // Instantiate the DUT (Device Under Test)
    negedge_detector uut (
        .clk(clk),
        .rst_n(rst_n),
        .signal(signal),
        .neg_edge(neg_edge)
    );

    // Clock generation: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;

    // Stimulus
    initial begin
        // Initialize signals
        rst_n = 0;
        signal = 0;

        // Apply reset
        #10 rst_n = 1;

        // Apply input signal changes
        #10 signal = 1;
        #20 signal = 0; // Negative edge here
        #20 signal = 1;
        #20 signal = 0; // Another negative edge
        #20 signal = 1;
        #20 signal = 0; // Another negative edge

        #20 $finish;
    end

    // Monitor signals
    initial begin
        $monitor("Time=%0t | signal=%b | neg_edge=%b", $time, signal, neg_edge);
    end

endmodule
