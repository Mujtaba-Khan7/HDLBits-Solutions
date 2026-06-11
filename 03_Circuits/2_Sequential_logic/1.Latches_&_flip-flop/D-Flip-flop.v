module top_module (
    input clk,    // Clocks are used in sequential circuits
    input d,
    output reg q );//In Verilog, any signal assigned inside an always block must be declared as a reg type.

    always @(posedge clk) begin
            q <= d;
    end
    // Use a clocked always block
    //   copy d to q at every positive edge of clk
    //   Clocked always blocks should use non-blocking assignments

endmodule

// The Golden Rule: The output q will always copy whatever value is on d at the rising edge of clk, and it will lock that value in place until the next rising edge,
// completely ignoring any drama or fluctuations happening on d in between.

// assign is exclusively for combinational logic (continuous assignments).
// The assignment direction was backward; you want to copy the input d into the storage register q, not the other way around.
// Sequential blocks should always use non-blocking assignments (<=).
