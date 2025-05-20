`timescale 1ns / 1ps

module or_gate_tb;
    // Testbench signals
    reg a, b;
    wire y;

    // Instantiate the OR gate module
    or_gate uut (
        .a(a), 
        .b(b), 
        .y(y)
    );

    // Test sequence
    initial begin
        $monitor("Time = %0t | a = %b, b = %b, y = %b", $time, a, b, y);
        
        // Apply test cases
        a = 0; b = 0; #10; // Test case 1
        a = 0; b = 1; #10; // Test case 2
        a = 1; b = 0; #10; // Test case 3
        a = 1; b = 1; #10; // Test case 4
        
        $finish; // End simulation
    end
endmodule
