// The Hardware Concept
// In a standard 32-bit adder, the upper 16 bits have to wait around for the lower 16 bits to finish
// calculating the carry-out. That wait time is the bottleneck.
// To bypass this, the carry-select architecture speculates:
// It calculates the upper 16 bits twice simultaneously.
// One adder assumes the carry-in from the lower half will be 0.
// The other adder assumes the carry-in from the lower half will be 1.
// Once the lower 16-bit adder actually finishes, it produces the real carry-out.
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire signal;// Carry-out from low adder
    wire[15:0] sum0,sum1;// Temporary wires for high adder candidates
    
    // Lower 16 bits
    add16 low_adder(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(signal)
    );
    // High 16 bits assuming carry-in is 0
    add16 high1_adder(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .sum(sum0),// Drive the temporary wire
        .cout()
    );
    // High 16 bits assuming carry-in is 1
    add16 high2_adder(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .sum(sum1),// Drive the other temporary wire
        .cout()
    );
    
    // The Multiplexer: Select the correct candidate based on 'signal'
    assign sum[31:16] = signal ? sum1 : sum0 ;
    

endmodule
