module Val2Generator(
    input [11:0] shift_operand,
    input [31:0] val_rm,
    input imm,
    input mem_command, // 1 if LDR or STR instruction
    output reg [31:0] val2
);

    wire [7:0] imm_8;
    wire [3:0] rotate_imm;
    wire [4:0] shift_imm;
    wire [1:0] shift;
    
    assign imm_8 = shift_operand[7:0];
    assign rotate_imm = shift_operand[11:8];
    assign shift_imm = shift_operand[11:7];
    assign shift = shift_operand[6:5];
    
    reg [31:0] rotated_imm;
    integer i;
    
    always @(*) begin
        if (mem_command) begin
            // LDR/STR uses the offset_12 directly
            val2 = {20'b0, shift_operand};
        end
        else if (imm) begin
            // 32-bit immediate value
            rotated_imm = {24'b0, imm_8};
            
            // Rotate right by (rotate_imm * 2)
            for (i = 0; i < rotate_imm; i = i + 1) begin
                rotated_imm = {rotated_imm[1:0], rotated_imm[31:2]};
                rotated_imm = {rotated_imm[1:0], rotated_imm[31:2]};
            end
            
            val2 = rotated_imm;
        end
        else begin
            // Immediate shifts
            case(shift)
                2'b00: val2 = val_rm << shift_imm; // LSL
                2'b01: val2 = val_rm >> shift_imm; // LSR
                2'b10: val2 = $signed(val_rm) >>> shift_imm; // ASR
                2'b11: begin // ROR
                    val2 = val_rm;
                    for (i = 0; i < shift_imm; i = i + 1) begin
                        val2 = {val2[0], val2[31:1]};
                    end
                end
            endcase
        end
    end
endmodule