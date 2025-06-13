module relational_operator (
    input  [3:0] a,
    input  [3:0] b,
    output eq,
    output neq,
    output lt,
    output gt,
    output lte,
    output gte
);

assign eq  = (a == b);   // Equal
assign neq = (a != b);   // Not equal
assign lt  = (a < b);    // Less than
assign gt  = (a > b);    // Greater than
assign lte = (a <= b);   // Less than or equal
assign gte = (a >= b);   // Greater than or equal

endmodule
