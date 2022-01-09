vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../swervolf_0.7.3.srcs/sources_1/ip/sys_clk_mmcm/sys_clk_mmcm_clk_wiz.v" \
"../../../../swervolf_0.7.3.srcs/sources_1/ip/sys_clk_mmcm/sys_clk_mmcm.v" \

vlog -work xil_defaultlib \
"glbl.v"

