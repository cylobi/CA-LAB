module ID_stage(
    input clk, rst,
    input [31:0] pc_in,
    input [31:0] instruction,
    input [31:0] wb_value,
    input [3:0] wb_dest,
    input wb_en,
    input [3:0] status_bits,
    
    output [31:0] pc_out,
    output [31:0] val_rn, val_rm,
    output [3:0] exe_cmd,
    output mem_read, mem_write,
    output wb_enable,
    output branch_taken,
    output status_update,
    output [3:0] dest_reg,
    output [11:0] shift_operand,
    output [23:0] signed_imm_24,
    output imm,
    output two_src,              // New output signal for hazard detection
    output [3:0] src1, src2      // Source register numbers for hazard detection
);

    wire [3:0] rn, rm, rd;
    wire [1:0] mode;
    wire [3:0] opcode;
    wire S;
    wire [3:0] cond;
    
    wire [3:0] control_exe_cmd;
    wire control_mem_read, control_mem_write;
    wire control_wb_enable, control_branch_taken;
    wire control_status_update;
    
    wire condition_met;
    
    // Instruction Decoding
    assign cond = instruction[31:28];
    assign mode = instruction[27:26];
    assign imm = instruction[25];
    assign opcode = instruction[24:21];
    assign S = instruction[20];
    assign rn = instruction[19:16];
    assign rd = instruction[15:12];
    assign rm = (control_mem_write) ? rd : instruction[3:0]; // rm is rd for STR, otherwise it's instruction[3:0]
    assign shift_operand = instruction[11:0];
    assign signed_imm_24 = instruction[23:0];
    
    // Control Unit
    ControlUnit control_unit(
        .mode(mode),
        .opcode(opcode),
        .S_in(S),
        .exe_cmd(control_exe_cmd),
        .mem_read(control_mem_read),
        .mem_write(control_mem_write),
        .wb_enable(control_wb_enable),
        .branch_taken(control_branch_taken),
        .status_update(control_status_update)
    );
    
    // Condition Check
    ConditionCheck cond_check(
        .cond(cond),
        .status_bits(status_bits),
        .condition_met(condition_met)
    );
    
    // Register File
    RegisterFile reg_file(
        .clk(clk),
        .rst(rst),
        .src1(rn),
        .src2(rm),
        .dest(wb_dest),
        .write_val(wb_value),
        .write_en(wb_en),
        .reg1(val_rn),
        .reg2(val_rm)
    );
    
    // Output control signals based on condition result
    assign exe_cmd = condition_met ? control_exe_cmd : 4'b0;
    assign mem_read = condition_met ? control_mem_read : 1'b0;
    assign mem_write = condition_met ? control_mem_write : 1'b0;
    assign wb_enable = condition_met ? control_wb_enable : 1'b0;
    assign branch_taken = condition_met ? control_branch_taken : 1'b0;
    assign status_update = condition_met ? control_status_update : 1'b0;
    
    // Destination register
    assign dest_reg = rd;
    
    // Pass PC
    assign pc_out = pc_in;
    
    // Hazard detection signals
    assign src1 = rn;
    assign src2 = rm;
    
    // Determine if instruction uses two source registers
    // Instructions that use two sources: arithmetic/logical operations, STR
    assign two_src = (mode == 2'b00 && opcode != 4'b1101 && opcode != 4'b1111) || // Not MOV or MVN
                     (mode == 2'b01 && ~S); // STR instruction
endmodule