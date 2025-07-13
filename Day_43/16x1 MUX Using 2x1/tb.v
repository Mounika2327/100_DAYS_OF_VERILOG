module tb_mux16x1;

reg [15:0] d;
reg [3:0] sel;
wire y;

mux16x1 uut (
    .d(d),
    .sel(sel),
    .y(y)
);

initial begin
    $monitor("d=%b sel=%b => y=%b", d, sel, y);

    d = 16'b1101001110101110;

    sel = 4'b0000; #10;
    sel = 4'b0001; #10;
    sel = 4'b0010; #10;
    sel = 4'b0011; #10;
    sel = 4'b0100; #10;
    sel = 4'b0101; #10;
    sel = 4'b0110; #10;
    sel = 4'b0111; #10;
    sel = 4'b1000; #10;
    sel = 4'b1001; #10;
    sel = 4'b1010; #10;
    sel = 4'b1011; #10;
    sel = 4'b1100; #10;
    sel = 4'b1101; #10;
    sel = 4'b1110; #10;
    sel = 4'b1111; #10;

    $finish;
end

endmodule
