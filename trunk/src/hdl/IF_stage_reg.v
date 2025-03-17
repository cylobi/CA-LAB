module IF_stage_reg(
    input clk, rst, freeze,
    input [31:0] branchAddress, 
    input [31:0] pcin, 
    input [31:0] instructionin, 
    output [31:0] pc,
    output [31:0] instruction
);

    wire [31:0] IFRegout, instructionout;

Register #(32) IFReg(
        .clk(clk),
        .rst(rst),
        .in1(pcin),
        .in2(instructionin),
        .ld(~freeze),
        .clr(1'b0),
        .out1(IFRegout),
        .out2(instructionout)
    );

     assign instruction = instructionout;
     assign pc = IFRegout;

    endmodule