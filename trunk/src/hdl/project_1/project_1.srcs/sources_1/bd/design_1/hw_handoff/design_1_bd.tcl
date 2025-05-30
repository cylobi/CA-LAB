
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# EXE_stage_reg, ID_stage_reg, IF_stage_reg, MEM_stage_reg, debouncer, IF_stage

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: IF_Stage
proc create_hier_cell_IF_Stage { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_IF_Stage() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 31 -to 0 branchAddress
  create_bd_pin -dir I -type clk clk_0
  create_bd_pin -dir I freeze
  create_bd_pin -dir O -from 31 -to 0 instruction
  create_bd_pin -dir O -from 31 -to 0 pc
  create_bd_pin -dir O -from 31 -to 0 pcpipe_0
  create_bd_pin -dir I -type rst rst_0

  # Create instance: IF_stage_0, and set properties
  set block_name IF_stage
  set block_cell_name IF_stage_0
  if { [catch {set IF_stage_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $IF_stage_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../output.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {true} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Remaining_Memory_Locations {FABC} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DOUT_WIDTH {13} \
 ] $xlslice_0

  # Create port connections
  connect_bd_net -net IF_stage_0_instruction [get_bd_pins instruction] [get_bd_pins IF_stage_0/instruction]
  connect_bd_net -net IF_stage_0_pc [get_bd_pins pc] [get_bd_pins IF_stage_0/pc] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net IF_stage_0_pcpipe [get_bd_pins pcpipe_0] [get_bd_pins IF_stage_0/pcpipe]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins IF_stage_0/instructionin] [get_bd_pins blk_mem_gen_0/douta]
  connect_bd_net -net clk_0_1 [get_bd_pins clk_0] [get_bd_pins IF_stage_0/clk] [get_bd_pins blk_mem_gen_0/clka]
  connect_bd_net -net rst_0_1 [get_bd_pins rst_0] [get_bd_pins IF_stage_0/rst]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins freeze] [get_bd_pins IF_stage_0/branchTaken] [get_bd_pins IF_stage_0/freeze]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins branchAddress] [get_bd_pins IF_stage_0/branchAddress]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins xlslice_0/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set clk_0 [ create_bd_port -dir I -type clk clk_0 ]
  set rst_0 [ create_bd_port -dir I -type rst rst_0 ]

  # Create instance: EXE_stage_reg_0, and set properties
  set block_name EXE_stage_reg
  set block_cell_name EXE_stage_reg_0
  if { [catch {set EXE_stage_reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $EXE_stage_reg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ID_stage_reg_0, and set properties
  set block_name ID_stage_reg
  set block_cell_name ID_stage_reg_0
  if { [catch {set ID_stage_reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ID_stage_reg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: IF_Stage
  create_hier_cell_IF_Stage [current_bd_instance .] IF_Stage

  # Create instance: IF_stage_reg_0, and set properties
  set block_name IF_stage_reg
  set block_cell_name IF_stage_reg_0
  if { [catch {set IF_stage_reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $IF_stage_reg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: MEM_stage_reg_0, and set properties
  set block_name MEM_stage_reg
  set block_cell_name MEM_stage_reg_0
  if { [catch {set MEM_stage_reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MEM_stage_reg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: debouncer_0, and set properties
  set block_name debouncer
  set block_cell_name debouncer_0
  if { [catch {set debouncer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $debouncer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {6} \
   CONFIG.C_PROBE0_TYPE {1} \
   CONFIG.C_PROBE0_WIDTH {32} \
   CONFIG.C_PROBE1_TYPE {1} \
   CONFIG.C_PROBE1_WIDTH {32} \
   CONFIG.C_PROBE2_TYPE {1} \
   CONFIG.C_PROBE2_WIDTH {32} \
   CONFIG.C_PROBE3_TYPE {1} \
   CONFIG.C_PROBE3_WIDTH {32} \
   CONFIG.C_PROBE4_TYPE {1} \
   CONFIG.C_PROBE4_WIDTH {32} \
   CONFIG.C_PROBE5_TYPE {2} \
 ] $ila_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_1

  # Create port connections
  connect_bd_net -net EXE_stage_reg_0_EXE_out1 [get_bd_pins EXE_stage_reg_0/EXE_out1] [get_bd_pins MEM_stage_reg_0/MEM_in1]
  connect_bd_net -net EXE_stage_reg_0_EXE_out2 [get_bd_pins EXE_stage_reg_0/EXE_out2] [get_bd_pins MEM_stage_reg_0/MEM_in2]
  connect_bd_net -net ID_stage_reg_0_ID_out1 [get_bd_pins EXE_stage_reg_0/EXE_in1] [get_bd_pins ID_stage_reg_0/ID_out1]
  connect_bd_net -net ID_stage_reg_0_ID_out2 [get_bd_pins EXE_stage_reg_0/EXE_in2] [get_bd_pins ID_stage_reg_0/ID_out2]
  connect_bd_net -net IF_Stage_pcpipe_0 [get_bd_pins IF_Stage/pcpipe_0] [get_bd_pins IF_stage_reg_0/pcin] [get_bd_pins ila_0/probe3]
  connect_bd_net -net IF_stage_0_instruction [get_bd_pins IF_Stage/instruction] [get_bd_pins IF_stage_reg_0/instructionin] [get_bd_pins ila_0/probe2]
  connect_bd_net -net IF_stage_0_pc [get_bd_pins IF_Stage/pc] [get_bd_pins ila_0/probe4]
  connect_bd_net -net IF_stage_reg_0_instruction [get_bd_pins ID_stage_reg_0/ID_in2] [get_bd_pins IF_stage_reg_0/instruction]
  connect_bd_net -net IF_stage_reg_0_pc [get_bd_pins ID_stage_reg_0/ID_in1] [get_bd_pins IF_stage_reg_0/pc]
  connect_bd_net -net MEM_stage_reg_0_MEM_out1 [get_bd_pins MEM_stage_reg_0/MEM_out1] [get_bd_pins ila_0/probe0]
  connect_bd_net -net MEM_stage_reg_0_MEM_out2 [get_bd_pins MEM_stage_reg_0/MEM_out2] [get_bd_pins ila_0/probe1]
  connect_bd_net -net clk_0_1 [get_bd_ports clk_0] [get_bd_pins EXE_stage_reg_0/clk] [get_bd_pins ID_stage_reg_0/clk] [get_bd_pins IF_Stage/clk_0] [get_bd_pins IF_stage_reg_0/clk] [get_bd_pins MEM_stage_reg_0/clk] [get_bd_pins debouncer_0/CLK_I] [get_bd_pins ila_0/clk]
  connect_bd_net -net rst_0_1 [get_bd_pins EXE_stage_reg_0/rst] [get_bd_pins ID_stage_reg_0/rst] [get_bd_pins IF_Stage/rst_0] [get_bd_pins IF_stage_reg_0/rst] [get_bd_pins MEM_stage_reg_0/rst] [get_bd_pins debouncer_0/SIGNAL_O] [get_bd_pins ila_0/probe5]
  connect_bd_net -net rst_0_2 [get_bd_ports rst_0] [get_bd_pins debouncer_0/SIGNAL_I]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins EXE_stage_reg_0/freeze] [get_bd_pins IF_Stage/freeze] [get_bd_pins IF_stage_reg_0/freeze] [get_bd_pins MEM_stage_reg_0/freeze] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins IF_Stage/branchAddress] [get_bd_pins IF_stage_reg_0/branchAddress] [get_bd_pins xlconstant_1/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


