module full_adder (
    input A,          // First input bit
    input B,          // Second input bit
    input Cin,        // Carry input
    output Sum,       // Sum output
    output Cout       // Carry output
);

    assign Sum = A ^ B ^ Cin;    // Sum is the XOR of A, B, and Cin
    assign Cout = (A & B) | (B & Cin) | (Cin & A); // Carry out logic

endmodule
