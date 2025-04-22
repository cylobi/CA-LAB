module EXE_stage_reg(
    input clk, rst,
    input freeze,
    input [31:0] pc_in,
    input [31:0] alu_result_in,
    input [31:0] val_rm_in,
    input mem_read_in, mem_write_in, wb_enable_in,
    input [3:0] dest_reg_in,
    
    output reg [31:0] pc_out,
    output reg [31:0] alu_result_out,
    output reg [31:0] val_rm_out,
    output reg mem_read_out, mem_write_out, wb_enable_out,
    output reg [3:0] dest_reg_out
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pc_out <= 32'b0;
            alu_result_out <= 32'b0;
            val_rm_out <= 32'b0;
            mem_read_out <= 1'b0;
            mem_write_out <= 1'b0;
            wb_enable_out <= 1'b0;
            dest_reg_out <= 4'b0;
        end
        else if (~freeze) begin
            pc_out <= pc_in;
            alu_result_out <= alu_result_in;
            val_rm_out <= val_rm_in;
            mem_read_out <= mem_read_in;
            mem_write_out <= mem_write_in;
            wb_enable_out <= wb_enable_in;
            dest_reg_out <= dest_reg_in;
        end
    end
endmodule