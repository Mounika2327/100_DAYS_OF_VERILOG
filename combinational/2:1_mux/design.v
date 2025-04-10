// 2:1 MUX RTL
module mux2to1 (
    input wire a,       // Input 0
    input wire b,       // Input 1
    input wire sel,     // Select line
    output wire y       // Output
);

assign y = (sel == 1'b0) ? a : b;

endmodule
