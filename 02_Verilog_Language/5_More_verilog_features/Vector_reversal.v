module top_module( 
    input [99:0] in,
  output reg [99:0] out // Must be reg to use in always block
);
    integer i; // In standard Verilog-2001 (which is what HDLBits uses), you actually cannot declare an integer inside 
              // an always block .It must be declared at the module level (outside the block).
    always @(*) begin
        for(i =0; i<100;i++) begin
            out[i] = in[99-i];
        end
    end
	
endmodule
