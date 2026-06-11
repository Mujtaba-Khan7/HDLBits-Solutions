module top_module (
    input clk,
    input in, 
    output reg out);
 wire d;
    assign d = in^out; // If i want i can directlu substitute the value of d in out no need of defining any wire
    always @(posedge clk) begin
        out<=d;
    end
endmodule
