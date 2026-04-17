module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    // Connect by position: just list them in order!
    mod_a inst(out1,out2,a,b,c,d);
    // we used this position method bcz by name method requires knowing the 
    // exact internal names like in1, in2, etc. and thats not given to us in Q but its given that
    // how sub-module is define internally i.e. module mod_a(output,output,input,input,input,input);
endmodule
