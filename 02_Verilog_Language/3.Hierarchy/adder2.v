module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire carry_out_low;
    
    // Lower 16 bits
    add16 low_adder(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(carry_out_low)
    );
    
    // Upper 16 bits
    add16 high_adder(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(carry_out_low),
        .sum(sum[31:16]),
        .cout() 
    );
    
endmodule

module add1 ( 
    input a, 
    input b, 
    input cin,   
    output sum, 
    output cout 
);
    // Logic for a 1-bit full adder:
    
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (cin & (a ^ b));
  // cout = (a&b) | (b&cin) | (a&cin); would also work

endmodule
