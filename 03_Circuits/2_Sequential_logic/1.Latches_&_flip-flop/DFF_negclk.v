module top_module (
    input clk,
    input reset,
    input [7:0] d,
    output reg [7:0] q
);
   
    // Trigger ONLY on the negative edge of the clock
    always @(negedge clk)begin
        if(reset)begin
          // Synchronous reset: Clear the output to 0x34 when reset is high
        q<=8'h34;
        end
        else begin
            // Normal operation: Capture the input data
            q<=d;
        end
    end
endmodule

// Synchronous Behavior: Notice that reset is not included in the always @(...) sensitivity list.
//   This means the circuit completely ignores the reset line until the exact moment clk goes from 1 to 0 (negedge clk).

// Priority: The if (reset) statement ensures that checking for a reset takes priority over loading new data (q <= d)
