// Design code for SR Latch
module srlatch(s, r, q_bef, q_next, enable);
  input s, r, enable;
  output reg q_bef;
  output wire q_next;

  always @(s or r or enable) begin
    if (enable == 0)
      q_bef <= q_bef;
    else
      case ({s, r})
        2'b01: q_bef <= 1'b0;
        2'b10: q_bef <= 1'b1;
        2'b11: q_bef <= 1'bx;
        2'b00: q_bef <= q_bef;
      endcase
  end

  assign q_next = ~q_bef;
endmodule
