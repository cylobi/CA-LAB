module ControlUnit(
    input [1:0] mode,
    input [3:0] opcode,
    input S_in,
    output reg [3:0] exe_cmd,
    output reg mem_read, mem_write,
    output reg wb_enable, branch_taken,
    output reg status_update
);

    always @(*) begin
        // Default values
        exe_cmd = 4'b0000;
        mem_read = 1'b0;
        mem_write = 1'b0;
        wb_enable = 1'b0;
        branch_taken = 1'b0;
        status_update = 1'b0;

        case(mode)
            // Arithmetic and logical instructions
            2'b00: begin
                case(opcode)
                    4'b1101: begin // MOV
                        exe_cmd = 4'b0001;
                        wb_enable = 1'b1;
                        status_update = S_in;
                    end
                    4'b1111: begin // MVN
                        exe_cmd = 4'b1001;
                        wb_enable = 1'b1;
                        status_update = S_in;
                    end
                    4'b0100: begin // ADD
                        exe_cmd = 4'b0010;
                        wb_enable = 1'b1;
                        status_update = S_in;
                    end
                    4'b0101: begin // ADC
                        exe_cmd = 4'b0011;
                        wb_enable = 1'b1;
                        status_update = S_in;
                    end
                    4'b0010: begin // SUB
                        exe_cmd = 4'b0100;
                        wb_enable = 1'b1;
                        status_update = S_in;
                    end
                    4'b0110: begin // SBC
                        exe_cmd = 4'b0101;
                        wb_enable = 1'b1;
                        status_update = S_in;
                    end
                    4'b0000: begin // AND
                        exe_cmd = 4'b0110;
                        wb_enable = 1'b1;
                        status_update = S_in;
                    end
                    4'b1100: begin // ORR
                        exe_cmd = 4'b0111;
                        wb_enable = 1'b1;
                        status_update = S_in;
                    end
                    4'b0001: begin // EOR
                        exe_cmd = 4'b1000;
                        wb_enable = 1'b1;
                        status_update = S_in;
                    end
                    4'b1010: begin // CMP
                        exe_cmd = 4'b0100; // Same as SUB
                        status_update = 1'b1; // Always update status
                        // No wb_enable as no result is stored
                    end
                    4'b1000: begin // TST
                        exe_cmd = 4'b0110; // Same as AND
                        status_update = 1'b1; // Always update status
                        // No wb_enable as no result is stored
                    end
                endcase
            end
            
            // Memory instructions
            2'b01: begin
                exe_cmd = 4'b0010; // ADD for address calculation
                if (S_in) begin // LDR instruction
                    mem_read = 1'b1;
                    wb_enable = 1'b1;
                end else begin // STR instruction
                    mem_write = 1'b1;
                end
            end
            
            // Branch instructions
            2'b10: begin
                branch_taken = 1'b1;
            end
        endcase
    end

endmodule