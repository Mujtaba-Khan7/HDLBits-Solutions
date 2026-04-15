`default_nettype none
module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); 
   assign outv = vec;
    assign o0 = vec[0];
    assign o1 = vec[1];
    assign o2 = vec[2];
// Decimal 5 on the graph = Binary 3'b101
// This means o2=1, o1=0, o0=1
endmodule
