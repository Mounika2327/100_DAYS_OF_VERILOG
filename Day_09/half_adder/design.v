// Code your design here
module half_adder(
    input A, B,
    output Sum, Carry
);
  assign Sum = A ^ B;        // Sum = A XOR B
  assign Carry = A & B;      // Carry = A AND B
endmodule
