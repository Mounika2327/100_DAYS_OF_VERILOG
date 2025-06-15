module reduction_operator (
    input  [3:0] in,
    output red_and,
    output red_or,
    output red_xor,
    output red_nand,
    output red_nor,
    output red_xnor
);

assign red_and  = &in;     // Reduction AND
assign red_or   = |in;     // Reduction OR
assign red_xor  = ^in;     // Reduction XOR
assign red_nand = ~&in;    // Reduction NAND
assign red_nor  = ~|in;    // Reduction NOR
assign red_xnor = ~^in;    // Reduction XNOR

endmodule
