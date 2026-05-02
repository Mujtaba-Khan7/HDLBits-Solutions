module top_module (
    input [3:0] in,
    output reg [1:0] pos  );

    always @(*) begin
        case(1'b1)                 // Look for the first '1'
            in[0]: pos = 2'd0;     // If bit 0 is high, pos is 0
            in[1]: pos = 2'd1;     // If bit 1 is high, pos is 1
            in[2]: pos = 2'd2;     // If bit 2 is high, pos is 2
            in[3]: pos = 2'd3;     // If bit 3 is high, pos is 3
            default: pos = 2'd0;   // If no bits are high
        endcase
    end

endmodule
