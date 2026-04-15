`default_nettype none
module top_module( 
    input [31:0] in,
    output [31:0] out );//
     assign out[7:0] = in[31:24];
    assign out[15:8] = in[23:16];
    assign out[23:16] = in[15:8];
    assign out[31:24] = in[7:0];
endmodule
// This operation is often used when the endianness of a piece of data needs to be swapped,
// for eg. Between little-endian x86 systems and the big-endian formats used in many Internet protocols.
// 1. Little-Endian (x86 Systems)
// In a Little-Endian system (like most Windows/Linux PCs), the "Little end" (the Least Significant Byte) is
// stored at the lowest memory address.If you have the value 0x12345678, it is stored in memory as 78 56 34 12.
// 2. Big-Endian (Internet Protocols)
// Internet protocols (like TCP/IP) use Big-Endian, where the "Big end" (the Most Significant Byte) comes first.
// The same value 0x12345678 is sent over the network as 12 34 56 78.
// 3. Your Circuit's Role
// Your code acts as the "translator." When a network card receives data in Big-Endian format but the CPU 
// needs it in Little-Endian, your circuit physically re-routes the wires to swap the byte order instantly.
