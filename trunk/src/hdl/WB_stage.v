module WB_stage(
    input clk, rst,
    input freeze,
    input [31:0] _in,
    output [31:0] MEM_out
);

    wire [31:0] EXERegout;
   Register #(32) EXEReg(
        .clk(clk),
        .rst(rst),
        .in(MEM_in),
        .ld(~freeze),
        .clr(1'b0),
        .out(EXERegout)
    );



    assign MEM_out = MEMRegout;


endmodule