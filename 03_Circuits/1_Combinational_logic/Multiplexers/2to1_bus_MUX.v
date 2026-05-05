module top_module (
	input [99:0] a,
	input [99:0] b,
	input sel,
	output [99:0] out
);

	assign out = sel ? b : a;
	
	// The following doesn't work. Why?
	// assign out = (sel & b) | (~sel & a);
  
  // The line assign out = (sel & b) | (~sel & a); fails because of how Verilog handles different bit widths:
  // sel is only 1 bit wide.
  // a and b are 100 bits wide.
  // When you do sel & b, Verilog automatically zero-extends sel to match the 100-bit width of b. This means it pads the
  // front with 99 zeros.
  // If sel = 1, it becomes 000...001.
  // When you AND that with b, you only keep the very last bit of b (bit 0) and force all other 99 bits to zero.
  // How to make the bitwise version work
  // If you really wanted to use bitwise logic, you would need to use Replication to turn the 1-bit sel into a 100-bit mask
  //  of all 1s or all 0s:

assign out = ({100{sel}} & b) | ({100{~sel}} & a);
  // This works because {100{sel}} creates 100 copies of the sel bit
endmodule
