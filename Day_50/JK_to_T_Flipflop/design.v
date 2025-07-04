module jk_to_t_ff(input clk, input rst, input t, output reg q, output q_bar);
    wire j, k;
    assign j = t;
    assign k = t;

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 0;
        else if (j && ~k)
            q <= 1;
        else if (~j && k)
            q <= 0;
        else if (j && k)
            q <= ~q;
        else
            q <= q;
    end

    assign q_bar = ~q;
endmodule
