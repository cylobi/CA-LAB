module ID_stage_reg (
    input clk, rst, flush,
    input [31:0] pc_in,
    input [31:0] val_rn_in, val_rm_in,
    input [3:0] exe_cmd_in,
    input mem_read_in, mem_write_in,
    input wb_enable_in,
    input branch_taken_in,
    input status_update_in,
    input [3:0] dest_reg_in,
    input [11:0] shift_operand_in,
    input [23:0] signed_imm_24_in,
    input imm_in,
    input [3:0] src1_in, src2_in,
    
    output reg [31:0] pc_out,
    output reg [31:0] val_rn_out, val_rm_out,
    output reg [3:0] exe_cmd_out,
    output reg mem_read_out, mem_write_out,
    output reg wb_enable_out,
    output reg branch_taken_out,
    output reg status_update_out,
    output reg [3:0] dest_reg_out,
    output reg [11:0] shift_operand_out,
    output reg [23:0] signed_imm_24_out,
    output reg imm_out,
    output reg [3:0] src1_out, src2_out
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset all outputs to zero
            pc_out <= 32'b0;
            val_rn_out <= 32'b0;
            val_rm_out <= 32'b0;
            exe_cmd_out <= 4'b0;
            mem_read_out <= 1'b0;
            mem_write_out <= 1'b0;
            wb_enable_out <= 1'b0;
            branch_taken_out <= 1'b0;
            status_update_out <= 1'b0;
            dest_reg_out <= 4'b0;
            shift_operand_out <= 12'b0;
            signed_imm_24_out <= 24'b0;
            imm_out <= 1'b0;
            src1_out <= 4'b0;
            src2_out <= 4'b0;
        end else if (flush) begin
            // Flush pipeline (e.g., on branch)
            pc_out <= 32'b0;
            val_rn_out <= 32'b0;
            val_rm_out <= 32'b0;
            exe_cmd_out <= 4'b0;
            mem_read_out <= 1'b0;
            mem_write_out <= 1'b0;
            wb_enable_out <= 1'b0;
            branch_taken_out <= 1'b0;
            status_update_out <= 1'b0;
            dest_reg_out <= 4'b0;
            shift_operand_out <= 12'b0;
            signed_imm_24_out <= 24'b0;
            imm_out <= 1'b0;
            src1_out <= 4'b0;
            src2_out <= 4'b0;
        end else begin
            // Sample inputs on clock edge
            pc_out <= pc_in;
            val_rn_out <= val_rn_in;
            val_rm_out <= val_rm_in;
            exe_cmd_out <= exe_cmd_in;
            mem_read_out <= mem_read_in;
            mem_write_out <= mem_write_in;
            wb_enable_out <= wb_enable_in;
            branch_taken_out <= branch_taken_in;
            status_update_out <= status_update_in;
            dest_reg_out <= dest_reg_in;
            shift_operand_out <= shift_operand_in;
            signed_imm_24_out <= signed_imm_24_in;
            imm_out <= imm_in;
            src1_out <= src1_in;
            src2_out <= src2_in;
        end
    end
endmodule