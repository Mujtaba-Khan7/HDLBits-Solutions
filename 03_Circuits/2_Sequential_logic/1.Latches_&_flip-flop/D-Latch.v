module top_module (
    input d, 
    input ena,
    output reg q);
    always @(*)begin // (*) sensitivity list basically koi bhi i/p uah o/p change hoga toh this always block runs
        if(ena)
            q=d; // blocking assignments (=)
    end
endmodule

// 1. Latches (Level-Triggered)
// A latch is a level-triggered storage element. This means it continuously samples its input and changes its output for as long as the
// enable signal (ena) is active (high or low, depending on design).
// When ena is high, the latch is transparent—any changes on the input d instantly pass straight through to the output q like a wire.
// When ena goes low, the output freezes and holds the last captured state.

// 2. Flip-Flops (Edge-Triggered)
// A flip-flop is an edge-triggered storage element. It only samples its input and updates its output at the precise moment a clock signal
// transitions.
// The output q only changes on a rising edge (0 to 1) or a falling edge (1 to 0) of the clock (clk). At all other times, even if the 
// input d is fluctuating wildly, the flip-flop is completely "deaf" and safely stores its state.
