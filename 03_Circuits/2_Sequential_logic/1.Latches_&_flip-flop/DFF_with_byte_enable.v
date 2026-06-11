module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output reg [15:0] q // Declared as reg for procedural assignment
);

    always @(posedge clk) begin
      if (~resetn)  // Active-low synchronous reset(~)
            q <= 16'b0;
       else begin
            // Check upper byte independently
            if (byteena[1]) begin
                q[15:8] <= d[15:8];
            end
            
            // Check lower byte independently
            if (byteena[0]) begin
                q[7:0] <= d[7:0];
            end
        end
    end

endmodule
