module mux2x1 (
    input d0, d1,
    input sel,
    output y
);
assign y = sel ? d1 : d0;
endmodule

module mux16x1 (
    input [15:0] d,
    input [3:0] sel,
    output y
);

wire w1[7:0];
wire w2[3:0];
wire w3[1:0];
wire w4;

mux2x1 m0  (.d0(d[0]),  .d1(d[1]),  .sel(sel[0]), .y(w1[0]));
mux2x1 m1  (.d0(d[2]),  .d1(d[3]),  .sel(sel[0]), .y(w1[1]));
mux2x1 m2  (.d0(d[4]),  .d1(d[5]),  .sel(sel[0]), .y(w1[2]));
mux2x1 m3  (.d0(d[6]),  .d1(d[7]),  .sel(sel[0]), .y(w1[3]));
mux2x1 m4  (.d0(d[8]),  .d1(d[9]),  .sel(sel[0]), .y(w1[4]));
mux2x1 m5  (.d0(d[10]), .d1(d[11]), .sel(sel[0]), .y(w1[5]));
mux2x1 m6  (.d0(d[12]), .d1(d[13]), .sel(sel[0]), .y(w1[6]));
mux2x1 m7  (.d0(d[14]), .d1(d[15]), .sel(sel[0]), .y(w1[7]));

mux2x1 m8  (.d0(w1[0]), .d1(w1[1]), .sel(sel[1]), .y(w2[0]));
mux2x1 m9  (.d0(w1[2]), .d1(w1[3]), .sel(sel[1]), .y(w2[1]));
mux2x1 m10 (.d0(w1[4]), .d1(w1[5]), .sel(sel[1]), .y(w2[2]));
mux2x1 m11 (.d0(w1[6]), .d1(w1[7]), .sel(sel[1]), .y(w2[3]));

mux2x1 m12 (.d0(w2[0]), .d1(w2[1]), .sel(sel[2]), .y(w3[0]));
mux2x1 m13 (.d0(w2[2]), .d1(w2[3]), .sel(sel[2]), .y(w3[1]));

mux2x1 m14 (.d0(w3[0]), .d1(w3[1]), .sel(sel[3]), .y(w4));

assign y = w4;

endmodule
