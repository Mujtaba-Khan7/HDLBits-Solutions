//  The replication operator allows repeating a vector and concatenating them together : {num{vector}}
// This replicates vector by num times. num must be a constant. Both sets of braces are required.
// Examples:
// {5{1'b1}}           // 5'b11111 (or 5'd31 or 5'h1f)
// {2{a,b,c}}          // The same as {a,b,c,a,b,c}
// {3'd5, {2{3'd6}}}   // 9'b101_110_110. It's a concatenation of 101 with
//                     // the second vector, which is two copies of 3'b110.

// One common place to see a replication operator is when sign-extending a smaller number to a larger one,
// while preserving its signed value. This is done by replicating the sign bit (the most significant bit) of the smaller number
// to the left. For example, sign-extending
// 4'b0101 (5) to 8 bits results in 8'b00000101 (5), while sign-extending 4'b1101 (-3) to 8 bits results in 8'b11111101 (-3).
module top_module (
    input [7:0] in,
    output [31:0] out );
    assign out = {{24{in[7]}},in};
endmodule
// When you use a replication operator inside a concatenation, the replication part {24{in[7]}} must be
// treated as its own "block."
