module sr_to_jk_ff(input clk, input rst, input j, input k, output reg q, output q_bar);
    wire s, r;
    assign s = j & ~q;
    assign r = k & q;

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 0;
        else if (s && ~r)
            q <= 1;
        else if (~s && r)
            q <= 0;
        else if (~s && ~r)
            q <= q;
        else
            q <= 1'bx;
    end

    assign q_bar = ~q;
endmodule
