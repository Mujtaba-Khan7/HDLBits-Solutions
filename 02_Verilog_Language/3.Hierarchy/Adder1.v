Q link - https://hdlbits.01xz.net/wiki/Module_add
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire carry_out_low;
    
    add16 low_adder(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(carry_out_low)
    );
    
    add16 high_adder(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(carry_out_low),
        .sum(sum[31:16]),
        .cout()
    );

endmodule
