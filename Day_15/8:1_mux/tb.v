module mux8to1_tb;

    reg [7:0] d;          // 8-bit data input
    reg [2:0] sel;        // 3-bit selection signal
    wire y;               // Output of MUX
    
    // Instantiate the 8:1 MUX
    mux8to1 uut (
        .d(d),
        .sel(sel),
        .y(y)
    );
    
    // Test sequence
    initial begin
        // Monitor the output
        $monitor("Time: %0t | d = %b | sel = %b | y = %b", $time, d, sel, y);
        
        // Apply test cases
        // Test case 1
        d = 8'b10101010; sel = 3'b000;  // Select d[0]
        #10;
        // Test case 2
        d = 8'b10101010; sel = 3'b001;  // Select d[1]
        #10;
        // Test case 3
        d = 8'b10101010; sel = 3'b010;  // Select d[2]
        #10;
        // Test case 4
        d = 8'b10101010; sel = 3'b011;  // Select d[3]
        #10;
        // Test case 5
        d = 8'b10101010; sel = 3'b100;  // Select d[4]
        #10;
        // Test case 6
        d = 8'b10101010; sel = 3'b101;  // Select d[5]
        #10;
        // Test case 7
        d = 8'b10101010; sel = 3'b110;  // Select d[6]
        #10;
        // Test case 8
        d = 8'b10101010; sel = 3'b111;  // Select d[7]
        #10;
        
        // End simulation
        $finish;
    end
    
endmodule
