// tri_state_buffer.v
module tri_state_buffer (
    input  wire       data_in,
    input  wire       enable,
    output wire       data_out
);

    assign data_out = (enable) ? data_in : 1'bz; // 'z' represents high impedance

endmodule
