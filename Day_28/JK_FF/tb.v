module tb_jk_ff;
    reg clk, rst, j, k;
    wire q;

    jk_ff uut (.clk(clk), .rst(rst), .j(j), .k(k), .q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t j=%b k=%b rst=%b q=%b", $time, j, k, rst, q);
        rst = 1; j = 0; k = 0; #10;
        rst = 0;
        j = 0; k = 0; #10;
        j = 0; k = 1; #10;
        j = 1; k = 0; #10;
        j = 1; k = 1; #10;
        j = 0; k = 0; #10;
        $finish;
    end
endmodule
