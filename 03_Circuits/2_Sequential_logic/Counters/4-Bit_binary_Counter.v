// A counter is a digital circuit designed to step through a predetermined sequence of states (like counting 0, 1, 2, 3 \dots) upon receiving clock pulses.
// How it works: It is constructed by connecting multiple flip-flops together in a chain, alongside combinational logic gates that dictate what the next count should be.
// The number of flip-flops determines how high it can count (N flip-flops can represent 2^N states).
module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output [3:0] q);
    always @(posedge clk) begin
      if(reset)   // Since the reset is synchronous, reset is not included in the sensitivity list. The block only triggers on the clock edge.
            q<=4'b0000;
        else
            q<=q+1'b1;
    end

endmodule
// Because a 4-bit variable naturally overflows from 15 (4'b1111) back to 0 (4'b0000), we don't need any special logic to handle
// the rollover—we just let it increment!
