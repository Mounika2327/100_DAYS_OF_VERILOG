module tb_mux8x1_using_2x1;

reg [7:0] d;
reg [2:0] sel;
wire y;

mux8x1_using_2x1 uut (
    .d(d),
    .sel(sel),
    .y(y)
);

initial begin
    $monitor("d=%b sel=%b => y=%b", d, sel, y);

    d = 8'b10101101;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    $finish;
end

endmodule
