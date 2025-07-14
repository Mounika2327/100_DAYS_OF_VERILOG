module tb_k_to_1_mux;

parameter K = 64;
parameter SEL_WIDTH = $clog2(K);

reg [K-1:0] d;
reg [SEL_WIDTH-1:0] sel;
wire y;

k_to_1_mux #(
    .K(K),
    .SEL_WIDTH(SEL_WIDTH)
) uut (
    .d(d),
    .sel(sel),
    .y(y)
);

initial begin
    $monitor("sel=%0d y=%b", sel, y);

    d = 64'b0001_0010_0011_0100_0101_0110_0111_1000_1001_1010_1011_1100_1101_1110_1111_0000
         << 32 |
         32'b0001_0010_0011_0100_0101_0110_0111_1000;

    sel = 0;  #10;
    sel = 1;  #10;
    sel = 15; #10;
    sel = 32; #10;
    sel = 47; #10;
    sel = 63; #10;

    $finish;
end

endmodule
