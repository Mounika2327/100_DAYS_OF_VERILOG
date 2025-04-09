module demux1to4_tb;

    reg d;              // Data input
    reg [1:0] sel;      // 2-bit selection signal
    wire y0, y1, y2, y3;  // 4 output wires
    
    // Instantiate the 1:4 Demux
    demux1to4 uut (
        .d(d),
        .sel(sel),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
    );

    // Test sequence
    initial begin
        // Monitor the output
        $monitor("Time: %0t | d = %b | sel = %b | y0 = %b, y1 = %b, y2 = %b, y3 = %b", 
                 $time, d, sel, y0, y1, y2, y3);
        
        // Test case 1
        d = 1; sel = 2'b00;  // Should select y0
        #10;
        
        // Test case 2
        d = 1; sel = 2'b01;  // Should select y1
        #10;
        
        // Test case 3
        d = 1; sel = 2'b10;  // Should select y2
        #10;
        
        // Test case 4
        d = 1; sel = 2'b11;  // Should select y3
        #10;
        
        // Test case 5 - Changing the input signal while keeping selection
        d = 0; sel = 2'b00;  // Should select y0 with value 0
        #10;

        // End simulation
        $finish;
    end

endmodule
