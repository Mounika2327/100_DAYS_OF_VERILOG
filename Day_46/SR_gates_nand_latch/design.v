module sr_nand_latch (
    input  wire S,     // Set input (active low)
    input  wire R,     // Reset input (active low)
    output wire Q,     // Output
    output wire Qn     // Inverted output
);

    wire n1, n2;

    assign n1 = ~(S & n2);  // NAND gate 1
    assign n2 = ~(R & n1);  // NAND gate 2

    assign Q  = n1;
    assign Qn = n2;

endmodule
