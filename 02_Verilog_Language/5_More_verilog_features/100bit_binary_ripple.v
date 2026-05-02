// In a ripple-carry adder, the "Ripple" logic describes how the Carry Out of one bit becomes the Carry In of the
// next bit. Think of it like a row of people doing a math problem: each person handles one digit, but they can't
// finish their work until the person to their right "hands over" the carry.
// The reason we call it "ripple" is also its biggest weakness. Because bit 99 has to wait for bit 98, which waits
// for bit 97, and so on, this circuit is slow. In real high-speed CPUs, engineers use a "Carry Lookahead Adder" (CLA)
// to calculate carries faster, but the ripple-carry adder is the fundamental starting point for understanding digital
// arithmetic.
module top_module( 
    input [99:0] a, b,
    input cin,
    output reg [99:0] cout,
    output reg [99:0] sum );

    integer i;

    always @(*) begin
        // First bit is special because it uses the global cin
        sum[0] = a[0] ^ b[0] ^ cin;
        cout[0] = (a[0] & b[0]) | (a[0] & cin) | (b[0] & cin);

        // Loop for bits 1 through 99
        for (i = 1; i < 100; i = i + 1) begin
            sum[i] = a[i] ^ b[i] ^ cout[i-1];
            cout[i] = (a[i] & b[i]) | (a[i] & cout[i-1]) | (b[i] & cout[i-1]);
        end
    end

endmodule
