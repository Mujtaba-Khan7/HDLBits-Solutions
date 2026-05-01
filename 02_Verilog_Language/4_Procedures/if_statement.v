module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always
);

    // 1. Continuous Assignment
    // This uses the ternary operator to choose between b and a.
    assign out_assign = (sel_b1 && sel_b2) ? b : a;

    // 2. Procedural Assignment
    // This uses an if-else block inside a combinational always block.
    always @(*) begin
        if (sel_b1 && sel_b2) begin
            out_always = b;
        end
        else begin
            out_always = a;
        end
    end

endmodule
