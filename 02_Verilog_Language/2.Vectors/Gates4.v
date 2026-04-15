`default_nettype none
module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);

    assign out_and = &in; // ANDs all bits together
  // in[3] & in[2] & in[1] & in[0] can be written in short as &in and same for others as well
    assign out_or  = |in; // ORs all bits together
    assign out_xor = ^in; // XORs all bits together

endmodule
