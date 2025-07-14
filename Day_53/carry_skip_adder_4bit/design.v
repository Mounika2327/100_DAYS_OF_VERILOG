module carry_skip_adder_4bit (
    input  [3:0] A, B,
    input        Cin,
    output [3:0] S,
    output       Cout
);

wire [3:0] P, G, C;
wire P_group, skip_carry;

assign P = A ^ B;
assign G = A & B;

assign C[0] = Cin;
assign C[1] = G[0] | (P[0] & C[0]);
assign C[2] = G[1] | (P[1] & C[1]);
assign C[3] = G[2] | (P[2] & C[2]);

assign S[0] = P[0] ^ C[0];
assign S[1] = P[1] ^ C[1];
assign S[2] = P[2] ^ C[2];
assign S[3] = P[3] ^ C[3];

assign P_group = P[0] & P[1] & P[2] & P[3];
assign skip_carry = P_group ? Cin : G[3] | (P[3] & C[3]);

assign Cout = skip_carry;

endmodule
