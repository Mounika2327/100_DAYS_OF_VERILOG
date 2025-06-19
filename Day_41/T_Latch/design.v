module tlatch(t, clk, q, q_bar);
  input t, clk;
  output reg q;
  output wire q_bar;

  always @(clk or t) begin
    if (clk) begin
      case (t)
        1'b0: q <= q;
        1'b1: q <= ~q;
      endcase
    end
  end

  assign q_bar = ~q;
endmodule
