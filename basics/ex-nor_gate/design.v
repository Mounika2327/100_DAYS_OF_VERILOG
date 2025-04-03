module exnor_gate (
    input wire a,  // Input a
    input wire b,  // Input b
    output wire y  // Output y
);

    // EXNOR operation (XNOR = NOT XOR)
    assign y = ~(a ^ b);

endmodule
