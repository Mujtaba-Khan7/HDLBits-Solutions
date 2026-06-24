module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output reg [3:0] q
);

    always @(posedge clk) begin
        if (reset) begin
            q <= 4'b0000;        // Reset to 0
        end else if (q == 4'd9) begin
            q <= 4'b0000;        // Wrap around to 0 after reaching 9
        end else begin
            q <= q + 1'b1;       // Increment counting
        end
    end

endmodule
