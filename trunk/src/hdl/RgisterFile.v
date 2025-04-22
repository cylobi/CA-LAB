module RegisterFile(
    input clk, rst,
    input [3:0] src1, src2, dest,
    input [31:0] write_val,
    input write_en,
    output [31:0] reg1, reg2
);

    reg [31:0] registers [0:14];
    integer i;

    assign reg1 = (src1 == 0) ? 32'b0 : registers[src1];
    assign reg2 = (src2 == 0) ? 32'b0 : registers[src2];

    always @(negedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 15; i = i + 1) begin
                registers[i] <= i;
            end
        end else if (write_en && dest != 0) begin
            registers[dest] <= write_val;
        end
    end

endmodule