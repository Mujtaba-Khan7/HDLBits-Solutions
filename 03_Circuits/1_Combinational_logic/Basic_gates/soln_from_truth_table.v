// Combinational means the outputs of the circuit is a function (in the mathematics sense) of only its inputs. This means that
// for any given input value, there is only one possible output value. Thus, one way to describe the behaviour of a combinational
// function is to explicitly list what the output should be for every possible value of the inputs. 
module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    assign f = (~x3 & x2) | (x3 & x1);

endmodule
