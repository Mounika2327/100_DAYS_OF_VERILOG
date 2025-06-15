module case_equality (
    input  [3:0] a,
    input  [3:0] b,
    output eq_case,
    output neq_case
);

assign eq_case  = (a === b);   // True if a equals b including x/z
assign neq_case = (a !== b);   // True if a not equal to b including x/z

endmodule
