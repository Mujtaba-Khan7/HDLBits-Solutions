module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output reg [3:0] q
);

    // Triggered on every rising edge of the clock
    always @(posedge clk) begin
        if (reset) begin
            // Synchronous reset forces the count back to 0
            q <= 4'b0000;
        end else begin
            // Otherwise, increment the counter by 1
            q <= q + 1'b1;
        end
    end

endmodule
