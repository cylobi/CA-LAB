module Top_level(
    input clk, rst,
    input branchTaken, freeze,
    input [31:0] branchAddress,
    output [31:0] out1,
    output [31:0] out2
);
    wire [31:0] pcRegIn,pcout,instructionreg, pcRegOut, IDout, EXEout, MEMout, WBout, instructionout, idout2,exeout2,memout2,wbout2;

      // ID stage wires
      wire [31:0] val_rn, val_rm;
      wire [3:0] exe_cmd;
      wire mem_read, mem_write, wb_enable, branch_taken, status_update;
      wire [3:0] dest_reg;
      wire [11:0] shift_operand;
      wire [23:0] signed_imm_24;
      wire [3:0] status_bits; // NZCV

      // status register
      reg [3:0] status_reg;
      always @(negedge clk or posedge rst) begin
         if (rst)
               status_reg <= 4'b0;
         else if (status_update)
               status_reg <= status_bits; // This would come from EXE stage (ALU)
      end


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

     ID_stage id_stage(
        .clk(clk),
        .rst(rst),
        .pc_in(pcOutreg),
        .instruction(instructionreg),
        .wb_value(MEMout), // From WB stage (not implemented yet)
        .wb_dest(memout2[3:0]), // Destination register from WB stage
        .wb_en(1'b0), // Not implemented yet
        .status_bits(status_reg),
        .pc_out(IDout),
        .val_rn(val_rn),
        .val_rm(val_rm),
        .exe_cmd(exe_cmd),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .wb_enable(wb_enable),
        .branch_taken(branch_taken),
        .status_update(status_update),
        .dest_reg(dest_reg),
        .shift_operand(shift_operand),
        .signed_imm_24(signed_imm_24)
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

