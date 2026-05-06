// In Verilog, the + operator is the addition operator. When you use it between two vectors
// (like a + b), it tells the computer to perform Binary Addition, just like you would do on paper.
module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
   
    // Concatenate cout and sum to create a 101-bit result
    assign {cout, sum} = a + b + cin;
endmodule
