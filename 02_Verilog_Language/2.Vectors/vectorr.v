// Vector Reversal: Verilog does not allow reversing a bus using in[0:7],as it is defined as in[7:0].
// Reversal must be done either bit-by-bit using concatenation {} or by using a for loop
  module top_module( 
    input [7:0] in,
    output [7:0] out
);
    assign out = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};
endmodule
