module top_module (
    input clk,
    input w, R, E, L,
    output reg Q // Declared as reg to allow assignment inside the always block
);

    always @(posedge clk) begin
        // The Mux controlled by L chooses between:
        //   - R (if L is high)
        //   - The output of the E-mux (if L is low)
        // The Mux controlled by E chooses between w (if E is high) and Q (if E is low)
        
        Q <= L ? R : (E ? w : Q);
    end

endmodule
