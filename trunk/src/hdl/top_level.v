module Top_level(
    input clk, rst,
    input branchTaken, freeze,
    input [31:0] branchAddress,
    output [31:0] pc, instruction
);
    wire [31:0] pcRegIn, pcRegOut, pcAdderOut;

    Register #(32) PCReg(
        .clk(clk),
        .rst(rst),
        .in(pcRegIn),
        .ld(~freeze),
        .clr(1'b0),
        .out(pcRegOut)
    );

    Adder #(32) PCAdder(
        .a(pcRegOut),
        .b(32'd4),
        .out(pcAdderOut)
    );

    Mux2To1 #(32) pcMux(
        .a0(pcAdderOut),
        .a1(branchAddress),
        .sel(branchTacken),
        .out(pcRegIn)
    );

    InstructionMemory instMem(
        .pc(pcRegOut),
        .inst(instruction)
    );

    assign pc = pcAdderOut;
endmodule
