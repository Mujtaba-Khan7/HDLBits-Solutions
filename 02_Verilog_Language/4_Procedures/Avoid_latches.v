module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 

  // You cannot  write your "default assignments" outside of the always block because 
  //  in Verilog, assignments to a reg must happen inside a procedural block.
    
always @(*) begin
    // 1. Set all defaults first to avoid latches
    left = 1'b0; right = 1'b0; up = 1'b0; down = 1'b0;
    
    // 2. Override only the one that matches
    case(scancode)
        16'he06b : left  = 1'b1;
        16'he072 : down  = 1'b1;
        16'he074 : right = 1'b1;
        16'he075 : up    = 1'b1;
        // No default case needed because we set defaults on Line 11!
    endcase
end
endmodule
