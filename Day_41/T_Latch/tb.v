module tb;
  reg t, clk;
  wire q, q_bar;

  tlatch uut (.t(t), .clk(clk), .q(q), .q_bar(q_bar));

  initial begin
    $monitor("clk=%b, t=%b => q=%b, q_bar=%b", clk, t, q, q_bar);

    clk = 0; t = 0; #10;
    clk = 1; t = 0; #10;

    clk = 0; t = 1; #10;
    clk = 1; t = 1; #10;

    clk = 0; t = 1; #10;
    clk = 1; t = 1; #10;

    clk = 0; t = 0; #10;
    clk = 1; t = 0; #10;

    $finish;
  end
endmodule
