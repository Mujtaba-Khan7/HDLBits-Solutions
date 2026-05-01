module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); 

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        else
            shut_off_computer = 0; // Or in place of else block we could even have define a default statement above if block that shut_off_computer = 1'b0
    end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;
    else
        keep_driving = 0;
        end  

endmodule
