module top_module (
    input clk,
    input reset,            // Synchronous reset
    input [7:0] d,
    output reg [7:0] q
);
    // Trigger ONLY on the positive edge of the clock
    always @(posedge clk)begin
        if(reset)begin
          // Synchronous reset: Clear the output to 0 when reset is high
        q<=8'b0;
        end
        else begin
            // Normal operation: Capture the input data
            q<=d;
        end
    end
endmodule
