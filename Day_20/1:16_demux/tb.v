`timescale 1ns / 1ps

module demux_1to16_tb;

  // Testbench signals
  reg din;
  reg [3:0] sel;
  wire [15:0] dout;

  // Instantiate the design under test (DUT)
  demux_1to16 dut (
    .din(din),
    .sel(sel),
    .dout(dout)
  );

  // Test process
  initial begin
    // Monitor changes
    $monitor("Time = %0t | din = %b | sel = %b | dout = %b", $time, din, sel, dout);

    // Test vector loop
    din = 1'b1; // Enable input
    for (integer i = 0; i < 16; i = i + 1) begin
      sel = i;
      #10; // wait 10ns
    end

    // Test with input off
    din = 1'b0;
    sel = 4'b1010;
    #10;

    $finish;
  end

endmodule
