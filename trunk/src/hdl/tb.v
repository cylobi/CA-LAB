`timescale 1ns / 1ps

module tb_design_1_wrapper;
    reg clk_0;
    reg rst_0;
    wire [31:0] MEM_out1_0;
    wire [31:0] MEM_out2_0;
    wire [31:0] if_instruction;
    wire [31:0] if_pc;

//    design_1_wrapper dut (
//        .clk_0(clk_0),
//        .rst_0(rst_0),
//        .MEM_out1_0(MEM_out1_0),
//        .MEM_out2_0(MEM_out2_0),
//        .if_instruction(if_instruction),
//        .if_pc(if_pc)
//    );

    initial begin
        clk_0 = 0;
        forever #5 clk_0 = ~clk_0; 
    end

   
    initial begin
   
        rst_0 = 1;
        
        
        #10;         
        rst_0 = 0;      
        
      
        
    end



endmodule