// The core difference between synchronous and asynchronous behavior in sequential circuits (like flip-flops) comes down to
// when an input signal is allowed to affect the output.

// 1. Synchronous Behavior
// In a synchronous circuit, inputs are only sampled and allowed to change the output at a specific moment defined by the
// clock—usually the rising edge (posedge) or falling edge (negedge) of the clock signal.

// The Trigger: The clock edge.
// What happens: If an input (like reset or data d) changes between clock edges, the flip-flop completely ignores it.
// The circuit waits until the next active clock edge arrives to check the status of that input and update the output.

// Verilog Syntax: The input is checked inside the always block but is not included in the sensitivity list.

// 2. Asynchronous Behavior
// In an asynchronous circuit, the input can change the output immediately, at any time, completely independent of what
// the clock is doing.

// The Trigger: The input signal itself.
// What happens: The moment an asynchronous input (like an asynchronous reset areset) becomes active, the output updates instantly.
// It doesn't matter if the clock is high, low, or in the middle of a steady state.
// Verilog Syntax: The input must be included in the always block's sensitivity list alongside the clock.

module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);
    always @(posedge clk or posedge areset) begin 
    if (areset) // Triggered immediately when areset goes high
        q <= 8'b0;
    else
        q <= d; // Triggered on the clock edge if areset is low
end
endmodule
