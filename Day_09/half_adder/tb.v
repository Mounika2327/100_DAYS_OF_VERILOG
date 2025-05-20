module half_adder_tb;

  // Declare inputs as reg
  reg A, B;
  
  // Declare outputs as wire
  wire Sum, Carry;
  
  // Instantiate the half adder
  half_adder uut (
    .A(A), 
    .B(B), 
    .Sum(Sum), 
    .Carry(Carry)
  );

  // Initial block to apply test vectors
  initial begin
    // Display the header of the results
    $display("Time | A | B | Sum | Carry");
    $display("---------------------------");

    // Apply test cases
    A = 0; B = 0; #10;
    $display("%4d | %b | %b |  %b  |  %b", $time, A, B, Sum, Carry);
    
    A = 0; B = 1; #10;
    $display("%4d | %b | %b |  %b  |  %b", $time, A, B, Sum, Carry);
    
    A = 1; B = 0; #10;
    $display("%4d | %b | %b |  %b  |  %b", $time, A, B, Sum, Carry);
    
    A = 1; B = 1; #10;
    $display("%4d | %b | %b |  %b  |  %b", $time, A, B, Sum, Carry);
    
    // Finish the simulation
    $finish;
  end

endmodule
