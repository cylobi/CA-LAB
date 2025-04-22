`timescale 1ns / 1ps

module tb_ARM_processor;
    // Inputs
    reg clk_0;
    reg rst_0;
    
    // Outputs from ID_stage_reg
    wire branch_taken_out_0;
    wire [3:0] dest_reg_out_0;
    wire [3:0] exe_cmd_out_0;
    wire imm_out_0;
    wire mem_read_out_0;
    wire mem_write_out_0;
    wire [31:0] pc_out_0;
    wire [11:0] shift_operand_out_0;
    wire [23:0] signed_imm_24_out_0;
    wire [3:0] src1_out_0;
    wire [3:0] src2_out_0;
    wire status_update_out_0;
    wire [31:0] val_rm_out_0;
    wire [31:0] val_rn_out_0;
    wire wb_enable_out_0;
    
    // Additional monitoring signals
    wire [31:0] if_instruction;
    wire [31:0] if_pc;
    
    // Instantiate the Design Under Test (DUT)
    design_1_wrapper dut (
        .branch_taken_out_0(branch_taken_out_0),
        .clk_0(clk_0),
        .dest_reg_out_0(dest_reg_out_0),
        .exe_cmd_out_0(exe_cmd_out_0),
        .imm_out_0(imm_out_0),
        .mem_read_out_0(mem_read_out_0),
        .mem_write_out_0(mem_write_out_0),
        .pc_out_0(pc_out_0),
        .rst_0(rst_0),
        .shift_operand_out_0(shift_operand_out_0),
        .signed_imm_24_out_0(signed_imm_24_out_0),
        .src1_out_0(src1_out_0),
        .src2_out_0(src2_out_0),
        .status_update_out_0(status_update_out_0),
        .val_rm_out_0(val_rm_out_0),
        .val_rn_out_0(val_rn_out_0),
        .wb_enable_out_0(wb_enable_out_0)
    );
    
    // Clock generation
    initial begin
        clk_0 = 0;
        forever #5 clk_0 = ~clk_0;  // 100 MHz clock (10ns period)
    end
    
    // Instruction table for debugging
    reg [127:0] instruction_mnemonic;
    always @* begin
        case ({exe_cmd_out_0, mem_read_out_0, mem_write_out_0, branch_taken_out_0})
            {4'b0001, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "MOV";
            {4'b1001, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "MVN";
            {4'b0010, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "ADD";
            {4'b0011, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "ADC";
            {4'b0100, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "SUB";
            {4'b0101, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "SBC";
            {4'b0110, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "AND";
            {4'b0111, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "ORR";
            {4'b1000, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "EOR";
            {4'b0100, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "CMP"; // Same as SUB but no WB
            {4'b0110, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "TST"; // Same as AND but no WB
            {4'b0010, 1'b1, 1'b0, 1'b0}: instruction_mnemonic = "LDR";
            {4'b0010, 1'b0, 1'b1, 1'b0}: instruction_mnemonic = "STR";
            {4'b0000, 1'b0, 1'b0, 1'b1}: instruction_mnemonic = "B";
            default: instruction_mnemonic = "UNKNOWN";
        endcase
    end
    
    // Test scenario
    initial begin
        // Initialize inputs
        rst_0 = 1;
        
        // Wait for global reset
        #20;
        rst_0 = 0;
        
        // Monitor pipeline for 20 clock cycles (should show fetch and propagation to ID_stage_reg)
        #200;
        
        // Optional: Add specific test scenarios if needed
        
        // End simulation
        $finish;
    end
    
    // Monitor signals for debugging
    initial begin
        $monitor("Time=%t, PC=%h, Instr=%s, Rm=%d, Rn=%d, Rd=%d, Status_update=%b", 
                 $time, pc_out_0, instruction_mnemonic, val_rm_out_0, val_rn_out_0, dest_reg_out_0, status_update_out_0);
    end
    
    // Additional signal monitoring for detailed debugging
    always @(posedge clk_0) begin
        if (!rst_0) begin
            $display("---------- Cycle: %0d ----------", $time/10);
            $display("ID Stage Register Outputs:");
            $display("  PC: 0x%h", pc_out_0);
            $display("  Operation: %s", instruction_mnemonic);
            $display("  val_rn (R%0d): 0x%h", src1_out_0, val_rn_out_0);
            $display("  val_rm (R%0d): 0x%h", src2_out_0, val_rm_out_0);
            $display("  dest_reg: R%0d", dest_reg_out_0);
            $display("  exe_cmd: %b", exe_cmd_out_0);
            $display("  mem_read: %b, mem_write: %b", mem_read_out_0, mem_write_out_0);
            $display("  wb_enable: %b", wb_enable_out_0);
            $display("  shift_operand: 0x%h", shift_operand_out_0);
            $display("  signed_imm_24: 0x%h", signed_imm_24_out_0);
            $display("  imm: %b", imm_out_0);
            $display("  status_update: %b", status_update_out_0);
            $display("  branch_taken: %b", branch_taken_out_0);
            $display("-------------------------");
        end
    end
    
endmodule