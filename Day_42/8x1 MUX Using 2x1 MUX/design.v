module mux2x1 (
    input d0, d1,
    input sel,
    output y
);
assign y = sel ? d1 : d0;
endmodule

module mux8x1_using_2x1 (
    input [7:0] d,
    input [2:0] sel,
    output y
);

wire y0, y1, y2, y3, y4, y5, y6;

mux2x1 m0 (.d0(d[0]), .d1(d[1]), .sel(sel[0]), .y(y0));
mux2x1 m1 (.d0(d[2]), .d1(d[3]), .sel(sel[0]), .y(y1));
mux2x1 m2 (.d0(d[4]), .d1(d[5]), .sel(sel[0]), .y(y2));
mux2x1 m3 (.d0(d[6]), .d1(d[7]), .sel(sel[0]), .y(y3));

mux2x1 m4 (.d0(y0), .d1(y1), .sel(sel[1]), .y(y4));
mux2x1 m5 (.d0(y2), .d1(y3), .sel(sel[1]), .y(y5));

mux2x1 m6 (.d0(y4), .d1(y5), .sel(sel[2]), .y(y));

endmodule
