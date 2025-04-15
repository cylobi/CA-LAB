vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xlconstant_v1_1_5
vlib questa_lib/msim/blk_mem_gen_v8_4_2
vlib questa_lib/msim/xlslice_v1_0_1

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap xlconstant_v1_1_5 questa_lib/msim/xlconstant_v1_1_5
vmap blk_mem_gen_v8_4_2 questa_lib/msim/blk_mem_gen_v8_4_2
vmap xlslice_v1_0_1 questa_lib/msim/xlslice_v1_0_1

vlog -work xil_defaultlib -64 -sv \
"E:/VIVADO/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"E:/VIVADO/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_IF_stage_0_1/sim/design_1_IF_stage_0_1.v" \
"../../../bd/design_1/ip/design_1_ID_stage_reg_0_0/sim/design_1_ID_stage_reg_0_0.v" \
"../../../bd/design_1/ip/design_1_EXE_stage_reg_0_0/sim/design_1_EXE_stage_reg_0_0.v" \
"../../../bd/design_1/ip/design_1_MEM_stage_reg_0_0/sim/design_1_MEM_stage_reg_0_0.v" \
"../../../bd/design_1/ip/design_1_IF_stage_reg_0_8/sim/design_1_IF_stage_reg_0_8.v" \

vlog -work xlconstant_v1_1_5 -64 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work blk_mem_gen_v8_4_2 -64 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vlog -work xlslice_v1_0_1 -64 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_0/sim/design_1_xlconstant_2_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

