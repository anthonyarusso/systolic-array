vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_4
vlib activehdl/lib_fifo_v1_0_13
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_21
vlib activehdl/axi_sg_v4_1_12
vlib activehdl/axi_dma_v7_1_20
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlconstant_v1_1_6
vlib activehdl/smartconnect_v1_0
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_data_fifo_v2_0_1
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_data_fifo_v2_1_18
vlib activehdl/axi_register_slice_v2_1_19
vlib activehdl/axi_protocol_converter_v2_1_19

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_4 activehdl/fifo_generator_v13_2_4
vmap lib_fifo_v1_0_13 activehdl/lib_fifo_v1_0_13
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_21 activehdl/axi_datamover_v5_1_21
vmap axi_sg_v4_1_12 activehdl/axi_sg_v4_1_12
vmap axi_dma_v7_1_20 activehdl/axi_dma_v7_1_20
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_6 activehdl/xlconstant_v1_1_6
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_1 activehdl/axis_data_fifo_v2_0_1
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_18 activehdl/axi_data_fifo_v2_1_18
vmap axi_register_slice_v2_1_19 activehdl/axi_register_slice_v2_1_19
vmap axi_protocol_converter_v2_1_19 activehdl/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_processing_system7_0_0/sim/zynq_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_13 -93 \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_21 -93 \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_12 -93 \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/91f3/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_20 -93 \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/260a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/zynq/ip/zynq_axi_dma_0_0/sim/zynq_axi_dma_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/zynq/ip/zynq_rst_ps7_0_100M_1/sim/zynq_rst_ps7_0_100M_1.vhd" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_0/sim/bd_bd2a_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_1/sim/bd_bd2a_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_2/sim/bd_bd2a_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_3/sim/bd_bd2a_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_4/sim/bd_bd2a_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_5/sim/bd_bd2a_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_6/sim/bd_bd2a_sarn_0.sv" \
"../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_7/sim/bd_bd2a_srn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_8/sim/bd_bd2a_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/ip/ip_9/sim/bd_bd2a_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_axi_smc_2/bd_0/sim/bd_bd2a.v" \
"../../../bd/zynq/ip/zynq_axi_smc_2/sim/zynq_axi_smc_2.v" \
"../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_0/sim/bd_35d7_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_1/sim/bd_35d7_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_2/sim/bd_35d7_s00mmu_0.sv" \
"../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_3/sim/bd_35d7_s00tr_0.sv" \
"../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_4/sim/bd_35d7_s00sic_0.sv" \
"../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_5/sim/bd_35d7_s00a2s_0.sv" \
"../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_6/sim/bd_35d7_sawn_0.sv" \
"../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_7/sim/bd_35d7_swn_0.sv" \
"../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_8/sim/bd_35d7_sbn_0.sv" \
"../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_9/sim/bd_35d7_m00s2a_0.sv" \
"../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/ip/ip_10/sim/bd_35d7_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_axi_smc_1_1/bd_0/sim/bd_35d7.v" \
"../../../bd/zynq/ip/zynq_axi_smc_1_1/sim/zynq_axi_smc_1_1.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_1  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/e1b1/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_axis_data_fifo_0_0/sim/zynq_axis_data_fifo_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/ec67/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8c62/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/1ddd/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/b2d0/hdl/verilog" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ipshared/8713/hdl" "+incdir+../../../../systolic_array.srcs/sources_1/bd/zynq/ip/zynq_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/zynq/ip/zynq_auto_pc_0/sim/zynq_auto_pc_0.v" \
"../../../bd/zynq/sim/zynq.v" \

vlog -work xil_defaultlib \
"glbl.v"

