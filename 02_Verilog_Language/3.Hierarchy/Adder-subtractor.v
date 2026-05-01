// An adder-subtractor can be built from an adder by optionally negating one of the inputs, which is equivalent to
// inverting the input then adding 1. The net result is circuit that can do two operations: (a + b + 0) and(a + ~b + 1).
module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] b_xor_sub;
    wire carry_out_low;
    
    // 1. Create the conditional inversion for B
    // We XOR every bit of B with the 'sub' signal
    assign b_xor_sub = b ^ {32{sub}};
    
    // 2. Instantiate the lower 16-bit adder
    add16 low_adder(
        .a(a[15:0]),
        .b(b_xor_sub[15:0]),
        .cin(sub),           // sub acts as the +1 for subtraction
        .sum(sum[15:0]),
        .cout(carry_out_low)
    );
    
    // 3. Instantiate the upper 16-bit adder
    add16 high_adder(
        .a(a[31:16]),
        .b(b_xor_sub[31:16]),
        .cin(carry_out_low),  // Ripple the carry from the lower half
        .sum(sum[31:16]),
        .cout()               // Final carry-out is not used here
    );

endmodule

// XOR for Inversion: When the sub signal is 1, we need to invert B. When sub is 0, B should stay the same.
// An XOR gate is perfect for this: B^1 = ~B and B^0 = B 
// The "+1": The sub signal also acts as the initial carry-in (cin) to the first adder. 
// When subtracting, sub is 1, providing that extra +1 needed for 2's complement.
