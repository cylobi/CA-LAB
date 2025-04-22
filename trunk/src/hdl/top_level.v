module top_level(
    input clk, rst,
    input freeze,
    output [31:0] out1,
    output [31:0] out2
);
    // IF stage wires
    wire [31:0] pc, instruction, pc_if_reg_out, instruction_if_reg_out;
    wire branch_taken;
    wire [31:0] branch_address;
    
    // ID stage wires
    wire [31:0] id_pc_out;
    wire [31:0] val_rn, val_rm;
    wire [3:0] exe_cmd;
    wire mem_read, mem_write, wb_enable, status_update;
    wire [3:0] dest_reg;
    wire [11:0] shift_operand;
    wire [23:0] signed_imm_24;
    wire imm;
    
    // EXE stage wires
    wire [31:0] alu_result, branch_addr_calc;
    wire [3:0] status_bits; // N, Z, C, V
    
    // Pipeline register wires
    wire [31:0] id_reg_pc_out, id_reg_val_rn_out, id_reg_val_rm_out;
    wire [3:0] id_reg_exe_cmd_out;
    wire id_reg_mem_read_out, id_reg_mem_write_out, id_reg_wb_enable_out;
    wire [3:0] id_reg_dest_reg_out;
    wire [11:0] id_reg_shift_operand_out;
    wire [23:0] id_reg_signed_imm_24_out;
    wire id_reg_imm_out;
    
    wire [31:0] exe_reg_pc_out, exe_reg_alu_result_out, exe_reg_val_rm_out;
    wire exe_reg_mem_read_out, exe_reg_mem_write_out, exe_reg_wb_enable_out;
    wire [3:0] exe_reg_dest_reg_out;
    
    // Status register
    reg [3:0] status_reg;
    always @(negedge clk or posedge rst) begin
        if (rst)
            status_reg <= 4'b0;
        else if (status_update)
            status_reg <= status_bits;
    end
    
    // IF Stage
    IF_stage if_stage(
        .clk(clk),
        .rst(rst),
        .branchTaken(branch_taken),
        .freeze(freeze),
        .instructionin(32'b0), // This should come from instruction memory
        .branchAddress(branch_addr_calc),
        .pc(pc),
        .instruction(instruction),
        .pcpipe(pc_if_reg_out)
    );
    
    // IF Stage Register
    IF_stage_reg if_reg(
        .clk(clk),
        .rst(rst),
        .freeze(freeze),
        .branchAddress(branch_addr_calc),
        .pcin(pc),
        .instructionin(instruction),
        .pc(pc_if_reg_out),
        .instruction(instruction_if_reg_out)
    );
    
    // ID Stage
    ID_stage id_stage(
        .clk(clk),
        .rst(rst),
        .pc_in(pc_if_reg_out),
        .instruction(instruction_if_reg_out),
        .wb_value(out1), // From WB stage
        .wb_dest(out2[3:0]), // From WB stage
        .wb_en(exe_reg_wb_enable_out), // From WB stage
        .status_bits(status_reg),
        .pc_out(id_pc_out),
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
    
    // ID Stage Register
    ID_stage_reg id_reg(
        .clk(clk),
        .rst(rst),
        .ID_in1(id_pc_out),
        .ID_in2({val_rn, val_rm, exe_cmd, mem_read, mem_write, wb_enable, dest_reg, shift_operand, signed_imm_24, imm}),
        .ID_out1(id_reg_pc_out),
        .ID_out2({id_reg_val_rn_out, id_reg_val_rm_out, id_reg_exe_cmd_out, id_reg_mem_read_out, id_reg_mem_write_out, id_reg_wb_enable_out, id_reg_dest_reg_out, id_reg_shift_operand_out, id_reg_signed_imm_24_out, id_reg_imm_out})
    );
    
    // EXE Stage
    EXE_stage exe_stage(
        .clk(clk),
        .rst(rst),
        .pc_in(id_reg_pc_out),
        .val_rn(id_reg_val_rn_out),
        .val_rm(id_reg_val_rm_out),
        .exe_cmd(id_reg_exe_cmd_out),
        .mem_read(id_reg_mem_read_out),
        .mem_write(id_reg_mem_write_out),
        .signed_imm_24(id_reg_signed_imm_24_out),
        .shift_operand(id_reg_shift_operand_out),
        .imm(id_reg_imm_out),
        .C_in(status_reg[1]), // Carry flag from status register
        .alu_result(alu_result),
        .branch_address(branch_addr_calc),
        .status_bits(status_bits)
    );
    
    // EXE Stage Register
    EXE_stage_reg exe_reg(
        .clk(clk),
        .rst(rst),
        .freeze(freeze),
        .pc_in(id_reg_pc_out),
        .alu_result_in(alu_result),
        .val_rm_in(id_reg_val_rm_out),
        .mem_read_in(id_reg_mem_read_out),
        .mem_write_in(id_reg_mem_write_out),
        .wb_enable_in(id_reg_wb_enable_out),
        .dest_reg_in(id_reg_dest_reg_out),
        .pc_out(exe_reg_pc_out),
        .alu_result_out(exe_reg_alu_result_out),
        .val_rm_out(exe_reg_val_rm_out),
        .mem_read_out(exe_reg_mem_read_out),
        .mem_write_out(exe_reg_mem_write_out),
        .wb_enable_out(exe_reg_wb_enable_out),
        .dest_reg_out(exe_reg_dest_reg_out)
    );

    MEM_stage_reg mem_stage_reg(
        .clk(clk),
        .rst(rst),
        .MEM_in1(EXEout),
        .MEM_in2(exeout2),
        .MEM_out1(MEMout),
        .MEM_out2(memout2)
     );
    
    assign out1 = exe_reg_alu_result_out;
    assign out2 = {28'b0, exe_reg_dest_reg_out};

endmodule