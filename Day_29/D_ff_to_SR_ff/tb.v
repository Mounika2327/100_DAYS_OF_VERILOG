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
