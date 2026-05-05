module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

    // Declare internal wires to connect the carries
    wire c1, c2, c3;

    // First bit: cin is 0 ; if not given anything
    fadd adder1 ( .a(x[0]), .b(y[0]), .cin(1'b0), .cout(c1), .sum(sum[0]) );
    
    // Middle bits: cin comes from the previous cout
    fadd adder2 ( .a(x[1]), .b(y[1]), .cin(c1),   .cout(c2), .sum(sum[1]) );
    fadd adder3 ( .a(x[2]), .b(y[2]), .cin(c2),   .cout(c3), .sum(sum[2]) );
    
    // Last bit: cout goes to sum[4]
    fadd adder4 ( .a(x[3]), .b(y[3]), .cin(c3),   .cout(sum[4]), .sum(sum[3]) );

endmodule

module fadd (
    input a, b, cin,
    output cout, sum );

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule
