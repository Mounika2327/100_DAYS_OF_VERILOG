module k_to_1_mux #(
    parameter K = 64,
    parameter SEL_WIDTH = $clog2(K)
)(
    input  [K-1:0] d,
    input  [SEL_WIDTH-1:0] sel,
    output y
);

assign y = d[sel];

endmodule
