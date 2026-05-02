module top_module( 
    input [254:0] in,
  output reg[7:0] out ); // out must be reg because it's assigned in always block
    integer i;
    always @(*) begin
        out = 8'd0; // Initialize count to zero at the start of every evaluation
        for(i=0;i<255;i=i+1)begin
            if(in[i] == 1'b1) begin
                out=out+1;
            end
        end
    end
endmodule
