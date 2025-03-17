module MEM_stage_reg(
    input clk, rst,
    input freeze,
    input [31:0] MEM_in1,
    input [31:0] MEM_in2,
    output [31:0] MEM_out1,
    output [31:0] MEM_out2
);

    wire [31:0] MEMRegout;
   Register #(32) EXEReg(
        .clk(clk),
        .rst(rst),
        .in1(MEM_in1),
        .in2(MEM_in2),
        .ld(~freeze),
        .clr(1'b0),
        .out1(MEMRegout1),
        .out2(MEMRegout2)
    );



    assign MEM_out1 = MEMRegout1;
    assign MEM_out2 = MEMRegout2;


endmodule