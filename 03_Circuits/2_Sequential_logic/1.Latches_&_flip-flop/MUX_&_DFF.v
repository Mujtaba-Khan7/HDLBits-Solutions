module top_module (
    input clk,
    input L,
    input r_in,
    input q_in,
    output reg Q
);

    // Trigger on the positive edge of the clock
    always @(posedge clk) begin
        if (L) begin
            // When L is high, select r_in
            Q <= r_in;
        end else begin
            // When L is low, select q_in
            Q <= q_in;
        end
    end

endmodule
