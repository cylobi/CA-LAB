-makelib xcelium_lib/xil_defaultlib -sv \
  "E:/VIVADO/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/VIVADO/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/VIVADO/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_IF_stage_0_1/sim/design_1_IF_stage_0_1.v" \
  "../../../bd/design_1/ip/design_1_ID_stage_reg_0_0/sim/design_1_ID_stage_reg_0_0.v" \
  "../../../bd/design_1/ip/design_1_EXE_stage_reg_0_0/sim/design_1_EXE_stage_reg_0_0.v" \
  "../../../bd/design_1/ip/design_1_MEM_stage_reg_0_0/sim/design_1_MEM_stage_reg_0_0.v" \
  "../../../bd/design_1/ip/design_1_IF_stage_reg_0_8/sim/design_1_IF_stage_reg_0_8.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_5 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
  "../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \
-endlib
-makelib xcelium_lib/xlslice_v1_0_1 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
  "../../../bd/design_1/ip/design_1_xlconstant_2_0/sim/design_1_xlconstant_2_0.v" \
  "../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \
  "../../../bd/design_1/ip/design_1_debouncer_0_0/sim/design_1_debouncer_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

