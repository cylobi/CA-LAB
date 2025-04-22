module HazardDetectionUnit(
    input [3:0] src1,        // First source register from ID stage (Rn)
    input [3:0] src2,        // Second source register from ID stage (Rm)
    input [3:0] exe_dest,    // Destination register in EXE stage
    input [3:0] mem_dest,    // Destination register in MEM stage
    input exe_wb_en,         // Write-back enable in EXE stage
    input mem_wb_en,         // Write-back enable in MEM stage
    input exe_mem_read,      // Memory read signal in EXE stage
    input two_src,           // Signal indicating instruction uses two source registers
    
    output reg hazard_detected // Output signal to freeze pipeline
);

    always @(*) begin
        // Initialize hazard_detected to 0
        hazard_detected = 1'b0;
        
        // Case 1: Load-Use Hazard
        // If a load instruction is in EXE stage and its destination is used by the instruction in ID stage
        if (exe_mem_read && exe_wb_en && 
            ((exe_dest == src1) || (exe_dest == src2 && two_src))) begin
            hazard_detected = 1'b1;
        end
        
        // Case 2: Data Hazard with EXE stage
        // If an instruction in EXE stage writes to a register that's read by the instruction in ID stage
        else if (exe_wb_en && exe_dest != 4'b0 && 
                ((exe_dest == src1) || (exe_dest == src2 && two_src))) begin
            hazard_detected = 1'b1;
        end
        
        // Case 3: Data Hazard with MEM stage
        // If an instruction in MEM stage writes to a register that's read by the instruction in ID stage
        else if (mem_wb_en && mem_dest != 4'b0 && 
                ((mem_dest == src1) || (mem_dest == src2 && two_src))) begin
            hazard_detected = 1'b1;
        end
    end
endmodule