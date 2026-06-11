module top_module (
    input  clk,
    input  x,
    output z
);

    reg q1, q2, q3;

    // Initialize flip-flops to 0 (and their inverses to 1) at time=0
    initial begin
        q1 = 1'b0;
        q2 = 1'b0;
        q3 = 1'b0;
    end
    
    always @(posedge clk) begin
        q1 <= x ^ q1;
        q2 <= x & ~q2;
        q3 <= x | ~q3;
    end

    // Output: NOR of all three Q outputs
    assign z = ~(q1 | q2 | q3);

endmodule
