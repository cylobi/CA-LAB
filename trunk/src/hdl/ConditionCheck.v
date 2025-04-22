module ConditionCheck(
    input [3:0] cond,
    input [3:0] status_bits, // NZCV: N(3), Z(2), C(1), V(0)
    output reg condition_met
);

    wire N, Z, C, V;
    assign N = status_bits[3];
    assign Z = status_bits[2];
    assign C = status_bits[1];
    assign V = status_bits[0];

    always @(*) begin
        case(cond)
            4'b0000: condition_met = Z;                 // EQ - Equal
            4'b0001: condition_met = ~Z;                // NE - Not Equal
            4'b0010: condition_met = C;                 // CS/HS - Carry Set
            4'b0011: condition_met = ~C;                // CC/LO - Carry Clear
            4'b0100: condition_met = N;                 // MI - Negative
            4'b0101: condition_met = ~N;                // PL - Positive or Zero
            4'b0110: condition_met = V;                 // VS - Overflow
            4'b0111: condition_met = ~V;                // VC - No Overflow
            4'b1000: condition_met = C & ~Z;            // HI - Unsigned higher
            4'b1001: condition_met = ~C | Z;            // LS - Unsigned lower or same
            4'b1010: condition_met = N == V;            // GE - Signed greater than or equal
            4'b1011: condition_met = N != V;            // LT - Signed less than
            4'b1100: condition_met = ~Z & (N == V);     // GT - Signed greater than
            4'b1101: condition_met = Z | (N != V);      // LE - Signed less than or equal
            4'b1110: condition_met = 1'b1;              // AL - Always
            default: condition_met = 1'b0;              // Reserved
        endcase
    end

endmodule