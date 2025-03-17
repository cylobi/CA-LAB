module Top_level(
    input clk, rst,
    input branchTaken, freeze,
    input [31:0] branchAddress,
    output [31:0] out1,
    output [31:0] out2
);
    wire [31:0] pcRegIn,pcout,instructionreg, pcRegOut, IDout, EXEout, MEMout, WBout, instructionout, idout2,exeout2,memout2,wbout2;

     IF_stage if_stage(
        .clk(clk),
        .rst(rst),
        .branchTaken(branchTaken),
        .freeze(freeze),
        .branchAddress(branchAddress),
        .pc(pcOut),
        .instruction(instructionout)
     );

     IF_stage_reg if_reg(
        .clk(clk),  
        .rst(rst),
        .freeze(freeze),
        .pc(pcOutreg),
        .instruction(instructionreg)
     );

     ID_stage_reg id_stage_reg(
        .clk(clk),
        .rst(rst),
        .ID_in1(pcOutreg),
        .ID_in2(instructionreg),
        .ID_out1(IDout),
        .ID_out2(idout2)
     );

     EXE_stage_reg exe_stage_reg(
        .clk(clk),
        .rst(rst),
        .EXE_in1(IDout),
        .EXE_in2(idout2),
        .EXE_out1(EXEout),
        .EXE_out2(exeout2)

     );

     MEM_stage_reg mem_stage_reg(
        .clk(clk),
        .rst(rst),
        .MEM_in1(EXEout),
        .MEM_in2(exeout2),
        .MEM_out1(MEMout),
        .MEM_out2(memout2)
     );


    assign out1 = MEMout;
    assign out2 = memout2;



endmodule

