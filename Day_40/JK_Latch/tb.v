module tb;
  reg j, k, clk;
  wire q, q_bar;

  jklatch uut (.j(j), .k(k), .clk(clk), .q(q), .q_bar(q_bar));

  initial begin
    $monitor("clk=%b, j=%b, k=%b => q=%b, q_bar=%b", clk, j, k, q, q_bar);

    clk = 0; j = 0; k = 0; #10;
    clk = 1; j = 0; k = 0; #10;

    clk = 0; j = 1; k = 0; #10;
    clk = 1; j = 1; k = 0; #10;

    clk = 0; j = 0; k = 1; #10;
    clk = 1; j = 0; k = 1; #10;

    clk = 0; j = 1; k = 1; #10;
    clk = 1; j = 1; k = 1; #10;

    clk = 0; j = 0; k = 0; #10;
    clk = 1; j = 0; k = 0; #10;

    $finish;
  end
endmodule
