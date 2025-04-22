module ALU(
    input [31:0] in1, in2,
    input C_in,  // Carry input from status register
    input [3:0] exe_cmd,
    output reg [31:0] result,
    output reg [3:0] status // N, Z, C, V
);

    always @(*) begin
        // Default status bits
        status[3] = 1'b0; // N flag
        status[2] = 1'b0; // Z flag
        status[1] = 1'b0; // C flag
        status[0] = 1'b0; // V flag
        
        case(exe_cmd)
            4'b0001: begin // MOV
                result = in2;
            end
            
            4'b1001: begin // MVN
                result = ~in2;
            end
            
            4'b0010: begin // ADD
                {status[1], result} = in1 + in2;
                status[0] = (in1[31] == in2[31] && result[31] != in1[31]); // Overflow flag
            end
            
            4'b0011: begin // ADC
                {status[1], result} = in1 + in2 + C_in;
                status[0] = (in1[31] == in2[31] && result[31] != in1[31]); // Overflow flag
            end
            
            4'b0100: begin // SUB
                result = in1 - in2;
                status[1] = (in1 >= in2); // Carry is NOT borrow
                status[0] = (in1[31] != in2[31] && result[31] != in1[31]); // Overflow flag
            end
            
            4'b0101: begin // SBC
                result = in1 - in2 - (C_in ? 0 : 1);
                status[1] = (in1 >= in2) && (C_in || in1 > in2); // Carry calculation for SBC
                status[0] = (in1[31] != in2[31] && result[31] != in1[31]); // Overflow flag
            end
            
            4'b0110: begin // AND
                result = in1 & in2;
            end
            
            4'b0111: begin // ORR
                result = in1 | in2;
            end
            
            4'b1000: begin // EOR
                result = in1 ^ in2;
            end
            
            default: begin
                result = 32'b0;
            end
        endcase
        
        // N flag is always the MSB of the result
        status[3] = result[31];
        
        // Z flag is set if result is zero
        status[2] = (result == 32'b0);
    end
endmodule