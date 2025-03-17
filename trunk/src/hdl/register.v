module Register #(
    parameter N = 32
)(
    input clk, rst,
    input [N-1:0] in1,
    input [N-1:0] in2,
    input ld, clr,
    output reg [N-1:0] out1,
    output reg [N-1:0] out2
);
    always @(posedge clk or negedge rst) begin
        if (rst) begin
            out1 <= {N{1'b0}};
            out2 <= {N{1'b0}};
        end
        else if (clr) begin
            out1 <= {N{1'b0}};
            out2 <= {N{1'b0}};
        end
        else if (ld) begin
            out1 <= in1;
            out2 <= in2;
        end
    end
endmodule

