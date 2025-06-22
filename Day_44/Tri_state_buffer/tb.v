// tri_state_buffer_tb.v
`timescale 1ns / 1ps

module tri_state_buffer_tb;

    reg  data_in;
    reg  enable;
    wire data_out;

    // Instantiate the tri-state buffer
    tri_state_buffer uut (
        .data_in(data_in),
        .enable(enable),
        .data_out(data_out)
    );

    initial begin
        $display("Time\tEnable\tData In\tData Out");
        $monitor("%g\t%b\t%b\t%b", $time, enable, data_in, data_out);

        // Test Case 1: Enable = 0 => High Impedance (Z)
        data_in = 1'b1; enable = 1'b0; #10;

        // Test Case 2: Enable = 1 => Output = Data In (1)
        data_in = 1'b1; enable = 1'b1; #10;

        // Test Case 3: Change Data In to 0 while enabled
        data_in = 1'b0; enable = 1'b1; #10;

        // Test Case 4: Enable = 0 => Output = Z again
        data_in = 1'b0; enable = 1'b0; #10;

        $finish;
    end

endmodule
