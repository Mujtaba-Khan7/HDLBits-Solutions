// Module Name: top_module
// Description: This is a top-level module that instantiates 'mod_a'.
//              It demonstrates module hierarchy and port mapping.

module top_module ( input a,input b, output out ); 
                 // Input signal 'a' from the top-level
                 // Input signal 'b' from the top-level
                 // Output signal 'out' to the top-level
    /* * Instantiating module 'mod_a' with the instance name 'myinst'.
     * We use "Connection by Name" (.port_name(signal_name)) to ensure
     * wires are connected to the correct ports regardless of order.
     */
  mod_a myinst ( .in1(a), .in2(b),.out(out) );
                  // Connect top-level input 'a' to mod_a's 'in1'
                 // Connect top-level input 'b' to mod_a's 'in2'
                 // Connect top-level output 'out' to mod_a's 'out'  
endmodule
