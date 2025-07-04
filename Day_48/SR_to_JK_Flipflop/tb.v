module tb_sr_to_jk_ff;
    reg clk, rst, j, k;
    wire q, q_bar;

    sr_to_jk_ff uut (.clk(clk), .rst(rst), .j(j), .k(k), .q(q), .q_bar(q_bar));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time=%0t | rst=%b j=%b k=%b | q=%b q_bar=%b", $time, rst, j, k, q, q_bar);

        rst = 1; j = 0; k = 0; #10;
        rst = 0;

        j = 0; k = 0; #10;
        j = 0; k = 1; #10;
        j = 1; k = 0; #10;
        j = 1; k = 1; #10;

        j = 0; k = 0; #10;
        j = 1; k = 0; #10;
        j = 0; k = 1; #10;
        j = 1; k = 1; #10;

        $stop;
    end
endmodule
