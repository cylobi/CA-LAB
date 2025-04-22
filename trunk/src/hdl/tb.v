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
    
    // Variables for verification
    reg verification_success;
    integer test_case_number;
    
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
            {4'b0100, 1'b0, 1'b0, 1'b0}: 
                instruction_mnemonic = wb_enable_out_0 ? "SUB" : "CMP";
            {4'b0101, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "SBC";
            {4'b0110, 1'b0, 1'b0, 1'b0}: 
                instruction_mnemonic = wb_enable_out_0 ? "AND" : "TST";
            {4'b0111, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "ORR";
            {4'b1000, 1'b0, 1'b0, 1'b0}: instruction_mnemonic = "EOR";
            {4'b0010, 1'b1, 1'b0, 1'b0}: instruction_mnemonic = "LDR";
            {4'b0010, 1'b0, 1'b1, 1'b0}: instruction_mnemonic = "STR";
            {4'b0000, 1'b0, 1'b0, 1'b1}: instruction_mnemonic = "B";
            default: instruction_mnemonic = "UNKNOWN";
        endcase
    end
    
    // Test scenario
    initial begin
        // Initialize variables
        verification_success = 1'b1;
        test_case_number = 0;
        
        // Initialize inputs
        rst_0 = 1;
        
        // Wait for global reset
        #20;
        rst_0 = 0;
        
        // Run for initial set of instructions
        #100;
        
        /* 
         * According to the test files, the first few instructions should be:
         * 1. 32'b1110_00_1_1101_0_0000_0000_000000010100; //MOV R0, #20      //R0 = 20
         * 2. 32'b1110_00_1_1101_0_0000_0001_101000000001; //MOV R1, #4096    //R1 = 4096
         * 3. 32'b1110_00_1_1101_0_0000_0010_000100000011; //MOV R2, #0xC0000000 //R2 = -1073741824
         * 
         * We'll check these instructions as they propagate through the pipeline
         */
        
        // Wait for 5 more clock cycles
        #50;
        
        // End simulation
        $display("Verification %s", verification_success ? "PASSED" : "FAILED");
        $finish;
    end
    
    // Verification task
    task verify_instruction;
        input [3:0] expected_exe_cmd;
        input expected_mem_read;
        input expected_mem_write;
        input expected_branch_taken;
        input expected_wb_enable;
        input expected_status_update;
        input [3:0] expected_dest_reg;
        input expected_imm;
        input [127:0] instr_name;
        begin
            test_case_number = test_case_number + 1;
            
            $display("Verifying Test Case %0d: %s", test_case_number, instr_name);
            
            if (exe_cmd_out_0 !== expected_exe_cmd) begin
                $display("ERROR: exe_cmd mismatch. Expected %b, Got %b", expected_exe_cmd, exe_cmd_out_0);
                verification_success = 1'b0;
            end
            
            if (mem_read_out_0 !== expected_mem_read) begin
                $display("ERROR: mem_read mismatch. Expected %b, Got %b", expected_mem_read, mem_read_out_0);
                verification_success = 1'b0;
            end
            
            if (mem_write_out_0 !== expected_mem_write) begin
                $display("ERROR: mem_write mismatch. Expected %b, Got %b", expected_mem_write, mem_write_out_0);
                verification_success = 1'b0;
            end
            
            if (branch_taken_out_0 !== expected_branch_taken) begin
                $display("ERROR: branch_taken mismatch. Expected %b, Got %b", expected_branch_taken, branch_taken_out_0);
                verification_success = 1'b0;
            end
            
            if (wb_enable_out_0 !== expected_wb_enable) begin
                $display("ERROR: wb_enable mismatch. Expected %b, Got %b", expected_wb_enable, wb_enable_out_0);
                verification_success = 1'b0;
            end
            
            if (status_update_out_0 !== expected_status_update) begin
                $display("ERROR: status_update mismatch. Expected %b, Got %b", expected_status_update, status_update_out_0);
                verification_success = 1'b0;
            end
            
            if (dest_reg_out_0 !== expected_dest_reg) begin
                $display("ERROR: dest_reg mismatch. Expected %b, Got %b", expected_dest_reg, dest_reg_out_0);
                verification_success = 1'b0;
            end
            
            if (imm_out_0 !== expected_imm) begin
                $display("ERROR: imm mismatch. Expected %b, Got %b", expected_imm, imm_out_0);
                verification_success = 1'b0;
            end
            
            if (verification_success)
                $display("Test Case %0d PASSED", test_case_number);
            else
                $display("Test Case %0d FAILED", test_case_number);
                
            $display("-------------------------");
        end
    endtask
    
    // Verification checks at specific clock cycles
    always @(negedge clk_0) begin
        if (!rst_0) begin
            // Display current state
            $display("\nCycle %0d, PC = %h", $time/10, pc_out_0);
            $display("Instruction: %s", instruction_mnemonic);
            $display("Control signals: exe_cmd=%b, mem_read=%b, mem_write=%b, wb_enable=%b",
                     exe_cmd_out_0, mem_read_out_0, mem_write_out_0, wb_enable_out_0);
            $display("val_rn (R%0d) = %h, val_rm (R%0d) = %h, dest_reg = R%0d",
                     src1_out_0, val_rn_out_0, src2_out_0, val_rm_out_0, dest_reg_out_0);
            
            // MOV R0, #20 - Should be seen at cycle 3
            if ($time == 35) begin
                verify_instruction(
                    4'b0001,    // exe_cmd for MOV
                    1'b0,       // mem_read
                    1'b0,       // mem_write
                    1'b0,       // branch_taken
                    1'b1,       // wb_enable
                    1'b0,       // status_update (S bit is 0)
                    4'd0,       // dest_reg (R0)
                    1'b1,       // imm
                    "MOV R0, #20"
                );
                
                if (shift_operand_out_0 !== 12'h014) begin
                    $display("ERROR: shift_operand mismatch. Expected 12'h014, Got %h", shift_operand_out_0);
                    verification_success = 1'b0;
                end
            end
            
            // MOV R1, #4096 - Should be seen at cycle 4
            if ($time == 45) begin
                verify_instruction(
                    4'b0001,    // exe_cmd for MOV
                    1'b0,       // mem_read
                    1'b0,       // mem_write
                    1'b0,       // branch_taken
                    1'b1,       // wb_enable
                    1'b0,       // status_update (S bit is 0)
                    4'd1,       // dest_reg (R1)
                    1'b1,       // imm
                    "MOV R1, #4096"
                );
                
                // Check immediate value representation (shift_operand)
                // 4096 should be represented as 1 rotated by 10 positions
                if (shift_operand_out_0 !== 12'hA01) begin
                    $display("ERROR: shift_operand mismatch. Expected 12'hA01, Got %h", shift_operand_out_0);
                    verification_success = 1'b0;
                end
            end
            
            // MOV R2, #0xC0000000 - Should be seen at cycle 5
            if ($time == 55) begin
                verify_instruction(
                    4'b0001,    // exe_cmd for MOV
                    1'b0,       // mem_read
                    1'b0,       // mem_write
                    1'b0,       // branch_taken
                    1'b1,       // wb_enable
                    1'b0,       // status_update (S bit is 0)
                    4'd2,       // dest_reg (R2)
                    1'b1,       // imm
                    "MOV R2, #0xC0000000"
                );
                
                // Check immediate value representation (shift_operand)
                if (shift_operand_out_0 !== 12'h103) begin
                    $display("ERROR: shift_operand mismatch. Expected 12'h103, Got %h", shift_operand_out_0);
                    verification_success = 1'b0;
                end
            end
            
            // ADDS R3, R2, R2 - Should be seen at cycle 6
            if ($time == 65) begin
                verify_instruction(
                    4'b0010,    // exe_cmd for ADD
                    1'b0,       // mem_read
                    1'b0,       // mem_write
                    1'b0,       // branch_taken
                    1'b1,       // wb_enable
                    1'b1,       // status_update (S bit is 1)
                    4'd3,       // dest_reg (R3)
                    1'b0,       // imm
                    "ADDS R3, R2, R2"
                );
                
                // Verify source registers
                if (src1_out_0 !== 4'd2 || src2_out_0 !== 4'd2) begin
                    $display("ERROR: Source registers mismatch. Expected R2 and R2, Got R%0d and R%0d", 
                             src1_out_0, src2_out_0);
                    verification_success = 1'b0;
                end
                
                // Check the value in val_rn_out_0 (should be value of R2)
                if (val_rn_out_0 !== 32'h2) begin  // Initial value of register is its index
                    $display("ERROR: val_rn mismatch. Expected value of R2, Got %h", val_rn_out_0);
                    verification_success = 1'b0;
                end
            end
        end
    end
    
endmodule