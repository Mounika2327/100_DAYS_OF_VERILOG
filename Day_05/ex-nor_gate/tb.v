module tb_exnor_gate;

    // Declare testbench signals
    reg a;          // Test input a
    reg b;          // Test input b
    wire y;         // Test output y

    // Instantiate the EXNOR gate
    exnor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    // Test vectors (stimulus)
    initial begin
        // Display the result
        $monitor("Time = %0t | a = %b, b = %b, y = %b", $time, a, b, y);
        
        // Test cases
        a = 0; b = 0;  // EXNOR(0, 0) = 1
        #10;            // Wait for 10 time units
        a = 0; b = 1;  // EXNOR(0, 1) = 0
        #10;            // Wait for 10 time units
        a = 1; b = 0;  // EXNOR(1, 0) = 0
        #10;            // Wait for 10 time units
        a = 1; b = 1;  // EXNOR(1, 1) = 1
        #10;            // Wait for 10 time units
        
        // End the simulation
        $finish;
    end

endmodule
