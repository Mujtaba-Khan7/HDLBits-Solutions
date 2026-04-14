module top_module( 
    input a, 
    input b, 
    output out );
  assign out = ~(a^b); // XOR OPERATOR : ^
  // WE CAN ALSO HAVE USE THE FORNULA out = a&b | ~a&~b;
endmodule
