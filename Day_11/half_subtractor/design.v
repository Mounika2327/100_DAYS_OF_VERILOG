module half_subtractor (
    input A,          // Minuend (input bit)
    input B,          // Subtrahend (input bit)
    output Diff,      // Difference output
    output Borr       // Borrow output
);

    assign Diff = A ^ B;           // Difference is A XOR B
    assign Borr = ~A & B;          // Borrow is A' AND B

endmodule
