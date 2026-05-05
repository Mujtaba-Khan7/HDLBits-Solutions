// A half adder adds two bits (with no carry-in) and produces a sum and carry-out.
module top_module (
    input a, b,
    output cout, sum );

    assign sum = a ^ b;  
    assign cout = a & b; 

endmodule

//A full adder adds three bits (including carry-in) and produces a sum and carry-out.
module top_module( 
    input a, b, cin,
    output cout, sum );
    
    assign sum = a ^ b ^ cin;
    assign cout = (a&b) | (cin&(a^b)) ;

endmodule
