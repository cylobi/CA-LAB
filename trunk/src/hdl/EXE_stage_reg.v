module EXE_stage_reg(
    input clk, rst,
    input freeze,
    input [32:0] EXE_in1,
    input [32:0] EXE_in2,
    output [31:0] EXE_out1,
    output [31:0] EXE_out2
);

wire [31:0] EXERegout1, EXERegout2;

   Register #(32) EXEReg(
        .clk(clk),
        .rst(rst),
        .in1(EXE_in1),
        .in2(EXE_in2),
        .ld(1'b1),
        .clr(1'b0),
        .out1(EXERegout1),
        .out2(EXERegout2)
    );



    assign EXE_out1 = EXERegout1;
    assign EXE_out2 = EXERegout2;


endmodule