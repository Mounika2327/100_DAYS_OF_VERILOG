module sr_to_t_ff(input clk, input rst, input t, output reg q, output q_bar);
    wire s, r;
    assign s = t & ~q;
    assign r = t & q;

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
