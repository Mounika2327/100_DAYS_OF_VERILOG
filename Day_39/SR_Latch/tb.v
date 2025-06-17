module tb;
  reg s, r, enable;
  wire q_bef, q_next;

  srlatch u1(.s(s), .r(r), .q_bef(q_bef), .q_next(q_next), .enable(enable));

  initial begin
    $monitor(" enable=%0b, s=%0b, r=%0b, q_bef=%0b, q_next=%0b", enable, s, r, q_bef, q_next);

    enable = 1; s = 0; r = 1; #10;
    enable = 1; s = 1; r = 0; #10;
    enable = 1; s = 1; r = 1; #10;
    enable = 0; s = 0; r = 0; #10;

    $finish;
  end
endmodule
