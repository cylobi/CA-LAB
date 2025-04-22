module EXE_stage(
    input clk, rst,
    input [31:0] pc_in,
    input [31:0] val_rn, val_rm,
    input [3:0] exe_cmd,
    input mem_read, mem_write,
    input [23:0] signed_imm_24,
    input [11:0] shift_operand,
    input imm,
    input C_in, // Carry flag from status register
    
    output [31:0] alu_result,
    output [31:0] branch_address,
    output [3:0] status_bits
);

    wire [31:0] val2;
    wire mem_command;
    
    // Determine if this is a memory instruction
    assign mem_command = mem_read | mem_write;
    
    // Generate Val2 based on instruction type
    Val2Generator val2_gen(
        .shift_operand(shift_operand),
        .val_rm(val_rm),
        .imm(imm),
        .mem_command(mem_command),
        .val2(val2)
    );
    
    // ALU operation
    ALU alu(
        .in1(val_rn),
        .in2(val2),
        .C_in(C_in),
        .exe_cmd(exe_cmd),
        .result(alu_result),
        .status(status_bits)
    );
    
    // Branch address calculation
    // PC + (SignExtend(signed_imm_24) << 2)
    wire [31:0] sign_extended_imm;
    assign sign_extended_imm = {{8{signed_imm_24[23]}}, signed_imm_24} << 2;
    assign branch_address = pc_in + sign_extended_imm;

endmodule