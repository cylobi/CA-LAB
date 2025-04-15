vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/xlconstant_v1_1_5
vlib activehdl/blk_mem_gen_v8_4_2
vlib activehdl/xlslice_v1_0_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5
vmap blk_mem_gen_v8_4_2 activehdl/blk_mem_gen_v8_4_2
vmap xlslice_v1_0_1 activehdl/xlslice_v1_0_1

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" \
"E:/VIVADO/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/VIVADO/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/VIVADO/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" \
"../../../bd/design_1/ip/design_1_IF_stage_0_1/sim/design_1_IF_stage_0_1.v" \
"../../../bd/design_1/ip/design_1_ID_stage_reg_0_0/sim/design_1_ID_stage_reg_0_0.v" \
"../../../bd/design_1/ip/design_1_EXE_stage_reg_0_0/sim/design_1_EXE_stage_reg_0_0.v" \
"../../../bd/design_1/ip/design_1_MEM_stage_reg_0_0/sim/design_1_MEM_stage_reg_0_0.v" \
"../../../bd/design_1/ip/design_1_IF_stage_reg_0_8/sim/design_1_IF_stage_reg_0_8.v" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vlog -work xlslice_v1_0_1  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_0/sim/design_1_xlconstant_2_0.v" \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \
"../../../bd/design_1/ip/design_1_debouncer_0_0/sim/design_1_debouncer_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

