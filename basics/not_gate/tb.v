module tb_not_gate;

    // Declare testbench signals
    reg a;          // Test input a
    wire y;         // Test output y

    // Instantiate the NOT gate
    not_gate uut (
        .a(a),
        .y(y)
    );

    // Test vectors (stimulus)
    initial begin
        // Display the result
        $monitor("Time = %0t | a = %b, y = %b", $time, a, y);
        
        // Test cases
        a = 0;  // NOT(0) = 1
        #10;     // Wait for 10 time units
        a = 1;  // NOT(1) = 0
        #10;     // Wait for 10 time units
        
        // End the simulation
        $finish;
    end

endmodule
