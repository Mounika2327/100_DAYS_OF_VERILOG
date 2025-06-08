module tb_d_to_sr_flipflop;
    reg clk, rst_n, D;
    wire Q;

    d_to_sr_flipflop uut (
        .clk(clk),
        .rst_n(rst_n),
        .D(D),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock with 10 time unit period
    end

    initial begin
        $monitor("Time=%0t | clk=%b | rst_n=%b | D=%b | Q=%b", $time, clk, rst_n, D, Q);

        rst_n = 0; D = 0;
        #12 rst_n = 1;

        #10 D = 1;
        #10 D = 0;
        #10 D = 1;
        #10 D = 0;
        #10 $finish;
    end
endmodule
