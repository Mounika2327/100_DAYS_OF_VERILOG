module tb_sr_using_d_flipflop;
    reg clk, rst_n, S, R;
    wire Q;

    sr_using_d_flipflop uut (
        .clk(clk),
        .rst_n(rst_n),
        .S(S),
        .R(R),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock period: 10 units
    end

    initial begin
        $monitor("Time=%0t | clk=%b | rst_n=%b | S=%b | R=%b | Q=%b", $time, clk, rst_n, S, R, Q);

        rst_n = 0; S = 0; R = 0;
        #10 rst_n = 1;

        #10 S = 1; R = 0; // Set
        #10 S = 0; R = 0; // Hold
        #10 S = 0; R = 1; // Reset
        #10 S = 0; R = 0; // Hold
        #10 S = 1; R = 1; // Invalid (Q should hold in this logic)
        #10 $finish;
    end
endmodule
