module concat_replicate (
    input  [3:0] a,
    input  [1:0] b,
    output [5:0] concat_out,
    output [7:0] replicate_a,
    output [5:0] replicate_b
);

// Concatenation: {a[3:0], b[1:0]} => 6 bits
assign concat_out = {a, b};

// Replication: repeat 'a' 2 times -> 8 bits
assign replicate_a = {2{a}};  // a,a

// Replication: repeat 'b' 3 times -> 6 bits
assign replicate_b = {3{b}};  // b,b,b

endmodule
