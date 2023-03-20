-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_5 -sv \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zynq/ip/zynq_processing_system7_0_0/sim/zynq_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_13 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_datamover_v5_1_21 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_sg_v4_1_12 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/91f3/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/axi_dma_v7_1_20 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/260a/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zynq/ip/zynq_axi_dma_0_0/sim/zynq_axi_dma_0_0.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zynq/ip/zynq_rst_ps7_0_100M_1/sim/zynq_rst_ps7_0_100M_1.vhd" \
-endlib
-makelib ies_lib/xlconstant_v1_1_6 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_0/sim/bd_bd2a_one_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_1/sim/bd_bd2a_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_2/sim/bd_bd2a_s00mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_3/sim/bd_bd2a_s00tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_4/sim/bd_bd2a_s00sic_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_5/sim/bd_bd2a_s00a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_6/sim/bd_bd2a_sarn_0.sv" \
  "../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_7/sim/bd_bd2a_srn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_8/sim/bd_bd2a_m00s2a_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_9/sim/bd_bd2a_m00e_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/sim/bd_bd2a.v" \
  "../../../bd/zynq/ip/zynq_axi_smc_2/sim/zynq_axi_smc_2.v" \
  "../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_0/sim/bd_35d7_one_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_1/sim/bd_35d7_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_2/sim/bd_35d7_s00mmu_0.sv" \
  "../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_3/sim/bd_35d7_s00tr_0.sv" \
  "../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_4/sim/bd_35d7_s00sic_0.sv" \
  "../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_5/sim/bd_35d7_s00a2s_0.sv" \
  "../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_6/sim/bd_35d7_sawn_0.sv" \
  "../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_7/sim/bd_35d7_swn_0.sv" \
  "../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_8/sim/bd_35d7_sbn_0.sv" \
  "../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_9/sim/bd_35d7_m00s2a_0.sv" \
  "../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_10/sim/bd_35d7_m00e_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/sim/bd_35d7.v" \
  "../../../bd/zynq/ip/zynq_axi_smc_1_1/sim/zynq_axi_smc_1_1.v" \
-endlib
-makelib ies_lib/axis_infrastructure_v1_1_0 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_data_fifo_v2_0_1 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/e1b1/hdl/axis_data_fifo_v2_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zynq/ip/zynq_axis_data_fifo_0_0/sim/zynq_axis_data_fifo_0_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_18 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_19 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_19 \
  "../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/zynq/ip/zynq_auto_pc_0/sim/zynq_auto_pc_0.v" \
  "../../../bd/zynq/sim/zynq.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

