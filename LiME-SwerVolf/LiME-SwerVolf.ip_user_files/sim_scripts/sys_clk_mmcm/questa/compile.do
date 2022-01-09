vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../ipstatic" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic" \
"../../../../swervolf_0.7.3.srcs/sources_1/ip/sys_clk_mmcm/sys_clk_mmcm_clk_wiz.v" \
"../../../../swervolf_0.7.3.srcs/sources_1/ip/sys_clk_mmcm/sys_clk_mmcm.v" \

vlog -work xil_defaultlib \
"glbl.v"

