module jklatch(j, k, clk, q, q_bar);
  input j, k, clk;
  output reg q;
  output wire q_bar;

  always @(clk or j or k) begin
    if (clk) begin
      case ({j, k})
        2'b00: q <= q;
        2'b01: q <= 0;
        2'b10: q <= 1;
        2'b11: q <= ~q;
      endcase
    end
  end

  assign q_bar = ~q;
endmodule
