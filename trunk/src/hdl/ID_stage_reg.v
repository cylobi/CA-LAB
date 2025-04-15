module ID_stage_reg(
    input clk, rst,
    input [31:0] ID_in1,
    input [31:0] ID_in2,
    output [31:0] ID_out1,
    output [31:0] ID_out2
);

    wire [31:0] IDRegout1, IDRegout2;

  Register #(32) IDReg(
        .clk(clk),
        .rst(rst),
        .in1(ID_in1),
        .in2(ID_in2),
        .ld(1'b1),
        .clr(1'b0),
        .out1(IDRegout1),
        .out2(IDRegout2)
    );


    assign ID_out1 = IDRegout1;
    assign ID_out2 = IDRegout2;


endmodule