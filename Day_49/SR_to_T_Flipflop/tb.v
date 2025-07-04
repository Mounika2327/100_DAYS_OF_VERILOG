module tb_sr_to_t_ff;
    reg clk, rst, t;
    wire q, q_bar;

    sr_to_t_ff uut (.clk(clk), .rst(rst), .t(t), .q(q), .q_bar(q_bar));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time=%0t | rst=%b t=%b | q=%b q_bar=%b", $time, rst, t, q, q_bar);

        rst = 1; t = 0; #10;
        rst = 0;

        t = 0; #10;
        t = 1; #10;
        t = 1; #10;
        t = 0; #10;

        t = 1; #10;
        t = 1; #10;
        t = 0; #10;

        $stop;
    end
endmodule
