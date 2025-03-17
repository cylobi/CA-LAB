module IF_stage(
    input clk, rst,
    input branchTaken, freeze,
    input [31:0] branchAddress, 
    output [31:0] pc,
    output [31:0] instruction
);

    wire [31:0] pcRegIn, pcRegOut, pcAdderOut, IFRegout, instructionout;

    Mux2To1 #(32) pcMux(
        .a0(pcAdderOut),
        .a1(branchAddress),
        .sel(branchTacken),
        .out(pcRegIn)
    );

    Register #(32) PCReg(
        .clk(clk),
        .rst(rst),
        .in1(pcRegIn),
        .in2(),
        .ld(~freeze),
        .clr(1'b0),
        .out1(pcRegOut),
        .out2()
    );

    Adder #(32) PCAdder(
        .a(pcRegOut),
        .b(32'd4),
        .out(pcAdderOut)
    );

   


     Register #(32) IFReg1(
        .clk(clk),
        .rst(rst),
        .in1(pcAdderOut),
        .in2(pcRegOut),
        .ld(~freeze),
        .clr(1'b0),
        .out1(IFRegout),
        .out2(instructionout)
    );

    assign instruction = instructionout;
     assign pc = IFRegout;



endmodule