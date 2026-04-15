// Declaring Vectors
// In Verilog, the syntax wire [MSB:LSB] name is used to declare a vector (a multi-bit bus).

// 1. wire [99:0] vecThis is a standard declaration for a 100-bit wide bus.Total Bits: 100 bits.
// Indexing: The bits are indexed from 0 up to 99.Bit Order: This uses little-endian indexing, 
// where the Most Significant Bit (MSB) is 99 and the Least Significant Bit (LSB) is 0.
// Usage: If you wanted to access the first bit, you would use vec[0]; for the last bit, 
// vec[99].

//2. wire [99:9] vec2This is a less common but valid declaration for a 91-bit wide bus.
// Total Bits: 91 bits (calculated as 99 - 9 + 1).Indexing: The bits are indexed starting from 9 up to 99.
// Bit Order: Like the first example, it is still "Big-Endian" in style because the higher number is on the left,
// but the "starting" point is offset.
// Usage: * vec2[9] is the LSB (the rightmost bit).vec2[99] is the MSB (the leftmost bit).
// Crucial Note: Attempting to access vec2[0] would result in a compilation error because bit 0 does not exist in this specific vector's range.

// type [upper:lower] vector_name;

// type specifies the datatype of the vector. This is usually wire or reg. If you are declaring a input or output port, the type can additionally include the port type (e.g., input or output) as well. Some examples:

// wire [7:0] w;         // 8-bit wire
// reg  [4:1] x;         // 4-bit reg , In Verilog, reg stands for register. 
                         //             It is a data type that represents a data storage element.
// output reg [0:0] y;   // 1-bit reg that is also an output port (this is still a vector)
// input wire [3:-2] z;  // 6-bit wire input (negative ranges are allowed)
// output [3:0] a;       // 4-bit output wire. Type is 'wire' unless specified otherwise.
// wire [0:7] b;         // 8-bit wire where b[0] is the most-significant bit.

`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    assign out_hi = in[15:8];
    assign out_lo = in[7:0];
endmodule
//A combinational circuit that splits an input half-word (16 bits, [15:0] ) into lower [7:0] and upper [15:8] bytes.




