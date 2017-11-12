--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: TOP_EQ_timesim.vhd
-- /___/   /\     Timestamp: Tue Nov 07 10:02:07 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf TOP_EQ.pcf -rpw 100 -tpw 0 -ar Structure -tm TOP_EQ -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim TOP_EQ.ncd TOP_EQ_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: TOP_EQ.ncd
-- Output file	: C:\Users\abs430\Documents\lab2\FSMC\netgen\par\TOP_EQ_timesim.vhd
-- # of Entities	: 1
-- Design Name	: TOP_EQ
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity TOP_EQ is
  port (
    CLK : in STD_LOGIC := 'X'; 
    N_RESET : in STD_LOGIC := 'X'; 
    NOE : in STD_LOGIC := 'X'; 
    NE : in STD_LOGIC := 'X'; 
    NWE : in STD_LOGIC := 'X'; 
    LOCKED : out STD_LOGIC; 
    RDY : out STD_LOGIC; 
    DATA : inout STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end TOP_EQ;

architecture Structure of TOP_EQ is
  signal CLK_GEN_clkfbout : STD_LOGIC; 
  signal CLK_GEN_clkfbout_buf : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_ML_NEW_O : STD_LOGIC; 
  signal CLK_GEN_clkout0 : STD_LOGIC; 
  signal CLK_PE : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_ML_NEW_DIVCLK : STD_LOGIC; 
  signal LOCKED_OBUF_498 : STD_LOGIC; 
  signal CLK_GEN_clkout1 : STD_LOGIC; 
  signal CLK_SYN : STD_LOGIC; 
  signal CLK_GEN_clkin1_0 : STD_LOGIC; 
  signal EN_0 : STD_LOGIC; 
  signal Q_PST_503 : STD_LOGIC; 
  signal START_505 : STD_LOGIC; 
  signal EQ_PE_I_GND_6_o_GND_6_o_equal_1_o_15_1 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal NRESET_I : STD_LOGIC; 
  signal EQ_PE_I_RDY_513 : STD_LOGIC; 
  signal D_SYN_10_0 : STD_LOGIC; 
  signal NRESET_I_inv_0 : STD_LOGIC; 
  signal D_SYN_11_0 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal N13_0 : STD_LOGIC; 
  signal N12_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal N3_0 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal N10_0 : STD_LOGIC; 
  signal N17_0 : STD_LOGIC; 
  signal N9_0 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal N15_0 : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal N5_0 : STD_LOGIC; 
  signal NOE_IBUF_0 : STD_LOGIC; 
  signal NE_SYN_0_0 : STD_LOGIC; 
  signal NE_IBUF_0 : STD_LOGIC; 
  signal EQ_PE_I_n0025_inv : STD_LOGIC; 
  signal NWE_IBUF_0 : STD_LOGIC; 
  signal D_SYN_0_0 : STD_LOGIC; 
  signal D_SYN_1_0 : STD_LOGIC; 
  signal D_SYN_2_0 : STD_LOGIC; 
  signal D_SYN_3_0 : STD_LOGIC; 
  signal D_SYN_4_0 : STD_LOGIC; 
  signal D_SYN_5_0 : STD_LOGIC; 
  signal D_SYN_6_0 : STD_LOGIC; 
  signal D_SYN_7_0 : STD_LOGIC; 
  signal D_SYN_8_0 : STD_LOGIC; 
  signal D_SYN_9_0 : STD_LOGIC; 
  signal TRISTATE : STD_LOGIC; 
  signal N_RESET_IBUF_0 : STD_LOGIC; 
  signal EQ_PE_I_Maccum_QINT_cy_3_Q_589 : STD_LOGIC; 
  signal EQ_PE_I_Maccum_QINT_cy_7_Q_590 : STD_LOGIC; 
  signal EQ_PE_I_Maccum_QINT_cy_11_Q_591 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO0 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO1 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO2 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO3 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO4 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO5 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO6 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO7 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO8 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO9 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO10 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO11 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO12 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO13 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO14 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DO15 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_CLKOUTDCM0 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_CLKOUT2 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_CLKOUT4 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_CLKFBDCM : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_CLKOUTDCM5 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_CLKOUTDCM1 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DRDY : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_CLKOUTDCM2 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_CLKOUT5 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_CLKOUTDCM4 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_CLKOUTDCM3 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_CLKOUT3 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI0 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI1 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI2 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI3 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI4 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI5 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI6 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI7 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI8 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI9 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI10 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI11 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI12 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI13 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI14 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DI15 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DADDR0 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DADDR1 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DADDR2 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DADDR3 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DADDR4 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_CLKIN1 : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DWE : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_RST_INT : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DEN : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_DCLK : STD_LOGIC; 
  signal CLK_GEN_pll_base_inst_PLL_ADV_CLKFBIN_INT : STD_LOGIC; 
  signal Eqn_0_mand1_46 : STD_LOGIC; 
  signal Eqn_1_mand1_40 : STD_LOGIC; 
  signal Eqn_2_mand1_34 : STD_LOGIC; 
  signal ProtoComp12_CYINITGND_0 : STD_LOGIC; 
  signal Eqn_3_mand1_20 : STD_LOGIC; 
  signal Eqn_4_mand1_83 : STD_LOGIC; 
  signal Eqn_5_mand1_77 : STD_LOGIC; 
  signal Eqn_6_mand1_71 : STD_LOGIC; 
  signal Eqn_7_mand1_57 : STD_LOGIC; 
  signal Eqn_8_mand1_120 : STD_LOGIC; 
  signal Eqn_9_mand1_114 : STD_LOGIC; 
  signal Eqn_10_mand1_108 : STD_LOGIC; 
  signal Eqn_11_mand1_94 : STD_LOGIC; 
  signal Eqn_12_mand1_155 : STD_LOGIC; 
  signal Eqn_13_mand1_149 : STD_LOGIC; 
  signal Eqn_14_mand1_143 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal NE_IBUF_203 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal NOE_IBUF_216 : STD_LOGIC; 
  signal N_RESET_IBUF_219 : STD_LOGIC; 
  signal NWE_IBUF_224 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal CLK_GEN_clkin1 : STD_LOGIC; 
  signal D_SYN_24_rt_289 : STD_LOGIC; 
  signal D_SYN_25_rt_284 : STD_LOGIC; 
  signal D_SYN_26_rt_281 : STD_LOGIC; 
  signal D_SYN_27_rt_275 : STD_LOGIC; 
  signal D_SYN_20_rt_322 : STD_LOGIC; 
  signal D_SYN_21_rt_317 : STD_LOGIC; 
  signal D_SYN_22_rt_314 : STD_LOGIC; 
  signal D_SYN_23_rt_308 : STD_LOGIC; 
  signal EN_371 : STD_LOGIC; 
  signal PSH_OUT : STD_LOGIC; 
  signal EQ_PE_I_GND_6_o_GND_6_o_equal_1_o : STD_LOGIC; 
  signal NE_SYN_1_rt_440 : STD_LOGIC; 
  signal NE_IBUF_rt_434 : STD_LOGIC; 
  signal NE_SYN_1_pack_1 : STD_LOGIC; 
  signal D_SYN_16_rt_459 : STD_LOGIC; 
  signal D_SYN_17_rt_454 : STD_LOGIC; 
  signal D_SYN_18_rt_451 : STD_LOGIC; 
  signal D_SYN_19_rt_445 : STD_LOGIC; 
  signal NRESET_I_inv : STD_LOGIC; 
  signal NlwBufferSignal_CLK_GEN_clkf_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1_I : STD_LOGIC; 
  signal NlwBufferSignal_CLK_GEN_clkout1_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_CLK_GEN_pll_base_inst_PLL_ADV_CLKIN2 : STD_LOGIC; 
  signal NlwBufferSignal_CLK_GEN_clkout2_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_I : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_QINT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATA_0_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_1_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_2_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_3_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_4_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_5_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_6_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_7_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_8_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_9_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_RDY_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_10_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_11_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_12_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_13_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_14_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_15_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_LOCKED_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_31_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_30_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_29_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_28_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_27_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_26_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_25_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_24_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_23_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_22_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_21_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_20_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_EN_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NWE_SYN_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NWE_SYN_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_NWE_SYN_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NWE_SYN_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_NWE_SYN_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NWE_SYN_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Y_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Y_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_EQ_PE_I_RDY_CLK : STD_LOGIC; 
  signal NlwBufferSignal_START_CLK : STD_LOGIC; 
  signal NlwBufferSignal_START_IN : STD_LOGIC; 
  signal NlwBufferSignal_Q_PST_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NOE_SYN_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NOE_SYN_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_NE_SYN_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NOE_SYN_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NOE_SYN_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_NE_SYN_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_19_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_18_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_17_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_16_IN : STD_LOGIC; 
  signal NlwBufferSignal_D_SYN_0_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_CLK_GEN_pll_base_inst_PLL_ADV_REL_UNCONNECTED : STD_LOGIC; 
  signal NLW_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_IOCLK_UNCONNECTED : STD_LOGIC; 
  signal NLW_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQ_PE_I_Maccum_QINT_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal EQ_PE_I_QINT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal D_SYN : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Y : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal NOE_SYN : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal NWE_SYN : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal NE_SYN : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal EQ_PE_I_Maccum_QINT_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  CLK_GEN_clkf_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y3",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_CLK_GEN_clkf_buf_IN,
      O => CLK_GEN_clkfbout_buf
    );
  SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1 : X_BUFIO2FB
    generic map(
      DIVIDE_BYPASS => TRUE,
      LOC => "BUFIO2FB_X1Y15"
    )
    port map (
      I => NlwBufferSignal_SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1_I,
      O => CLK_GEN_pll_base_inst_PLL_ADV_ML_NEW_O
    );
  CLK_GEN_clkout1_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_CLK_GEN_clkout1_buf_IN,
      O => CLK_PE
    );
  CLK_GEN_pll_base_inst_PLL_ADV_RSTINV : X_BUF
    generic map(
      LOC => "PLL_ADV_X0Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => CLK_GEN_pll_base_inst_PLL_ADV_RST_INT
    );
  CLK_GEN_pll_base_inst_PLL_ADV_CLKFBIN : X_BUF
    generic map(
      LOC => "PLL_ADV_X0Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_GEN_pll_base_inst_PLL_ADV_ML_NEW_O,
      O => CLK_GEN_pll_base_inst_PLL_ADV_CLKFBIN_INT
    );
  CLK_GEN_pll_base_inst_PLL_ADV : X_PLL_ADV
    generic map(
      COMPENSATION => "SYSTEM_SYNCHRONOUS",
      BANDWIDTH => "OPTIMIZED",
      CLK_FEEDBACK => "CLKFBOUT",
      SIM_DEVICE => "SPARTAN6",
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKFBOUT_PHASE => 0.000000,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT5_PHASE => 0.000000,
      REF_JITTER => 0.010000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT0_DIVIDE => 7,
      CLKOUT1_DIVIDE => 3,
      CLKOUT3_DIVIDE => 1,
      DIVCLK_DIVIDE => 1,
      CLKFBOUT_MULT => 42,
      CLKOUT5_DIVIDE => 1,
      CLKOUT2_DIVIDE => 1,
      CLKIN1_PERIOD => 40.000000,
      LOC => "PLL_ADV_X0Y0",
      CLKIN2_PERIOD => 40.000000,
      VCOCLK_FREQ_MAX => 1080.000000,
      VCOCLK_FREQ_MIN => 400.000000,
      CLKIN_FREQ_MAX => 540.000000,
      CLKIN_FREQ_MIN => 19.000000,
      CLKPFD_FREQ_MAX => 500.000000,
      CLKPFD_FREQ_MIN => 19.000000
    )
    port map (
      CLKFBIN => CLK_GEN_pll_base_inst_PLL_ADV_CLKFBIN_INT,
      DCLK => CLK_GEN_pll_base_inst_PLL_ADV_DCLK,
      DEN => CLK_GEN_pll_base_inst_PLL_ADV_DEN,
      CLKINSEL => GND,
      CLKIN2 => NlwBufferSignal_CLK_GEN_pll_base_inst_PLL_ADV_CLKIN2,
      RST => CLK_GEN_pll_base_inst_PLL_ADV_RST_INT,
      DWE => CLK_GEN_pll_base_inst_PLL_ADV_DWE,
      REL => NLW_CLK_GEN_pll_base_inst_PLL_ADV_REL_UNCONNECTED,
      CLKIN1 => CLK_GEN_pll_base_inst_PLL_ADV_CLKIN1,
      CLKOUT3 => CLK_GEN_pll_base_inst_PLL_ADV_CLKOUT3,
      CLKOUTDCM3 => CLK_GEN_pll_base_inst_PLL_ADV_CLKOUTDCM3,
      CLKFBOUT => CLK_GEN_clkfbout,
      CLKOUTDCM4 => CLK_GEN_pll_base_inst_PLL_ADV_CLKOUTDCM4,
      CLKOUT1 => CLK_GEN_clkout1,
      CLKOUT5 => CLK_GEN_pll_base_inst_PLL_ADV_CLKOUT5,
      CLKOUTDCM2 => CLK_GEN_pll_base_inst_PLL_ADV_CLKOUTDCM2,
      DRDY => CLK_GEN_pll_base_inst_PLL_ADV_DRDY,
      CLKOUTDCM1 => CLK_GEN_pll_base_inst_PLL_ADV_CLKOUTDCM1,
      CLKOUTDCM5 => CLK_GEN_pll_base_inst_PLL_ADV_CLKOUTDCM5,
      CLKFBDCM => CLK_GEN_pll_base_inst_PLL_ADV_CLKFBDCM,
      CLKOUT0 => CLK_GEN_clkout0,
      CLKOUT4 => CLK_GEN_pll_base_inst_PLL_ADV_CLKOUT4,
      CLKOUT2 => CLK_GEN_pll_base_inst_PLL_ADV_CLKOUT2,
      CLKOUTDCM0 => CLK_GEN_pll_base_inst_PLL_ADV_CLKOUTDCM0,
      LOCKED => LOCKED_OBUF_498,
      DADDR(4) => CLK_GEN_pll_base_inst_PLL_ADV_DADDR4,
      DADDR(3) => CLK_GEN_pll_base_inst_PLL_ADV_DADDR3,
      DADDR(2) => CLK_GEN_pll_base_inst_PLL_ADV_DADDR2,
      DADDR(1) => CLK_GEN_pll_base_inst_PLL_ADV_DADDR1,
      DADDR(0) => CLK_GEN_pll_base_inst_PLL_ADV_DADDR0,
      DI(15) => CLK_GEN_pll_base_inst_PLL_ADV_DI15,
      DI(14) => CLK_GEN_pll_base_inst_PLL_ADV_DI14,
      DI(13) => CLK_GEN_pll_base_inst_PLL_ADV_DI13,
      DI(12) => CLK_GEN_pll_base_inst_PLL_ADV_DI12,
      DI(11) => CLK_GEN_pll_base_inst_PLL_ADV_DI11,
      DI(10) => CLK_GEN_pll_base_inst_PLL_ADV_DI10,
      DI(9) => CLK_GEN_pll_base_inst_PLL_ADV_DI9,
      DI(8) => CLK_GEN_pll_base_inst_PLL_ADV_DI8,
      DI(7) => CLK_GEN_pll_base_inst_PLL_ADV_DI7,
      DI(6) => CLK_GEN_pll_base_inst_PLL_ADV_DI6,
      DI(5) => CLK_GEN_pll_base_inst_PLL_ADV_DI5,
      DI(4) => CLK_GEN_pll_base_inst_PLL_ADV_DI4,
      DI(3) => CLK_GEN_pll_base_inst_PLL_ADV_DI3,
      DI(2) => CLK_GEN_pll_base_inst_PLL_ADV_DI2,
      DI(1) => CLK_GEN_pll_base_inst_PLL_ADV_DI1,
      DI(0) => CLK_GEN_pll_base_inst_PLL_ADV_DI0,
      DO(15) => CLK_GEN_pll_base_inst_PLL_ADV_DO15,
      DO(14) => CLK_GEN_pll_base_inst_PLL_ADV_DO14,
      DO(13) => CLK_GEN_pll_base_inst_PLL_ADV_DO13,
      DO(12) => CLK_GEN_pll_base_inst_PLL_ADV_DO12,
      DO(11) => CLK_GEN_pll_base_inst_PLL_ADV_DO11,
      DO(10) => CLK_GEN_pll_base_inst_PLL_ADV_DO10,
      DO(9) => CLK_GEN_pll_base_inst_PLL_ADV_DO9,
      DO(8) => CLK_GEN_pll_base_inst_PLL_ADV_DO8,
      DO(7) => CLK_GEN_pll_base_inst_PLL_ADV_DO7,
      DO(6) => CLK_GEN_pll_base_inst_PLL_ADV_DO6,
      DO(5) => CLK_GEN_pll_base_inst_PLL_ADV_DO5,
      DO(4) => CLK_GEN_pll_base_inst_PLL_ADV_DO4,
      DO(3) => CLK_GEN_pll_base_inst_PLL_ADV_DO3,
      DO(2) => CLK_GEN_pll_base_inst_PLL_ADV_DO2,
      DO(1) => CLK_GEN_pll_base_inst_PLL_ADV_DO1,
      DO(0) => CLK_GEN_pll_base_inst_PLL_ADV_DO0
    );
  CLK_GEN_clkout2_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_CLK_GEN_clkout2_buf_IN,
      O => CLK_SYN
    );
  SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0 : X_BUFIO2
    generic map(
      DIVIDE => 1,
      DIVIDE_BYPASS => TRUE,
      I_INVERT => FALSE,
      USE_DOUBLER => FALSE,
      LOC => "BUFIO2_X1Y15"
    )
    port map (
      DIVCLK => CLK_GEN_pll_base_inst_PLL_ADV_ML_NEW_DIVCLK,
      I => NlwBufferSignal_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_I,
      IOCLK => NLW_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_IOCLK_UNCONNECTED,
      SERDESSTROBE => NLW_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED
    );
  EQ_PE_I_QINT_3 : X_FF
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_3_CLK,
      I => Result(3),
      O => EQ_PE_I_QINT(3),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"4444888844448888"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => START_505,
      ADR4 => EQ_PE_I_QINT(3),
      ADR0 => Y(3),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(3)
    );
  Eqn_3_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => START_505,
      ADR4 => EQ_PE_I_QINT(3),
      ADR3 => '1',
      O => Eqn_3_mand1_20
    );
  ProtoComp12_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X10Y4"
    )
    port map (
      O => ProtoComp12_CYINITGND_0
    );
  EQ_PE_I_QINT_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_2_CLK,
      I => Result(2),
      O => EQ_PE_I_QINT(2),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y4"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp12_CYINITGND_0,
      CO(3) => EQ_PE_I_Maccum_QINT_cy_3_Q_589,
      CO(2) => NLW_EQ_PE_I_Maccum_QINT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_EQ_PE_I_Maccum_QINT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_EQ_PE_I_Maccum_QINT_cy_3_CO_0_UNCONNECTED,
      DI(3) => Eqn_3_mand1_20,
      DI(2) => Eqn_2_mand1_34,
      DI(1) => Eqn_1_mand1_40,
      DI(0) => Eqn_0_mand1_46,
      O(3) => Result(3),
      O(2) => Result(2),
      O(1) => Result(1),
      O(0) => Result(0),
      S(3) => EQ_PE_I_Maccum_QINT_lut(3),
      S(2) => EQ_PE_I_Maccum_QINT_lut(2),
      S(1) => EQ_PE_I_Maccum_QINT_lut(1),
      S(0) => EQ_PE_I_Maccum_QINT_lut(0)
    );
  EQ_PE_I_Maccum_QINT_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"0C0CC0C00C0CC0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => START_505,
      ADR4 => EQ_PE_I_QINT(2),
      ADR2 => Y(2),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(2)
    );
  Eqn_2_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => START_505,
      ADR4 => EQ_PE_I_QINT(2),
      ADR3 => '1',
      O => Eqn_2_mand1_34
    );
  EQ_PE_I_QINT_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_1_CLK,
      I => Result(1),
      O => EQ_PE_I_QINT(1),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"00AAAA0000AAAA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => START_505,
      ADR4 => EQ_PE_I_QINT(1),
      ADR3 => Y(1),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(1)
    );
  Eqn_1_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"AAAA0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => START_505,
      ADR4 => EQ_PE_I_QINT(1),
      ADR3 => '1',
      O => Eqn_1_mand1_40
    );
  EQ_PE_I_QINT_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_0_CLK,
      I => Result(0),
      O => EQ_PE_I_QINT(0),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"5050A0A05050A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => START_505,
      ADR4 => EQ_PE_I_QINT(0),
      ADR0 => Y(0),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(0)
    );
  Eqn_0_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => START_505,
      ADR4 => EQ_PE_I_QINT(0),
      ADR3 => '1',
      O => Eqn_0_mand1_46
    );
  EQ_PE_I_QINT_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_7_CLK,
      I => Result(7),
      O => EQ_PE_I_QINT(7),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"00CCCC0000CCCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => START_505,
      ADR4 => EQ_PE_I_QINT(7),
      ADR3 => Y(7),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(7)
    );
  Eqn_7_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => START_505,
      ADR4 => EQ_PE_I_QINT(7),
      ADR3 => '1',
      O => Eqn_7_mand1_57
    );
  EQ_PE_I_QINT_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_6_CLK,
      I => Result(6),
      O => EQ_PE_I_QINT(6),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y5"
    )
    port map (
      CI => EQ_PE_I_Maccum_QINT_cy_3_Q_589,
      CYINIT => '0',
      CO(3) => EQ_PE_I_Maccum_QINT_cy_7_Q_590,
      CO(2) => NLW_EQ_PE_I_Maccum_QINT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_EQ_PE_I_Maccum_QINT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_EQ_PE_I_Maccum_QINT_cy_7_CO_0_UNCONNECTED,
      DI(3) => Eqn_7_mand1_57,
      DI(2) => Eqn_6_mand1_71,
      DI(1) => Eqn_5_mand1_77,
      DI(0) => Eqn_4_mand1_83,
      O(3) => Result(7),
      O(2) => Result(6),
      O(1) => Result(5),
      O(0) => Result(4),
      S(3) => EQ_PE_I_Maccum_QINT_lut(7),
      S(2) => EQ_PE_I_Maccum_QINT_lut(6),
      S(1) => EQ_PE_I_Maccum_QINT_lut(5),
      S(0) => EQ_PE_I_Maccum_QINT_lut(4)
    );
  EQ_PE_I_Maccum_QINT_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"2222888822228888"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => START_505,
      ADR4 => EQ_PE_I_QINT(6),
      ADR1 => Y(6),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(6)
    );
  Eqn_6_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"AAAA0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => START_505,
      ADR4 => EQ_PE_I_QINT(6),
      ADR3 => '1',
      O => Eqn_6_mand1_71
    );
  EQ_PE_I_QINT_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_5_CLK,
      I => Result(5),
      O => EQ_PE_I_QINT(5),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"3300CC003300CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => START_505,
      ADR4 => EQ_PE_I_QINT(5),
      ADR1 => Y(5),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(5)
    );
  Eqn_5_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => START_505,
      ADR4 => EQ_PE_I_QINT(5),
      ADR2 => '1',
      O => Eqn_5_mand1_77
    );
  EQ_PE_I_QINT_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_4_CLK,
      I => Result(4),
      O => EQ_PE_I_QINT(4),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"0F00F0000F00F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => START_505,
      ADR4 => EQ_PE_I_QINT(4),
      ADR2 => Y(4),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(4)
    );
  Eqn_4_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => START_505,
      ADR4 => EQ_PE_I_QINT(4),
      ADR2 => '1',
      O => Eqn_4_mand1_83
    );
  EQ_PE_I_QINT_11 : X_FF
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_11_CLK,
      I => Result(11),
      O => EQ_PE_I_QINT(11),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"00CCCC0000CCCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => START_505,
      ADR4 => EQ_PE_I_QINT(11),
      ADR3 => Y(11),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(11)
    );
  Eqn_11_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => START_505,
      ADR4 => EQ_PE_I_QINT(11),
      ADR3 => '1',
      O => Eqn_11_mand1_94
    );
  EQ_PE_I_QINT_10 : X_FF
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_10_CLK,
      I => Result(10),
      O => EQ_PE_I_QINT(10),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y6"
    )
    port map (
      CI => EQ_PE_I_Maccum_QINT_cy_7_Q_590,
      CYINIT => '0',
      CO(3) => EQ_PE_I_Maccum_QINT_cy_11_Q_591,
      CO(2) => NLW_EQ_PE_I_Maccum_QINT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_EQ_PE_I_Maccum_QINT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_EQ_PE_I_Maccum_QINT_cy_11_CO_0_UNCONNECTED,
      DI(3) => Eqn_11_mand1_94,
      DI(2) => Eqn_10_mand1_108,
      DI(1) => Eqn_9_mand1_114,
      DI(0) => Eqn_8_mand1_120,
      O(3) => Result(11),
      O(2) => Result(10),
      O(1) => Result(9),
      O(0) => Result(8),
      S(3) => EQ_PE_I_Maccum_QINT_lut(11),
      S(2) => EQ_PE_I_Maccum_QINT_lut(10),
      S(1) => EQ_PE_I_Maccum_QINT_lut(9),
      S(0) => EQ_PE_I_Maccum_QINT_lut(8)
    );
  EQ_PE_I_Maccum_QINT_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"3300CC003300CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => START_505,
      ADR4 => EQ_PE_I_QINT(10),
      ADR1 => Y(10),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(10)
    );
  Eqn_10_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => START_505,
      ADR4 => EQ_PE_I_QINT(10),
      ADR2 => '1',
      O => Eqn_10_mand1_108
    );
  EQ_PE_I_QINT_9 : X_FF
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_9_CLK,
      I => Result(9),
      O => EQ_PE_I_QINT(9),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"00AAAA0000AAAA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => START_505,
      ADR4 => EQ_PE_I_QINT(9),
      ADR3 => Y(9),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(9)
    );
  Eqn_9_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"AAAA0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => START_505,
      ADR4 => EQ_PE_I_QINT(9),
      ADR3 => '1',
      O => Eqn_9_mand1_114
    );
  EQ_PE_I_QINT_8 : X_FF
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_8_CLK,
      I => Result(8),
      O => EQ_PE_I_QINT(8),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"00F0F00000F0F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => START_505,
      ADR4 => EQ_PE_I_QINT(8),
      ADR3 => Y(8),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(8)
    );
  Eqn_8_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y6",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => START_505,
      ADR4 => EQ_PE_I_QINT(8),
      ADR3 => '1',
      O => Eqn_8_mand1_120
    );
  EQ_PE_I_QINT_15 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_15_CLK,
      I => Result(15),
      O => EQ_PE_I_QINT(15),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"00FF0000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => EQ_PE_I_QINT(15),
      ADR4 => START_505,
      ADR3 => Y(15),
      O => EQ_PE_I_Maccum_QINT_lut(15)
    );
  EQ_PE_I_QINT_14 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_14_CLK,
      I => Result(14),
      O => EQ_PE_I_QINT(14),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y7"
    )
    port map (
      CI => EQ_PE_I_Maccum_QINT_cy_11_Q_591,
      CYINIT => '0',
      CO(3) => NLW_EQ_PE_I_Maccum_QINT_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_EQ_PE_I_Maccum_QINT_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_EQ_PE_I_Maccum_QINT_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_EQ_PE_I_Maccum_QINT_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_EQ_PE_I_Maccum_QINT_xor_15_DI_3_UNCONNECTED,
      DI(2) => Eqn_14_mand1_143,
      DI(1) => Eqn_13_mand1_149,
      DI(0) => Eqn_12_mand1_155,
      O(3) => Result(15),
      O(2) => Result(14),
      O(1) => Result(13),
      O(0) => Result(12),
      S(3) => EQ_PE_I_Maccum_QINT_lut(15),
      S(2) => EQ_PE_I_Maccum_QINT_lut(14),
      S(1) => EQ_PE_I_Maccum_QINT_lut(13),
      S(0) => EQ_PE_I_Maccum_QINT_lut(12)
    );
  EQ_PE_I_Maccum_QINT_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"00AAAA0000AAAA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => START_505,
      ADR4 => EQ_PE_I_QINT(14),
      ADR3 => Y(14),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(14)
    );
  Eqn_14_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"AAAA0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => START_505,
      ADR4 => EQ_PE_I_QINT(14),
      ADR3 => '1',
      O => Eqn_14_mand1_143
    );
  EQ_PE_I_QINT_13 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_13_CLK,
      I => Result(13),
      O => EQ_PE_I_QINT(13),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"3300CC003300CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => START_505,
      ADR4 => EQ_PE_I_QINT(13),
      ADR1 => Y(13),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(13)
    );
  Eqn_13_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => START_505,
      ADR4 => EQ_PE_I_QINT(13),
      ADR2 => '1',
      O => Eqn_13_mand1_149
    );
  EQ_PE_I_QINT_12 : X_FF
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => '0'
    )
    port map (
      CE => EQ_PE_I_n0025_inv,
      CLK => NlwBufferSignal_EQ_PE_I_QINT_12_CLK,
      I => Result(12),
      O => EQ_PE_I_QINT(12),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_Maccum_QINT_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"00AAAA0000AAAA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => START_505,
      ADR4 => EQ_PE_I_QINT(12),
      ADR3 => Y(12),
      ADR5 => '1',
      O => EQ_PE_I_Maccum_QINT_lut(12)
    );
  Eqn_12_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y7",
      INIT => X"AAAA0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => START_505,
      ADR4 => EQ_PE_I_QINT(12),
      ADR3 => '1',
      O => Eqn_12_mand1_155
    );
  DATA_0_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_DATA_0_IOBUF_OBUFT_I,
      O => DATA(0),
      CTL => TRISTATE
    );
  DATA_0_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      O => N18,
      I => DATA(0)
    );
  ProtoComp15_IMUX : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  DATA_1_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD163"
    )
    port map (
      I => NlwBufferSignal_DATA_1_IOBUF_OBUFT_I,
      O => DATA(1),
      CTL => TRISTATE
    );
  DATA_1_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 202 ps
    )
    port map (
      O => N17,
      I => DATA(1)
    );
  ProtoComp15_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 202 ps
    )
    port map (
      I => N17,
      O => N17_0
    );
  DATA_2_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD164"
    )
    port map (
      I => NlwBufferSignal_DATA_2_IOBUF_OBUFT_I,
      O => DATA(2),
      CTL => TRISTATE
    );
  DATA_2_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 202 ps
    )
    port map (
      O => N16,
      I => DATA(2)
    );
  ProtoComp15_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 202 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  DATA_3_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => NlwBufferSignal_DATA_3_IOBUF_OBUFT_I,
      O => DATA(3),
      CTL => TRISTATE
    );
  DATA_3_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 202 ps
    )
    port map (
      O => N15,
      I => DATA(3)
    );
  ProtoComp15_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 202 ps
    )
    port map (
      I => N15,
      O => N15_0
    );
  DATA_4_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD168"
    )
    port map (
      I => NlwBufferSignal_DATA_4_IOBUF_OBUFT_I,
      O => DATA(4),
      CTL => TRISTATE
    );
  DATA_4_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 202 ps
    )
    port map (
      O => N14,
      I => DATA(4)
    );
  ProtoComp15_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 202 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  DATA_5_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => NlwBufferSignal_DATA_5_IOBUF_OBUFT_I,
      O => DATA(5),
      CTL => TRISTATE
    );
  DATA_5_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 202 ps
    )
    port map (
      O => N13,
      I => DATA(5)
    );
  ProtoComp15_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 202 ps
    )
    port map (
      I => N13,
      O => N13_0
    );
  DATA_6_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD170"
    )
    port map (
      I => NlwBufferSignal_DATA_6_IOBUF_OBUFT_I,
      O => DATA(6),
      CTL => TRISTATE
    );
  DATA_6_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 202 ps
    )
    port map (
      O => N12,
      I => DATA(6)
    );
  ProtoComp15_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 202 ps
    )
    port map (
      I => N12,
      O => N12_0
    );
  DATA_7_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => NlwBufferSignal_DATA_7_IOBUF_OBUFT_I,
      O => DATA(7),
      CTL => TRISTATE
    );
  DATA_7_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 202 ps
    )
    port map (
      O => N11,
      I => DATA(7)
    );
  ProtoComp15_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 202 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  NE_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      O => NE_IBUF_203,
      I => NE
    );
  ProtoComp16_IMUX : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      I => NE_IBUF_203,
      O => NE_IBUF_0
    );
  DATA_8_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD172"
    )
    port map (
      I => NlwBufferSignal_DATA_8_IOBUF_OBUFT_I,
      O => DATA(8),
      CTL => TRISTATE
    );
  DATA_8_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => N10,
      I => DATA(8)
    );
  ProtoComp15_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => N10,
      O => N10_0
    );
  DATA_9_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => NlwBufferSignal_DATA_9_IOBUF_OBUFT_I,
      O => DATA(9),
      CTL => TRISTATE
    );
  DATA_9_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 202 ps
    )
    port map (
      O => N9,
      I => DATA(9)
    );
  ProtoComp15_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 202 ps
    )
    port map (
      I => N9,
      O => N9_0
    );
  NOE_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      O => NOE_IBUF_216,
      I => NOE
    );
  ProtoComp16_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      I => NOE_IBUF_216,
      O => NOE_IBUF_0
    );
  N_RESET_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      O => N_RESET_IBUF_219,
      I => N_RESET
    );
  ProtoComp16_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      I => N_RESET_IBUF_219,
      O => N_RESET_IBUF_0
    );
  RDY_OBUF : X_OBUF
    generic map(
      LOC => "PAD178"
    )
    port map (
      I => NlwBufferSignal_RDY_OBUF_I,
      O => RDY
    );
  NWE_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      O => NWE_IBUF_224,
      I => NWE
    );
  ProtoComp16_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      I => NWE_IBUF_224,
      O => NWE_IBUF_0
    );
  DATA_10_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD174"
    )
    port map (
      I => NlwBufferSignal_DATA_10_IOBUF_OBUFT_I,
      O => DATA(10),
      CTL => TRISTATE
    );
  DATA_10_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 202 ps
    )
    port map (
      O => N8,
      I => DATA(10)
    );
  ProtoComp15_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 202 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  DATA_11_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD175"
    )
    port map (
      I => NlwBufferSignal_DATA_11_IOBUF_OBUFT_I,
      O => DATA(11),
      CTL => TRISTATE
    );
  DATA_11_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      O => N7,
      I => DATA(11)
    );
  ProtoComp15_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      I => N7,
      O => N7_0
    );
  DATA_12_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD176"
    )
    port map (
      I => NlwBufferSignal_DATA_12_IOBUF_OBUFT_I,
      O => DATA(12),
      CTL => TRISTATE
    );
  DATA_12_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      O => N6,
      I => DATA(12)
    );
  ProtoComp15_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  DATA_13_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD177"
    )
    port map (
      I => NlwBufferSignal_DATA_13_IOBUF_OBUFT_I,
      O => DATA(13),
      CTL => TRISTATE
    );
  DATA_13_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 202 ps
    )
    port map (
      O => N5,
      I => DATA(13)
    );
  ProtoComp15_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 202 ps
    )
    port map (
      I => N5,
      O => N5_0
    );
  DATA_14_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD180"
    )
    port map (
      I => NlwBufferSignal_DATA_14_IOBUF_OBUFT_I,
      O => DATA(14),
      CTL => TRISTATE
    );
  DATA_14_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 202 ps
    )
    port map (
      O => N4,
      I => DATA(14)
    );
  ProtoComp15_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 202 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  DATA_15_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD179"
    )
    port map (
      I => NlwBufferSignal_DATA_15_IOBUF_OBUFT_I,
      O => DATA(15),
      CTL => TRISTATE
    );
  DATA_15_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 202 ps
    )
    port map (
      O => N3,
      I => DATA(15)
    );
  ProtoComp15_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 202 ps
    )
    port map (
      I => N3,
      O => N3_0
    );
  CLK_GEN_clkin1_buf : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLK_GEN_clkin1,
      I => CLK
    );
  ProtoComp16_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_GEN_clkin1,
      O => CLK_GEN_clkin1_0
    );
  LOCKED_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_LOCKED_OBUF_I,
      O => LOCKED
    );
  D_SYN_31 : X_FF
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_31_CLK,
      I => NlwBufferSignal_D_SYN_31_IN,
      O => D_SYN(31),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_30 : X_FF
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_30_CLK,
      I => NlwBufferSignal_D_SYN_30_IN,
      O => D_SYN(30),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_29 : X_FF
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_29_CLK,
      I => NlwBufferSignal_D_SYN_29_IN,
      O => D_SYN(29),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_28 : X_FF
    generic map(
      LOC => "SLICE_X6Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_28_CLK,
      I => NlwBufferSignal_D_SYN_28_IN,
      O => D_SYN(28),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_27_D_SYN_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(11),
      O => D_SYN_11_0
    );
  D_SYN_27_D_SYN_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(10),
      O => D_SYN_10_0
    );
  D_SYN_27_D_SYN_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(9),
      O => D_SYN_9_0
    );
  D_SYN_27_D_SYN_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(8),
      O => D_SYN_8_0
    );
  D_SYN_27 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_27_CLK,
      I => NlwBufferSignal_D_SYN_27_IN,
      O => D_SYN(27),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_27_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => D_SYN(27),
      ADR3 => '1',
      O => D_SYN_27_rt_275
    );
  D_SYN_11 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_11_CLK,
      I => D_SYN_27_rt_275,
      O => D_SYN(11),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_26 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_26_CLK,
      I => NlwBufferSignal_D_SYN_26_IN,
      O => D_SYN(26),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_26_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => D_SYN(26),
      ADR3 => '1',
      O => D_SYN_26_rt_281
    );
  D_SYN_10 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_10_CLK,
      I => D_SYN_26_rt_281,
      O => D_SYN(10),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_25 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_25_CLK,
      I => NlwBufferSignal_D_SYN_25_IN,
      O => D_SYN(25),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_25_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => D_SYN(25),
      ADR3 => '1',
      O => D_SYN_25_rt_284
    );
  D_SYN_9 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_9_CLK,
      I => D_SYN_25_rt_284,
      O => D_SYN(9),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_24 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_24_CLK,
      I => NlwBufferSignal_D_SYN_24_IN,
      O => D_SYN(24),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_24_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => D_SYN(24),
      ADR3 => '1',
      O => D_SYN_24_rt_289
    );
  D_SYN_8 : X_FF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_8_CLK,
      I => D_SYN_24_rt_289,
      O => D_SYN(8),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_11 : X_FF
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_11_CLK,
      I => NlwBufferSignal_Y_11_IN,
      O => Y(11),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_10 : X_FF
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_10_CLK,
      I => NlwBufferSignal_Y_10_IN,
      O => Y(10),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_9 : X_FF
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_9_CLK,
      I => NlwBufferSignal_Y_9_IN,
      O => Y(9),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_8 : X_FF
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_8_CLK,
      I => NlwBufferSignal_Y_8_IN,
      O => Y(8),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_23_D_SYN_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(7),
      O => D_SYN_7_0
    );
  D_SYN_23_D_SYN_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(6),
      O => D_SYN_6_0
    );
  D_SYN_23_D_SYN_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(5),
      O => D_SYN_5_0
    );
  D_SYN_23_D_SYN_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(4),
      O => D_SYN_4_0
    );
  D_SYN_23 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_23_CLK,
      I => NlwBufferSignal_D_SYN_23_IN,
      O => D_SYN(23),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_23_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => D_SYN(23),
      ADR3 => '1',
      O => D_SYN_23_rt_308
    );
  D_SYN_7 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_7_CLK,
      I => D_SYN_23_rt_308,
      O => D_SYN(7),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_22 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_22_CLK,
      I => NlwBufferSignal_D_SYN_22_IN,
      O => D_SYN(22),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_22_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => D_SYN(22),
      ADR3 => '1',
      O => D_SYN_22_rt_314
    );
  D_SYN_6 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_6_CLK,
      I => D_SYN_22_rt_314,
      O => D_SYN(6),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_21 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_21_CLK,
      I => NlwBufferSignal_D_SYN_21_IN,
      O => D_SYN(21),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_21_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => D_SYN(21),
      ADR3 => '1',
      O => D_SYN_21_rt_317
    );
  D_SYN_5 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_5_CLK,
      I => D_SYN_21_rt_317,
      O => D_SYN(5),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_20 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_20_CLK,
      I => NlwBufferSignal_D_SYN_20_IN,
      O => D_SYN(20),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_20_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => D_SYN(20),
      ADR3 => '1',
      O => D_SYN_20_rt_322
    );
  D_SYN_4 : X_FF
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_4_CLK,
      I => D_SYN_20_rt_322,
      O => D_SYN(4),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_7 : X_FF
    generic map(
      LOC => "SLICE_X9Y5",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_7_CLK,
      I => NlwBufferSignal_Y_7_IN,
      O => Y(7),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_6 : X_FF
    generic map(
      LOC => "SLICE_X9Y5",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_6_CLK,
      I => NlwBufferSignal_Y_6_IN,
      O => Y(6),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_5 : X_FF
    generic map(
      LOC => "SLICE_X9Y5",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_5_CLK,
      I => NlwBufferSignal_Y_5_IN,
      O => Y(5),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_4 : X_FF
    generic map(
      LOC => "SLICE_X9Y5",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_4_CLK,
      I => NlwBufferSignal_Y_4_IN,
      O => Y(4),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_15 : X_FF
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_15_CLK,
      I => NlwBufferSignal_D_SYN_15_IN,
      O => D_SYN(15),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_14 : X_FF
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_14_CLK,
      I => NlwBufferSignal_D_SYN_14_IN,
      O => D_SYN(14),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_13 : X_FF
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_13_CLK,
      I => NlwBufferSignal_D_SYN_13_IN,
      O => D_SYN(13),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_GND_6_o_GND_6_o_equal_1_o_15_4_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => X"000000000F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => EQ_PE_I_QINT(15),
      ADR5 => EQ_PE_I_QINT(14),
      O => N37
    );
  D_SYN_12 : X_FF
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_12_CLK,
      I => NlwBufferSignal_D_SYN_12_IN,
      O => D_SYN(12),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_n0025_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y6",
      INIT => X"AAEAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => EQ_PE_I_QINT(8),
      ADR1 => EQ_PE_I_QINT(9),
      ADR0 => START_505,
      ADR2 => N37,
      ADR5 => EQ_PE_I_GND_6_o_GND_6_o_equal_1_o_15_1,
      ADR3 => N35,
      O => EQ_PE_I_n0025_inv
    );
  Y_15 : X_FF
    generic map(
      LOC => "SLICE_X9Y7",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_15_CLK,
      I => NlwBufferSignal_Y_15_IN,
      O => Y(15),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_14 : X_FF
    generic map(
      LOC => "SLICE_X9Y7",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_14_CLK,
      I => NlwBufferSignal_Y_14_IN,
      O => Y(14),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_13 : X_FF
    generic map(
      LOC => "SLICE_X9Y7",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_13_CLK,
      I => NlwBufferSignal_Y_13_IN,
      O => Y(13),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_12 : X_FF
    generic map(
      LOC => "SLICE_X9Y7",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_12_CLK,
      I => NlwBufferSignal_Y_12_IN,
      O => Y(12),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  TRISTATE_TRISTATE_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EN_371,
      O => EN_0
    );
  TRISTATE1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"FFFFFF00FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => NE_SYN_0_0,
      ADR3 => NOE_SYN(0),
      ADR5 => '1',
      O => TRISTATE
    );
  PSH_OUT1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"00005050"
    )
    port map (
      ADR1 => '1',
      ADR2 => NWE_SYN(0),
      ADR0 => NWE_SYN(1),
      ADR4 => NE_SYN_0_0,
      ADR3 => '1',
      O => PSH_OUT
    );
  EN : X_FF
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_EN_CLK,
      I => PSH_OUT,
      O => EN_371,
      RST => NRESET_I_inv_0,
      SET => GND
    );
  NWE_SYN_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_NWE_SYN_2_CLK,
      I => NlwBufferSignal_NWE_SYN_2_IN,
      O => NWE_SYN(2),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  NWE_SYN_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_NWE_SYN_1_CLK,
      I => NlwBufferSignal_NWE_SYN_1_IN,
      O => NWE_SYN(1),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  NWE_SYN_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_NWE_SYN_0_CLK,
      I => NlwBufferSignal_NWE_SYN_0_IN,
      O => NWE_SYN(0),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_3_CLK,
      I => NlwBufferSignal_Y_3_IN,
      O => Y(3),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_2_CLK,
      I => NlwBufferSignal_Y_2_IN,
      O => Y(2),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Y_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_1_CLK,
      I => NlwBufferSignal_Y_1_IN,
      O => Y(1),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_GND_6_o_GND_6_o_equal_1_o_15_2 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => EQ_PE_I_QINT(1),
      ADR5 => EQ_PE_I_QINT(0),
      ADR3 => EQ_PE_I_QINT(2),
      ADR1 => EQ_PE_I_QINT(3),
      ADR0 => EQ_PE_I_QINT(4),
      ADR4 => EQ_PE_I_QINT(5),
      O => EQ_PE_I_GND_6_o_GND_6_o_equal_1_o_15_1
    );
  Y_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      CE => EN_0,
      CLK => NlwBufferSignal_Y_0_CLK,
      I => NlwBufferSignal_Y_0_IN,
      O => Y(0),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  EQ_PE_I_GND_6_o_GND_6_o_equal_1_o_15_4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => X"FFFF7FFFFFFFFFFF"
    )
    port map (
      ADR0 => EQ_PE_I_QINT(12),
      ADR1 => EQ_PE_I_QINT(11),
      ADR3 => EQ_PE_I_QINT(10),
      ADR2 => EQ_PE_I_QINT(7),
      ADR5 => EQ_PE_I_QINT(6),
      ADR4 => EQ_PE_I_QINT(13),
      O => N35
    );
  EQ_PE_I_RDY : X_FF
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => '0'
    )
    port map (
      CE => NRESET_I,
      CLK => NlwBufferSignal_EQ_PE_I_RDY_CLK,
      I => EQ_PE_I_GND_6_o_GND_6_o_equal_1_o,
      O => EQ_PE_I_RDY_513,
      RST => GND,
      SET => GND
    );
  EQ_PE_I_GND_6_o_GND_6_o_equal_1_o_15_4 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => X"0000000000080000"
    )
    port map (
      ADR4 => EQ_PE_I_GND_6_o_GND_6_o_equal_1_o_15_1,
      ADR1 => EQ_PE_I_QINT(9),
      ADR0 => EQ_PE_I_QINT(8),
      ADR2 => EQ_PE_I_QINT(15),
      ADR3 => EQ_PE_I_QINT(14),
      ADR5 => N35,
      O => EQ_PE_I_GND_6_o_GND_6_o_equal_1_o
    );
  START : X_FF
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_START_CLK,
      I => NlwBufferSignal_START_IN,
      O => START_505,
      RST => NRESET_I_inv_0,
      SET => GND
    );
  Q_PST : X_FF
    generic map(
      LOC => "SLICE_X11Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Q_PST_CLK,
      I => '1',
      O => Q_PST_503,
      RST => START_505,
      SET => GND
    );
  NOE_SYN_1_NOE_SYN_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NE_SYN_1_pack_1,
      O => NE_SYN(1)
    );
  NOE_SYN_1_NOE_SYN_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NE_SYN(0),
      O => NE_SYN_0_0
    );
  NOE_SYN_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_NOE_SYN_1_CLK,
      I => NlwBufferSignal_NOE_SYN_1_IN,
      O => NOE_SYN(1),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  NE_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => NE_IBUF_0,
      O => NE_IBUF_rt_434
    );
  NE_SYN_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_NE_SYN_1_CLK,
      I => NE_IBUF_rt_434,
      O => NE_SYN_1_pack_1,
      RST => NRESET_I_inv_0,
      SET => GND
    );
  NOE_SYN_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_NOE_SYN_0_CLK,
      I => NlwBufferSignal_NOE_SYN_0_IN,
      O => NOE_SYN(0),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  NE_SYN_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => NE_SYN(1),
      O => NE_SYN_1_rt_440
    );
  NE_SYN_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_NE_SYN_0_CLK,
      I => NE_SYN_1_rt_440,
      O => NE_SYN(0),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_19_D_SYN_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(3),
      O => D_SYN_3_0
    );
  D_SYN_19_D_SYN_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(2),
      O => D_SYN_2_0
    );
  D_SYN_19_D_SYN_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(1),
      O => D_SYN_1_0
    );
  D_SYN_19_D_SYN_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(0),
      O => D_SYN_0_0
    );
  D_SYN_19 : X_FF
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_19_CLK,
      I => NlwBufferSignal_D_SYN_19_IN,
      O => D_SYN(19),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_19_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => D_SYN(19),
      ADR3 => '1',
      O => D_SYN_19_rt_445
    );
  D_SYN_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_3_CLK,
      I => D_SYN_19_rt_445,
      O => D_SYN(3),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_18 : X_FF
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_18_CLK,
      I => NlwBufferSignal_D_SYN_18_IN,
      O => D_SYN(18),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_18_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => D_SYN(18),
      ADR3 => '1',
      O => D_SYN_18_rt_451
    );
  D_SYN_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_2_CLK,
      I => D_SYN_18_rt_451,
      O => D_SYN(2),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_17 : X_FF
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_17_CLK,
      I => NlwBufferSignal_D_SYN_17_IN,
      O => D_SYN(17),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_17_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => D_SYN(17),
      ADR3 => '1',
      O => D_SYN_17_rt_454
    );
  D_SYN_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_1_CLK,
      I => D_SYN_17_rt_454,
      O => D_SYN(1),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_16 : X_FF
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_16_CLK,
      I => NlwBufferSignal_D_SYN_16_IN,
      O => D_SYN(16),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  D_SYN_16_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => D_SYN(16),
      ADR3 => '1',
      O => D_SYN_16_rt_459
    );
  D_SYN_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_D_SYN_0_CLK,
      I => D_SYN_16_rt_459,
      O => D_SYN(0),
      RST => NRESET_I_inv_0,
      SET => GND
    );
  NRESET_I_NRESET_I_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NRESET_I_inv,
      O => NRESET_I_inv_0
    );
  NRESET_I1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y6",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => LOCKED_OBUF_498,
      ADR2 => N_RESET_IBUF_0,
      ADR5 => '1',
      O => NRESET_I
    );
  NRESET_I_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y6",
      INIT => X"0F0FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => LOCKED_OBUF_498,
      ADR2 => N_RESET_IBUF_0,
      O => NRESET_I_inv
    );
  NlwBufferBlock_CLK_GEN_clkf_buf_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_GEN_clkfbout,
      O => NlwBufferSignal_CLK_GEN_clkf_buf_IN
    );
  NlwBufferBlock_SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_GEN_clkfbout_buf,
      O => NlwBufferSignal_SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1_I
    );
  NlwBufferBlock_CLK_GEN_clkout1_buf_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_GEN_clkout0,
      O => NlwBufferSignal_CLK_GEN_clkout1_buf_IN
    );
  NlwBufferBlock_CLK_GEN_pll_base_inst_PLL_ADV_CLKIN2 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_GEN_pll_base_inst_PLL_ADV_ML_NEW_DIVCLK,
      O => NlwBufferSignal_CLK_GEN_pll_base_inst_PLL_ADV_CLKIN2
    );
  NlwBufferBlock_CLK_GEN_clkout2_buf_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_GEN_clkout1,
      O => NlwBufferSignal_CLK_GEN_clkout2_buf_IN
    );
  NlwBufferBlock_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_GEN_clkin1_0,
      O => NlwBufferSignal_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_I
    );
  NlwBufferBlock_EQ_PE_I_QINT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_3_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_2_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_1_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_0_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_7_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_6_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_5_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_4_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_11_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_10_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_9_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_8_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_15_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_14_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_13_CLK
    );
  NlwBufferBlock_EQ_PE_I_QINT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_QINT_12_CLK
    );
  NlwBufferBlock_DATA_0_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(0),
      O => NlwBufferSignal_DATA_0_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_1_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(1),
      O => NlwBufferSignal_DATA_1_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_2_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(2),
      O => NlwBufferSignal_DATA_2_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_3_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(3),
      O => NlwBufferSignal_DATA_3_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_4_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(4),
      O => NlwBufferSignal_DATA_4_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_5_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(5),
      O => NlwBufferSignal_DATA_5_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_6_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(6),
      O => NlwBufferSignal_DATA_6_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_7_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(7),
      O => NlwBufferSignal_DATA_7_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_8_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(8),
      O => NlwBufferSignal_DATA_8_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_9_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(9),
      O => NlwBufferSignal_DATA_9_IOBUF_OBUFT_I
    );
  NlwBufferBlock_RDY_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_RDY_513,
      O => NlwBufferSignal_RDY_OBUF_I
    );
  NlwBufferBlock_DATA_10_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(10),
      O => NlwBufferSignal_DATA_10_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_11_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(11),
      O => NlwBufferSignal_DATA_11_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_12_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(12),
      O => NlwBufferSignal_DATA_12_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_13_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(13),
      O => NlwBufferSignal_DATA_13_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_14_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(14),
      O => NlwBufferSignal_DATA_14_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_15_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQ_PE_I_QINT(15),
      O => NlwBufferSignal_DATA_15_IOBUF_OBUFT_I
    );
  NlwBufferBlock_LOCKED_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => LOCKED_OBUF_498,
      O => NlwBufferSignal_LOCKED_OBUF_I
    );
  NlwBufferBlock_D_SYN_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_31_CLK
    );
  NlwBufferBlock_D_SYN_31_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N3_0,
      O => NlwBufferSignal_D_SYN_31_IN
    );
  NlwBufferBlock_D_SYN_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_30_CLK
    );
  NlwBufferBlock_D_SYN_30_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N4_0,
      O => NlwBufferSignal_D_SYN_30_IN
    );
  NlwBufferBlock_D_SYN_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_29_CLK
    );
  NlwBufferBlock_D_SYN_29_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N5_0,
      O => NlwBufferSignal_D_SYN_29_IN
    );
  NlwBufferBlock_D_SYN_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_28_CLK
    );
  NlwBufferBlock_D_SYN_28_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N6_0,
      O => NlwBufferSignal_D_SYN_28_IN
    );
  NlwBufferBlock_D_SYN_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_27_CLK
    );
  NlwBufferBlock_D_SYN_27_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N7_0,
      O => NlwBufferSignal_D_SYN_27_IN
    );
  NlwBufferBlock_D_SYN_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_11_CLK
    );
  NlwBufferBlock_D_SYN_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_26_CLK
    );
  NlwBufferBlock_D_SYN_26_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N8_0,
      O => NlwBufferSignal_D_SYN_26_IN
    );
  NlwBufferBlock_D_SYN_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_10_CLK
    );
  NlwBufferBlock_D_SYN_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_25_CLK
    );
  NlwBufferBlock_D_SYN_25_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N9_0,
      O => NlwBufferSignal_D_SYN_25_IN
    );
  NlwBufferBlock_D_SYN_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_9_CLK
    );
  NlwBufferBlock_D_SYN_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_24_CLK
    );
  NlwBufferBlock_D_SYN_24_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N10_0,
      O => NlwBufferSignal_D_SYN_24_IN
    );
  NlwBufferBlock_D_SYN_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_8_CLK
    );
  NlwBufferBlock_Y_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_11_CLK
    );
  NlwBufferBlock_Y_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN_11_0,
      O => NlwBufferSignal_Y_11_IN
    );
  NlwBufferBlock_Y_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_10_CLK
    );
  NlwBufferBlock_Y_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN_10_0,
      O => NlwBufferSignal_Y_10_IN
    );
  NlwBufferBlock_Y_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_9_CLK
    );
  NlwBufferBlock_Y_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN_9_0,
      O => NlwBufferSignal_Y_9_IN
    );
  NlwBufferBlock_Y_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_8_CLK
    );
  NlwBufferBlock_Y_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN_8_0,
      O => NlwBufferSignal_Y_8_IN
    );
  NlwBufferBlock_D_SYN_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_23_CLK
    );
  NlwBufferBlock_D_SYN_23_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N11_0,
      O => NlwBufferSignal_D_SYN_23_IN
    );
  NlwBufferBlock_D_SYN_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_7_CLK
    );
  NlwBufferBlock_D_SYN_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_22_CLK
    );
  NlwBufferBlock_D_SYN_22_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N12_0,
      O => NlwBufferSignal_D_SYN_22_IN
    );
  NlwBufferBlock_D_SYN_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_6_CLK
    );
  NlwBufferBlock_D_SYN_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_21_CLK
    );
  NlwBufferBlock_D_SYN_21_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N13_0,
      O => NlwBufferSignal_D_SYN_21_IN
    );
  NlwBufferBlock_D_SYN_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_5_CLK
    );
  NlwBufferBlock_D_SYN_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_20_CLK
    );
  NlwBufferBlock_D_SYN_20_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N14_0,
      O => NlwBufferSignal_D_SYN_20_IN
    );
  NlwBufferBlock_D_SYN_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_4_CLK
    );
  NlwBufferBlock_Y_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_7_CLK
    );
  NlwBufferBlock_Y_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN_7_0,
      O => NlwBufferSignal_Y_7_IN
    );
  NlwBufferBlock_Y_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_6_CLK
    );
  NlwBufferBlock_Y_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN_6_0,
      O => NlwBufferSignal_Y_6_IN
    );
  NlwBufferBlock_Y_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_5_CLK
    );
  NlwBufferBlock_Y_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN_5_0,
      O => NlwBufferSignal_Y_5_IN
    );
  NlwBufferBlock_Y_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_4_CLK
    );
  NlwBufferBlock_Y_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN_4_0,
      O => NlwBufferSignal_Y_4_IN
    );
  NlwBufferBlock_D_SYN_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_15_CLK
    );
  NlwBufferBlock_D_SYN_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(31),
      O => NlwBufferSignal_D_SYN_15_IN
    );
  NlwBufferBlock_D_SYN_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_14_CLK
    );
  NlwBufferBlock_D_SYN_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(30),
      O => NlwBufferSignal_D_SYN_14_IN
    );
  NlwBufferBlock_D_SYN_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_13_CLK
    );
  NlwBufferBlock_D_SYN_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(29),
      O => NlwBufferSignal_D_SYN_13_IN
    );
  NlwBufferBlock_D_SYN_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_12_CLK
    );
  NlwBufferBlock_D_SYN_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(28),
      O => NlwBufferSignal_D_SYN_12_IN
    );
  NlwBufferBlock_Y_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_15_CLK
    );
  NlwBufferBlock_Y_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(15),
      O => NlwBufferSignal_Y_15_IN
    );
  NlwBufferBlock_Y_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_14_CLK
    );
  NlwBufferBlock_Y_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(14),
      O => NlwBufferSignal_Y_14_IN
    );
  NlwBufferBlock_Y_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_13_CLK
    );
  NlwBufferBlock_Y_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(13),
      O => NlwBufferSignal_Y_13_IN
    );
  NlwBufferBlock_Y_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_12_CLK
    );
  NlwBufferBlock_Y_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN(12),
      O => NlwBufferSignal_Y_12_IN
    );
  NlwBufferBlock_EN_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_EN_CLK
    );
  NlwBufferBlock_NWE_SYN_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_NWE_SYN_2_CLK
    );
  NlwBufferBlock_NWE_SYN_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NWE_IBUF_0,
      O => NlwBufferSignal_NWE_SYN_2_IN
    );
  NlwBufferBlock_NWE_SYN_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_NWE_SYN_1_CLK
    );
  NlwBufferBlock_NWE_SYN_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NWE_SYN(2),
      O => NlwBufferSignal_NWE_SYN_1_IN
    );
  NlwBufferBlock_NWE_SYN_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_NWE_SYN_0_CLK
    );
  NlwBufferBlock_NWE_SYN_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NWE_SYN(1),
      O => NlwBufferSignal_NWE_SYN_0_IN
    );
  NlwBufferBlock_Y_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_3_CLK
    );
  NlwBufferBlock_Y_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN_3_0,
      O => NlwBufferSignal_Y_3_IN
    );
  NlwBufferBlock_Y_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_2_CLK
    );
  NlwBufferBlock_Y_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN_2_0,
      O => NlwBufferSignal_Y_2_IN
    );
  NlwBufferBlock_Y_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_1_CLK
    );
  NlwBufferBlock_Y_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN_1_0,
      O => NlwBufferSignal_Y_1_IN
    );
  NlwBufferBlock_Y_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_Y_0_CLK
    );
  NlwBufferBlock_Y_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => D_SYN_0_0,
      O => NlwBufferSignal_Y_0_IN
    );
  NlwBufferBlock_EQ_PE_I_RDY_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_EQ_PE_I_RDY_CLK
    );
  NlwBufferBlock_START_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_PE,
      O => NlwBufferSignal_START_CLK
    );
  NlwBufferBlock_START_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Q_PST_503,
      O => NlwBufferSignal_START_IN
    );
  NlwBufferBlock_Q_PST_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EN_0,
      O => NlwBufferSignal_Q_PST_CLK
    );
  NlwBufferBlock_NOE_SYN_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_NOE_SYN_1_CLK
    );
  NlwBufferBlock_NOE_SYN_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NOE_IBUF_0,
      O => NlwBufferSignal_NOE_SYN_1_IN
    );
  NlwBufferBlock_NE_SYN_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_NE_SYN_1_CLK
    );
  NlwBufferBlock_NOE_SYN_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_NOE_SYN_0_CLK
    );
  NlwBufferBlock_NOE_SYN_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NOE_SYN(1),
      O => NlwBufferSignal_NOE_SYN_0_IN
    );
  NlwBufferBlock_NE_SYN_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_NE_SYN_0_CLK
    );
  NlwBufferBlock_D_SYN_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_19_CLK
    );
  NlwBufferBlock_D_SYN_19_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N15_0,
      O => NlwBufferSignal_D_SYN_19_IN
    );
  NlwBufferBlock_D_SYN_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_3_CLK
    );
  NlwBufferBlock_D_SYN_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_18_CLK
    );
  NlwBufferBlock_D_SYN_18_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N16_0,
      O => NlwBufferSignal_D_SYN_18_IN
    );
  NlwBufferBlock_D_SYN_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_2_CLK
    );
  NlwBufferBlock_D_SYN_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_17_CLK
    );
  NlwBufferBlock_D_SYN_17_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N17_0,
      O => NlwBufferSignal_D_SYN_17_IN
    );
  NlwBufferBlock_D_SYN_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_1_CLK
    );
  NlwBufferBlock_D_SYN_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_16_CLK
    );
  NlwBufferBlock_D_SYN_16_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N18_0,
      O => NlwBufferSignal_D_SYN_16_IN
    );
  NlwBufferBlock_D_SYN_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SYN,
      O => NlwBufferSignal_D_SYN_0_CLK
    );
  NlwBlock_TOP_EQ_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_TOP_EQ_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

