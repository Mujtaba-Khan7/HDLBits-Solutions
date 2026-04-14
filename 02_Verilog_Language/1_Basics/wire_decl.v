`default_nettype none

// What does `default_nettype none mean?
// In Verilog, if you accidentally use a variable name that you haven't declared (like a typo), the compiler 
//is often "helpful" and automatically creates a 1-bit wire for you. This is called an implicit net.
// The Danger: If you have a typo (e.g., you type assign out = onne | two; instead of one), the compiler 
//will just create a new wire called onne, connect it to nothing, and your circuit will fail silently. 
//You'll spend hours wondering why your logic is wrong when it was just a misspelling.
// The Solution: By adding `default_nettype none, you are telling the compiler:
//"Stop helping me. If I don't explicitly declare a wire, throw an error."
// Pro-Tip: Using this is a "best practice" in professional hardware engineering because 
//it catches typos instantly during compilation.

module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
wire one; // I m declaring a wire. If i wanted i could i have directly assign the value here itself,eg. one= a&b
wire two;
assign one = a&b;
assign two = c&d;   
assign out = one | two ;
assign out_n = ~(one | two) ;
endmodule
