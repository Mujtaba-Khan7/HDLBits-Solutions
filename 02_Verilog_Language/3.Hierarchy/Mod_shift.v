module top_module ( input clk, input d, output q );
    wire w12,w23;
    my_dff inst_1( 
        .clk(clk),
        .d(d),
        .q(w12)
    );
     my_dff inst_2( 
        .clk(clk),
         .d(w12),
         .q(w23)
    );
     my_dff inst_3( 
        .clk(clk),
         .d(w23),
         .q(q)
    );
       
endmodule
