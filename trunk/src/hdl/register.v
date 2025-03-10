module Register #(
    parameter N = 32
)(
    input clk, rst,
    input [N-1:0] in,
    input ld, clr,
    output reg [N-1:0] out
);
    always @(posedge clk or negedge rst) begin
        if (rst)
            out <= {N{1'b0}};
        else if (clr)
            out <= {N{1'b0}};
        else if (ld)
            out <= in;
    end
endmodule

