module full_subtractor (
    input A,       // Minuend
    input B,       // Subtrahend
    input Bin,     // Borrow input
    output D,      // Difference
    output Bout    // Borrow output
);

    // Difference is computed as A - B - Bin
    assign D = A ^ B ^ Bin;  // XOR operation for Difference
    
    // Borrow output is generated based on the logic
    assign Bout = (~A & (B | Bin)) | (~B & Bin);

endmodule
