module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    // using SOP 
    assign out = ~b&~c | ~a&~d | c&d&(a|b) ;

  
    // using POS
    // assign out = (~a | ~b | c) &         
    //              (~a | ~c | d) &         
    //              (a | ~b | c | ~d) &    
    //              (a | b | ~c | ~d);      
  
endmodule
