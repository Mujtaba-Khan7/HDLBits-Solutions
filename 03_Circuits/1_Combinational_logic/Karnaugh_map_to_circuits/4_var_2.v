// In the context of the Karnaugh map for Kmap3, d stands for "Don't Care." It means that for that specific combination of inputs, the 
// circuit designer doesn't care whether the output is a 0 or a 1. Take anything as per ur convinence This is a powerful tool for simplification.
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    // SOP
    assign out = a | ~b&c | b&~c&~d;
    // POS
    assign out = (a|~b)&(c|~d)&(a|c);

endmodule
