`default_nettype none
module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    // Bitwise OR: result is 3 bits wide same as that of inputs
    assign out_or_bitwise = a | b;  // Bitwisre OR : |
    
    // Logical OR: result is 1 bit wide (True/False)
    // In logical if any of the value is high it will treat it as true , only if all bits are zero then low
    assign out_or_logical = a || b;  // Logical OR : ||
    
    // NOT: Using concatenation or part-select to arrange b then a
    assign out_not[5:3] = ~b;
    assign out_not[2:0] = ~a;
    
endmodule
