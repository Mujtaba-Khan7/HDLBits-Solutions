// Submodule A (from previous Q ): z = (x^y) & x
module A (input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule

// Submodule B (from previous Q): z = ~(x^y)  (XNOR)
module B (input x, input y, output z);
    assign z = ~(x ^ y);
endmodule

module top_module (input x, input y, output z);

    wire out_ia1, out_ib1, out_ia2, out_ib2;
    wire out_or, out_and;

    A IA1 (.x(x), .y(y), .z(out_ia1));
    B IB1 (.x(x), .y(y), .z(out_ib1));
    A IA2 (.x(x), .y(y), .z(out_ia2));
    B IB2 (.x(x), .y(y), .z(out_ib2));

    assign out_or  = out_ia1 | out_ib1;
    assign out_and = out_ia2 & out_ib2;

    assign z = out_or ^ out_and;

endmodule
