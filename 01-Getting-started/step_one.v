// 'module' defines the start of a hardware block. 
// 'top_module' is the name of this specific block.
 module top_module(output one); 

// 'output' tells the hardware that data will flow OUT of this port.
// 'one' is the name we've given to this specific output wire.
    
 assign one = 1'b1;
    
  // 'assign' creates a continuous connection .
  // It means the left side ('one') will always equal the right side ('1'b1').
  // 1'b1 is a constant: 1-bit space, b-binary format, with a value of 1 (high).
   
 endmodule
// 'endmodule' signals the end of the hardware description for this block.
