// To get the simplest SOP (Sum-of-Products) result, I only treated the don't cares as 1s when they helped create a larger "block."
// If a don't care didn't help expand a group, I treated it as a 0 and ignored it
module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
); 
    assign out_sop = (c & d) | (~a & ~b & c);
    assign out_pos = c & (~a | b) & (~b | d);
endmodule
