module sr_latch_nor (
    input  wire S,   // Set input
    input  wire R,   // Reset input
    output wire Q,   // Output
    output wire Qn   // Complement of Output
);

    wire nq, nq_bar;

    assign Q  = ~(R | Qn);  // NOR gate for Q
    assign Qn = ~(S | Q);   // NOR gate for Qn

endmodule
