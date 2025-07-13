module kmap_6var (
    input A, B, C, D, E, F,
    output F_out
);

assign F_out = (~A & ~B & C) | (A & B & F) | (C & D & ~E & F);

endmodule
