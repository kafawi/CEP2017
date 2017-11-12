--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: TOP_EQ_timesim.vhd
-- /___/   /\     Timestamp: Thu Oct 19 14:34:30 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf TOP_EQ.pcf -rpw 100 -tpw 0 -ar Structure -tm TOP_EQ -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim TOP_EQ.ncd TOP_EQ_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: TOP_EQ.ncd
-- Output file	: \\filer\abx932\workspace\CE\lab1\netgen\par\TOP_EQ_timesim.vhd
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
    N_RESET : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    ARPE : in STD_LOGIC := 'X'; 
    OCPE : in STD_LOGIC := 'X'; 
    PWM_SIG : out STD_LOGIC; 
    LED : out STD_LOGIC; 
    CNT : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    ANODE : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    A_TO_G : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end TOP_EQ;

architecture Structure of TOP_EQ is
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal SEG7_ENABLE : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_TICK_INT_898 : STD_LOGIC; 
  signal LONG_CLK_N_RESET_inv : STD_LOGIC; 
  signal ARPE_IBUF_0 : STD_LOGIC; 
  signal PWM_INT_CCR_DFF_OUTPUT_8_0 : STD_LOGIC; 
  signal PWM_INT_HIGH_LEV_DFF_OUTPUT_8_0 : STD_LOGIC; 
  signal PWM_INT_CCR_DFF_OUTPUT_9_0 : STD_LOGIC; 
  signal PWM_INT_HIGH_LEV_DFF_OUTPUT_9_0 : STD_LOGIC; 
  signal OCPE_IBUF_0 : STD_LOGIC; 
  signal PWM_INT_HIGH_LEV_DFF_OUTPUT_10_0 : STD_LOGIC; 
  signal PWM_INT_HIGH_LEV_DFF_OUTPUT_11_0 : STD_LOGIC; 
  signal SEG7_TEMP1_927 : STD_LOGIC; 
  signal SEG7_TEMP2_931 : STD_LOGIC; 
  signal A_TO_G_4_OBUF_938 : STD_LOGIC; 
  signal SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o_inv : STD_LOGIC; 
  signal LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o_inv : STD_LOGIC; 
  signal LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o : STD_LOGIC; 
  signal SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o : STD_LOGIC; 
  signal SHORT_CLK_TICK_INT_958 : STD_LOGIC; 
  signal PWM_INT_CCR_DFF_OUTPUT_10_0 : STD_LOGIC; 
  signal PWM_INT_CCR_DFF_OUTPUT_11_0 : STD_LOGIC; 
  signal ANODE_2_OBUF_977 : STD_LOGIC; 
  signal ANODE_3_OBUF_0 : STD_LOGIC; 
  signal ANODE_0_OBUF_980 : STD_LOGIC; 
  signal ANODE_1_OBUF_0 : STD_LOGIC; 
  signal SEG7_Mcount_CLK_DIV_cy_3_Q_985 : STD_LOGIC; 
  signal SEG7_Mcount_CLK_DIV_cy_7_Q_990 : STD_LOGIC; 
  signal SEG7_Mcount_CLK_DIV_cy_11_Q_995 : STD_LOGIC; 
  signal SEG7_Mcount_CLK_DIV_cy_15_Q_1000 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_Q_1011 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_Q_1019 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_4_Q_1020 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_8_Q_1021 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_12_Q_1022 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_cy_3_Q_1023 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_cy_7_Q_1024 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_cy_11_Q_1025 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_cy_3_Q_1026 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_cy_7_Q_1027 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_cy_11_Q_1028 : STD_LOGIC; 
  signal PWM_INT_Mcompar_CNT_CMP_cy_3_Q_1029 : STD_LOGIC; 
  signal PWM_INT_Mcompar_CNT_CMP_cy_7_Q_1030 : STD_LOGIC; 
  signal PWM_INT_CMP_DFF_Q_1031 : STD_LOGIC; 
  signal SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o2_1033 : STD_LOGIC; 
  signal SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o1_1034 : STD_LOGIC; 
  signal LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o2_1035 : STD_LOGIC; 
  signal LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o1_1036 : STD_LOGIC; 
  signal SEG7_CLK_DIV_1_rt_18 : STD_LOGIC; 
  signal SEG7_CLK_DIV_2_rt_14 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal ProtoComp15_CYINITGND_0 : STD_LOGIC; 
  signal SEG7_CLK_DIV_3_rt_3 : STD_LOGIC; 
  signal SEG7_CLK_DIV_4_rt_49 : STD_LOGIC; 
  signal SEG7_CLK_DIV_5_rt_45 : STD_LOGIC; 
  signal SEG7_CLK_DIV_6_rt_41 : STD_LOGIC; 
  signal SEG7_CLK_DIV_7_rt_30 : STD_LOGIC; 
  signal SEG7_CLK_DIV_8_rt_76 : STD_LOGIC; 
  signal SEG7_CLK_DIV_9_rt_72 : STD_LOGIC; 
  signal SEG7_CLK_DIV_10_rt_68 : STD_LOGIC; 
  signal SEG7_CLK_DIV_11_rt_57 : STD_LOGIC; 
  signal SEG7_CLK_DIV_12_rt_103 : STD_LOGIC; 
  signal SEG7_CLK_DIV_13_rt_99 : STD_LOGIC; 
  signal SEG7_CLK_DIV_14_rt_95 : STD_LOGIC; 
  signal SEG7_CLK_DIV_15_rt_84 : STD_LOGIC; 
  signal SEG7_CLK_DIV_16_rt_114 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_0_Q : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_1_Q : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_2_Q : STD_LOGIC; 
  signal ProtoComp18_CYINITGND_0 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_3_Q : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_4_Q : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_5_Q : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o_pack_1 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT1 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT2 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT3 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT4 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT5 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT6 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT7 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT8 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT9 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT10 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT11 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT12 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT13 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT14 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT15 : STD_LOGIC; 
  signal LONG_CLK_CNT_INT_0_rt_308 : STD_LOGIC; 
  signal LONG_CLK_CNT_INT_1_rt_303 : STD_LOGIC; 
  signal LONG_CLK_CNT_INT_2_rt_299 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT1 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT2 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT3 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_lut_3_Q_287 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_lut_4_Q_339 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_lut_5_Q_334 : STD_LOGIC; 
  signal LONG_CLK_CNT_INT_6_rt_330 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT4 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT5 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT6 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT7 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_lut_7_Q_317 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_lut_8_Q_372 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_lut_9_Q_367 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_lut_10_Q_362 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT8 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT9 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT10 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT11 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_lut_11_Q_349 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_lut_12_Q_403 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_lut_13_Q_398 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_lut_14_Q_393 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT12 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT13 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT14 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT15 : STD_LOGIC; 
  signal LONG_CLK_Mcount_CNT_INT_lut_15_Q_382 : STD_LOGIC; 
  signal SHORT_CLK_CNT_INT_0_rt_432 : STD_LOGIC; 
  signal SHORT_CLK_CNT_INT_1_rt_427 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_lut_2_Q_422 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT1 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT2 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT3 : STD_LOGIC; 
  signal SHORT_CLK_CNT_INT_3_rt_412 : STD_LOGIC; 
  signal SHORT_CLK_CNT_INT_4_rt_463 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_lut_5_Q_458 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_lut_6_Q_453 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT4 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT5 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT6 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT7 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_lut_7_Q_441 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_lut_8_Q_494 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_lut_9_Q_489 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_lut_10_Q_484 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT8 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT9 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT10 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT11 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_lut_11_Q_472 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_lut_12_Q_524 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_lut_13_Q_519 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_lut_14_Q_514 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT12 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT13 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT14 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT15 : STD_LOGIC; 
  signal SHORT_CLK_Mcount_CNT_INT_lut_15_Q_504 : STD_LOGIC; 
  signal PWM_INT_Mcompar_CNT_CMP_lutdi_552 : STD_LOGIC; 
  signal PWM_INT_Mcompar_CNT_CMP_lutdi1_546 : STD_LOGIC; 
  signal PWM_INT_Mcompar_CNT_CMP_lutdi2_540 : STD_LOGIC; 
  signal ProtoComp30_CYINITGND_0 : STD_LOGIC; 
  signal PWM_INT_Mcompar_CNT_CMP_lutdi3_532 : STD_LOGIC; 
  signal PWM_INT_Mcompar_CNT_CMP_lutdi4_582 : STD_LOGIC; 
  signal PWM_INT_Mcompar_CNT_CMP_lutdi5_576 : STD_LOGIC; 
  signal PWM_INT_Mcompar_CNT_CMP_lutdi6_570 : STD_LOGIC; 
  signal PWM_INT_Mcompar_CNT_CMP_lutdi7_562 : STD_LOGIC; 
  signal PWM_INT_CNT_CMP : STD_LOGIC; 
  signal OCPE_IBUF_622 : STD_LOGIC; 
  signal ProtoComp36_IINV_OUT : STD_LOGIC; 
  signal LONG_CLK_N_RESET_inv_non_inverted : STD_LOGIC; 
  signal ARPE_IBUF_649 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_664 : STD_LOGIC; 
  signal ANODE_1_OBUF_667 : STD_LOGIC; 
  signal ANODE_3_OBUF_689 : STD_LOGIC; 
  signal LONG_CLK_CNT_INT_8_rt_782 : STD_LOGIC; 
  signal LONG_CLK_CNT_INT_9_rt_780 : STD_LOGIC; 
  signal LONG_CLK_CNT_INT_10_rt_777 : STD_LOGIC; 
  signal LONG_CLK_CNT_INT_11_rt_772 : STD_LOGIC; 
  signal PWM_INT_HIGH_LEV_DFF_OUTPUT_8_rt_829 : STD_LOGIC; 
  signal PWM_INT_HIGH_LEV_DFF_OUTPUT_9_rt_827 : STD_LOGIC; 
  signal PWM_INT_HIGH_LEV_DFF_OUTPUT_10_rt_824 : STD_LOGIC; 
  signal PWM_INT_HIGH_LEV_DFF_OUTPUT_11_rt_819 : STD_LOGIC; 
  signal PWM_INT_PERIOD_DFF_OUTPUT_9_rstpot_851 : STD_LOGIC; 
  signal PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_5_inv : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_CLK_DIV_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LONG_CLK_CNT_INT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_CNT_INT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CMP_DFF_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ANODE_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_A_TO_G_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ANODE_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ANODE_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ANODE_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_A_TO_G_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_A_TO_G_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_A_TO_G_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_PWM_SIG_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CNT_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_SEL_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_SEL_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_TEMP2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_TEMP2_IN : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_TEMP1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SEG7_TEMP1_IN : STD_LOGIC; 
  signal NlwBufferSignal_SHORT_CLK_TICK_INT_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_ARR_DFF_OUTPUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_ARR_DFF_OUTPUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_PERIOD_DFF_OUTPUT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_INT_CNT_FSM_TICK_INT_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_50_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_49_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_48_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_54_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_53_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_52_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_51_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_58_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_57_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_56_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_55_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_62_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_61_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_60_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_59_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SEG7_Mcount_CLK_DIV_xor_16_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_31_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_8_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_35_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_4_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_4_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_4_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_34_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_33_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_32_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_39_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_8_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_8_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_8_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_38_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_37_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_36_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_43_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_12_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_12_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_12_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_42_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_41_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_40_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_45_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_44_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_4_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_3_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_2_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_8_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_7_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_6_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_5_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_12_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_11_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_10_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_9_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_LONG_CLK_Mcount_CNT_INT_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_15_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_14_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_13_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_19_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_18_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_17_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_16_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_23_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_22_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_21_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_20_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_27_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_26_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_25_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_24_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SHORT_CLK_Mcount_CNT_INT_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_30_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_29_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_A_TO_G_6_OBUF_1_28_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_9_A6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal SEG7_SEL : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal PWM_INT_PERIOD_DFF_OUTPUT : STD_LOGIC_VECTOR ( 9 downto 9 ); 
  signal PWM_INT_CCR_DFF_OUTPUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal PWM_INT_HIGH_LEV_DFF_OUTPUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal LONG_CLK_CNT_INT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal SEG7_CLK_DIV : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal SHORT_CLK_CNT_INT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal PWM_INT_ARR_DFF_OUTPUT : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal PWM_INT_CNT_FSM_CNT_INT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal SEG7_Mcount_CLK_DIV_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal PWM_INT_CNT_FSM_Mcount_CNT_INT_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal PWM_INT_Mcompar_CNT_CMP_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  CLK_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_CLK_BUFGP_BUFG_IN,
      O => CLK_BUFGP
    );
  SEG7_CLK_DIV_3 : X_FF
    generic map(
      LOC => "SLICE_X20Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_3_CLK,
      I => Result(3),
      O => SEG7_CLK_DIV(3),
      RST => GND,
      SET => GND
    );
  SEG7_CLK_DIV_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y15",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(3),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_3_rt_3
    );
  A_TO_G_6_OBUF_1_50_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_50_D5LUT_O_UNCONNECTED
    );
  ProtoComp15_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X20Y15"
    )
    port map (
      O => ProtoComp15_CYINITGND_0
    );
  SEG7_CLK_DIV_2 : X_FF
    generic map(
      LOC => "SLICE_X20Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_2_CLK,
      I => Result(2),
      O => SEG7_CLK_DIV(2),
      RST => GND,
      SET => GND
    );
  SEG7_Mcount_CLK_DIV_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y15"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp15_CYINITGND_0,
      CO(3) => SEG7_Mcount_CLK_DIV_cy_3_Q_985,
      CO(2) => NLW_SEG7_Mcount_CLK_DIV_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_SEG7_Mcount_CLK_DIV_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_SEG7_Mcount_CLK_DIV_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Result(3),
      O(2) => Result(2),
      O(1) => Result_1_1,
      O(0) => Result_0_1,
      S(3) => SEG7_CLK_DIV_3_rt_3,
      S(2) => SEG7_CLK_DIV_2_rt_14,
      S(1) => SEG7_CLK_DIV_1_rt_18,
      S(0) => SEG7_Mcount_CLK_DIV_lut(0)
    );
  SEG7_CLK_DIV_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y15",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(2),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_2_rt_14
    );
  A_TO_G_6_OBUF_1_49_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_49_C5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_1 : X_FF
    generic map(
      LOC => "SLICE_X20Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_1_CLK,
      I => Result_1_1,
      O => SEG7_CLK_DIV(1),
      RST => GND,
      SET => GND
    );
  SEG7_CLK_DIV_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y15",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(1),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_1_rt_18
    );
  A_TO_G_6_OBUF_1_48_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_48_B5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_0 : X_FF
    generic map(
      LOC => "SLICE_X20Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_0_CLK,
      I => Result_0_1,
      O => SEG7_CLK_DIV(0),
      RST => GND,
      SET => GND
    );
  SEG7_Mcount_CLK_DIV_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y15",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(0),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_Mcount_CLK_DIV_lut(0)
    );
  N0_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y15",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_A5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_7 : X_FF
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_7_CLK,
      I => Result(7),
      O => SEG7_CLK_DIV(7),
      RST => GND,
      SET => GND
    );
  SEG7_CLK_DIV_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(7),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_7_rt_30
    );
  A_TO_G_6_OBUF_1_54_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_54_D5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_6 : X_FF
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_6_CLK,
      I => Result(6),
      O => SEG7_CLK_DIV(6),
      RST => GND,
      SET => GND
    );
  SEG7_Mcount_CLK_DIV_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y16"
    )
    port map (
      CI => SEG7_Mcount_CLK_DIV_cy_3_Q_985,
      CYINIT => '0',
      CO(3) => SEG7_Mcount_CLK_DIV_cy_7_Q_990,
      CO(2) => NLW_SEG7_Mcount_CLK_DIV_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_SEG7_Mcount_CLK_DIV_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_SEG7_Mcount_CLK_DIV_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(7),
      O(2) => Result(6),
      O(1) => Result(5),
      O(0) => Result(4),
      S(3) => SEG7_CLK_DIV_7_rt_30,
      S(2) => SEG7_CLK_DIV_6_rt_41,
      S(1) => SEG7_CLK_DIV_5_rt_45,
      S(0) => SEG7_CLK_DIV_4_rt_49
    );
  SEG7_CLK_DIV_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(6),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_6_rt_41
    );
  A_TO_G_6_OBUF_1_53_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_53_C5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_5 : X_FF
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_5_CLK,
      I => Result(5),
      O => SEG7_CLK_DIV(5),
      RST => GND,
      SET => GND
    );
  SEG7_CLK_DIV_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(5),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_5_rt_45
    );
  A_TO_G_6_OBUF_1_52_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_52_B5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_4 : X_FF
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_4_CLK,
      I => Result(4),
      O => SEG7_CLK_DIV(4),
      RST => GND,
      SET => GND
    );
  SEG7_CLK_DIV_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(4),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_4_rt_49
    );
  A_TO_G_6_OBUF_1_51_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_51_A5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_11 : X_FF
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_11_CLK,
      I => Result(11),
      O => SEG7_CLK_DIV(11),
      RST => GND,
      SET => GND
    );
  SEG7_CLK_DIV_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(11),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_11_rt_57
    );
  A_TO_G_6_OBUF_1_58_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_58_D5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_10 : X_FF
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_10_CLK,
      I => Result(10),
      O => SEG7_CLK_DIV(10),
      RST => GND,
      SET => GND
    );
  SEG7_Mcount_CLK_DIV_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y17"
    )
    port map (
      CI => SEG7_Mcount_CLK_DIV_cy_7_Q_990,
      CYINIT => '0',
      CO(3) => SEG7_Mcount_CLK_DIV_cy_11_Q_995,
      CO(2) => NLW_SEG7_Mcount_CLK_DIV_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_SEG7_Mcount_CLK_DIV_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_SEG7_Mcount_CLK_DIV_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(11),
      O(2) => Result(10),
      O(1) => Result(9),
      O(0) => Result(8),
      S(3) => SEG7_CLK_DIV_11_rt_57,
      S(2) => SEG7_CLK_DIV_10_rt_68,
      S(1) => SEG7_CLK_DIV_9_rt_72,
      S(0) => SEG7_CLK_DIV_8_rt_76
    );
  SEG7_CLK_DIV_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(10),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_10_rt_68
    );
  A_TO_G_6_OBUF_1_57_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_57_C5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_9 : X_FF
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_9_CLK,
      I => Result(9),
      O => SEG7_CLK_DIV(9),
      RST => GND,
      SET => GND
    );
  SEG7_CLK_DIV_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(9),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_9_rt_72
    );
  A_TO_G_6_OBUF_1_56_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_56_B5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_8 : X_FF
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_8_CLK,
      I => Result(8),
      O => SEG7_CLK_DIV(8),
      RST => GND,
      SET => GND
    );
  SEG7_CLK_DIV_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(8),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_8_rt_76
    );
  A_TO_G_6_OBUF_1_55_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_55_A5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_15 : X_FF
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_15_CLK,
      I => Result(15),
      O => SEG7_CLK_DIV(15),
      RST => GND,
      SET => GND
    );
  SEG7_CLK_DIV_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(15),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_15_rt_84
    );
  A_TO_G_6_OBUF_1_62_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_62_D5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_14 : X_FF
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_14_CLK,
      I => Result(14),
      O => SEG7_CLK_DIV(14),
      RST => GND,
      SET => GND
    );
  SEG7_Mcount_CLK_DIV_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y18"
    )
    port map (
      CI => SEG7_Mcount_CLK_DIV_cy_11_Q_995,
      CYINIT => '0',
      CO(3) => SEG7_Mcount_CLK_DIV_cy_15_Q_1000,
      CO(2) => NLW_SEG7_Mcount_CLK_DIV_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_SEG7_Mcount_CLK_DIV_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_SEG7_Mcount_CLK_DIV_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(15),
      O(2) => Result(14),
      O(1) => Result(13),
      O(0) => Result(12),
      S(3) => SEG7_CLK_DIV_15_rt_84,
      S(2) => SEG7_CLK_DIV_14_rt_95,
      S(1) => SEG7_CLK_DIV_13_rt_99,
      S(0) => SEG7_CLK_DIV_12_rt_103
    );
  SEG7_CLK_DIV_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(14),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_14_rt_95
    );
  A_TO_G_6_OBUF_1_61_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_61_C5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_13 : X_FF
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_13_CLK,
      I => Result(13),
      O => SEG7_CLK_DIV(13),
      RST => GND,
      SET => GND
    );
  SEG7_CLK_DIV_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(13),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_13_rt_99
    );
  A_TO_G_6_OBUF_1_60_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_60_B5LUT_O_UNCONNECTED
    );
  SEG7_CLK_DIV_12 : X_FF
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_12_CLK,
      I => Result(12),
      O => SEG7_CLK_DIV(12),
      RST => GND,
      SET => GND
    );
  SEG7_CLK_DIV_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_CLK_DIV(12),
      ADR3 => '1',
      ADR5 => '1',
      O => SEG7_CLK_DIV_12_rt_103
    );
  A_TO_G_6_OBUF_1_59_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_59_A5LUT_O_UNCONNECTED
    );
  SEG7_Mcount_CLK_DIV_xor_16_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y19"
    )
    port map (
      CI => SEG7_Mcount_CLK_DIV_cy_15_Q_1000,
      CYINIT => '0',
      CO(3) => NLW_SEG7_Mcount_CLK_DIV_xor_16_CO_3_UNCONNECTED,
      CO(2) => NLW_SEG7_Mcount_CLK_DIV_xor_16_CO_2_UNCONNECTED,
      CO(1) => NLW_SEG7_Mcount_CLK_DIV_xor_16_CO_1_UNCONNECTED,
      CO(0) => NLW_SEG7_Mcount_CLK_DIV_xor_16_CO_0_UNCONNECTED,
      DI(3) => NLW_SEG7_Mcount_CLK_DIV_xor_16_DI_3_UNCONNECTED,
      DI(2) => NLW_SEG7_Mcount_CLK_DIV_xor_16_DI_2_UNCONNECTED,
      DI(1) => NLW_SEG7_Mcount_CLK_DIV_xor_16_DI_1_UNCONNECTED,
      DI(0) => NLW_SEG7_Mcount_CLK_DIV_xor_16_DI_0_UNCONNECTED,
      O(3) => NLW_SEG7_Mcount_CLK_DIV_xor_16_O_3_UNCONNECTED,
      O(2) => NLW_SEG7_Mcount_CLK_DIV_xor_16_O_2_UNCONNECTED,
      O(1) => NLW_SEG7_Mcount_CLK_DIV_xor_16_O_1_UNCONNECTED,
      O(0) => Result(16),
      S(3) => NLW_SEG7_Mcount_CLK_DIV_xor_16_S_3_UNCONNECTED,
      S(2) => NLW_SEG7_Mcount_CLK_DIV_xor_16_S_2_UNCONNECTED,
      S(1) => NLW_SEG7_Mcount_CLK_DIV_xor_16_S_1_UNCONNECTED,
      S(0) => SEG7_CLK_DIV_16_rt_114
    );
  SEG7_CLK_DIV_16 : X_FF
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_CLK_DIV_16_CLK,
      I => Result(16),
      O => SEG7_CLK_DIV(16),
      RST => GND,
      SET => GND
    );
  SEG7_CLK_DIV_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => SEG7_CLK_DIV(16),
      ADR4 => '1',
      ADR3 => '1',
      O => SEG7_CLK_DIV_16_rt_114
    );
  PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y53",
      INIT => X"00000A0500000A05"
    )
    port map (
      ADR1 => '1',
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(10),
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(11),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(9),
      ADR0 => PWM_INT_ARR_DFF_OUTPUT(3),
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_3_Q
    );
  N0_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y53",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_5_D5LUT_O_UNCONNECTED
    );
  ProtoComp18_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X36Y53"
    )
    port map (
      O => ProtoComp18_CYINITGND_0
    );
  PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y53"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp18_CYINITGND_0,
      CO(3) => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_Q_1011,
      CO(2) => NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_O_0_UNCONNECTED,
      S(3) => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_3_Q,
      S(2) => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_2_Q,
      S(1) => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_1_Q,
      S(0) => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_0_Q
    );
  PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y53",
      INIT => X"0000000F0000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(6),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(7),
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(8),
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_2_Q
    );
  N0_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y53",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_4_C5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y53",
      INIT => X"A0000005A0000005"
    )
    port map (
      ADR1 => '1',
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(3),
      ADR4 => PWM_INT_ARR_DFF_OUTPUT(3),
      ADR0 => PWM_INT_CNT_FSM_CNT_INT(4),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(5),
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_1_Q
    );
  N0_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y53",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_3_B5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y53",
      INIT => X"0000000F0000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(0),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(1),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(2),
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_0_Q
    );
  N0_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y53",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_2_A5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_0_PWM_INT_CNT_FSM_CNT_INT_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o_pack_1,
      O => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o
    );
  PWM_INT_CNT_FSM_CNT_INT_0 : X_FF
    generic map(
      LOC => "SLICE_X36Y54",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_0_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT,
      O => PWM_INT_CNT_FSM_CNT_INT(0),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y54",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(0),
      ADR0 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(0)
    );
  A_TO_G_6_OBUF_1_31_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_31_D5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y54"
    )
    port map (
      CI => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_3_Q_1011,
      CYINIT => '0',
      CO(3) => PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_Q_1019,
      CO(2) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_CO_2_UNCONNECTED,
      CO(1) => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o_pack_1,
      CO(0) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_DI_2_UNCONNECTED,
      DI(1) => '1',
      DI(0) => '1',
      O(3) => PWM_INT_CNT_FSM_Mcount_CNT_INT,
      O(2) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_O_2_UNCONNECTED,
      O(1) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_O_1_UNCONNECTED,
      O(0) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_O_0_UNCONNECTED,
      S(3) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(0),
      S(2) => '1',
      S(1) => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_5_Q,
      S(0) => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_4_Q
    );
  N0_8_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X36Y54",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N0_8_C6LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_5_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y54",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(15),
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_5_Q
    );
  N0_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y54",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_7_B5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y54",
      INIT => X"0000000F0000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(12),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(13),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(14),
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_lut_4_Q
    );
  N0_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y54",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_6_A5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_4 : X_FF
    generic map(
      LOC => "SLICE_X36Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_4_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT4,
      O => PWM_INT_CNT_FSM_CNT_INT(4),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y55",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(4),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(4)
    );
  A_TO_G_6_OBUF_1_35_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_35_D5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_3 : X_FF
    generic map(
      LOC => "SLICE_X36Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_3_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT3,
      O => PWM_INT_CNT_FSM_CNT_INT(3),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_4_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y55"
    )
    port map (
      CI => PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_0_Q_1019,
      CYINIT => '0',
      CO(3) => PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_4_Q_1020,
      CO(2) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_4_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_4_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_4_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => PWM_INT_CNT_FSM_Mcount_CNT_INT4,
      O(2) => PWM_INT_CNT_FSM_Mcount_CNT_INT3,
      O(1) => PWM_INT_CNT_FSM_Mcount_CNT_INT2,
      O(0) => PWM_INT_CNT_FSM_Mcount_CNT_INT1,
      S(3) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(4),
      S(2) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(3),
      S(1) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(2),
      S(0) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(1)
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y55",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(3),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(3)
    );
  A_TO_G_6_OBUF_1_34_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_34_C5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_2 : X_FF
    generic map(
      LOC => "SLICE_X36Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_2_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT2,
      O => PWM_INT_CNT_FSM_CNT_INT(2),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y55",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(2),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(2)
    );
  A_TO_G_6_OBUF_1_33_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_33_B5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_1 : X_FF
    generic map(
      LOC => "SLICE_X36Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_1_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT1,
      O => PWM_INT_CNT_FSM_CNT_INT(1),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y55",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(1),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(1)
    );
  A_TO_G_6_OBUF_1_32_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_32_A5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_8 : X_FF
    generic map(
      LOC => "SLICE_X36Y56",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_8_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT8,
      O => PWM_INT_CNT_FSM_CNT_INT(8),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y56",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(8),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(8)
    );
  A_TO_G_6_OBUF_1_39_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y56",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_39_D5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_7 : X_FF
    generic map(
      LOC => "SLICE_X36Y56",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_7_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT7,
      O => PWM_INT_CNT_FSM_CNT_INT(7),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_8_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y56"
    )
    port map (
      CI => PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_4_Q_1020,
      CYINIT => '0',
      CO(3) => PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_8_Q_1021,
      CO(2) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_8_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_8_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_8_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => PWM_INT_CNT_FSM_Mcount_CNT_INT8,
      O(2) => PWM_INT_CNT_FSM_Mcount_CNT_INT7,
      O(1) => PWM_INT_CNT_FSM_Mcount_CNT_INT6,
      O(0) => PWM_INT_CNT_FSM_Mcount_CNT_INT5,
      S(3) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(8),
      S(2) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(7),
      S(1) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(6),
      S(0) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(5)
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y56",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(7),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(7)
    );
  A_TO_G_6_OBUF_1_38_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y56",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_38_C5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_6 : X_FF
    generic map(
      LOC => "SLICE_X36Y56",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_6_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT6,
      O => PWM_INT_CNT_FSM_CNT_INT(6),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y56",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(6),
      ADR2 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(6)
    );
  A_TO_G_6_OBUF_1_37_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y56",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_37_B5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_5 : X_FF
    generic map(
      LOC => "SLICE_X36Y56",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_5_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT5,
      O => PWM_INT_CNT_FSM_CNT_INT(5),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y56",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(5),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(5)
    );
  A_TO_G_6_OBUF_1_36_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y56",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_36_A5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_12 : X_FF
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_12_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT12,
      O => PWM_INT_CNT_FSM_CNT_INT(12),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(12),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(12)
    );
  A_TO_G_6_OBUF_1_43_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_43_D5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_11 : X_FF
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_11_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT11,
      O => PWM_INT_CNT_FSM_CNT_INT(11),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_12_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y57"
    )
    port map (
      CI => PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_8_Q_1021,
      CYINIT => '0',
      CO(3) => PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_12_Q_1022,
      CO(2) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_12_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_12_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_12_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => PWM_INT_CNT_FSM_Mcount_CNT_INT12,
      O(2) => PWM_INT_CNT_FSM_Mcount_CNT_INT11,
      O(1) => PWM_INT_CNT_FSM_Mcount_CNT_INT10,
      O(0) => PWM_INT_CNT_FSM_Mcount_CNT_INT9,
      S(3) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(12),
      S(2) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(11),
      S(1) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(10),
      S(0) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(9)
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(11),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(11)
    );
  A_TO_G_6_OBUF_1_42_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_42_C5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_10 : X_FF
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_10_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT10,
      O => PWM_INT_CNT_FSM_CNT_INT(10),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(10),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(10)
    );
  A_TO_G_6_OBUF_1_41_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_41_B5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_9 : X_FF
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_9_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT9,
      O => PWM_INT_CNT_FSM_CNT_INT(9),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(9),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(9)
    );
  A_TO_G_6_OBUF_1_40_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_40_A5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_15 : X_FF
    generic map(
      LOC => "SLICE_X36Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_15_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT15,
      O => PWM_INT_CNT_FSM_CNT_INT(15),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y58"
    )
    port map (
      CI => PWM_INT_CNT_FSM_Mcount_CNT_INT_cy_12_Q_1022,
      CYINIT => '0',
      CO(3) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_DI_3_UNCONNECTED,
      DI(2) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_O_3_UNCONNECTED,
      O(2) => PWM_INT_CNT_FSM_Mcount_CNT_INT15,
      O(1) => PWM_INT_CNT_FSM_Mcount_CNT_INT14,
      O(0) => PWM_INT_CNT_FSM_Mcount_CNT_INT13,
      S(3) => NLW_PWM_INT_CNT_FSM_Mcount_CNT_INT_xor_15_S_3_UNCONNECTED,
      S(2) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(15),
      S(1) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(14),
      S(0) => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(13)
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y58",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(15),
      ADR3 => '1',
      ADR5 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(15)
    );
  PWM_INT_CNT_FSM_CNT_INT_14 : X_FF
    generic map(
      LOC => "SLICE_X36Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_14_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT14,
      O => PWM_INT_CNT_FSM_CNT_INT(14),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y58",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(14),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(14)
    );
  A_TO_G_6_OBUF_1_45_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_45_B5LUT_O_UNCONNECTED
    );
  PWM_INT_CNT_FSM_CNT_INT_13 : X_FF
    generic map(
      LOC => "SLICE_X36Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_13_CLK,
      I => PWM_INT_CNT_FSM_Mcount_CNT_INT13,
      O => PWM_INT_CNT_FSM_CNT_INT(13),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcount_CNT_INT_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X36Y58",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(13),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => PWM_INT_CNT_FSM_Mcount_CNT_INT_lut(13)
    );
  A_TO_G_6_OBUF_1_44_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_44_A5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_3 : X_FF
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_3_CLK,
      I => LONG_CLK_Mcount_CNT_INT3,
      O => LONG_CLK_CNT_INT(3),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => LONG_CLK_CNT_INT(3),
      ADR3 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => LONG_CLK_Mcount_CNT_INT_lut_3_Q_287
    );
  A_TO_G_6_OBUF_1_4_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_4_D5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_2 : X_FF
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_2_CLK,
      I => LONG_CLK_Mcount_CNT_INT2,
      O => LONG_CLK_CNT_INT(2),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X28Y53"
    )
    port map (
      CI => '0',
      CYINIT => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o_inv,
      CO(3) => LONG_CLK_Mcount_CNT_INT_cy_3_Q_1023,
      CO(2) => NLW_LONG_CLK_Mcount_CNT_INT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_LONG_CLK_Mcount_CNT_INT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_LONG_CLK_Mcount_CNT_INT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => LONG_CLK_Mcount_CNT_INT3,
      O(2) => LONG_CLK_Mcount_CNT_INT2,
      O(1) => LONG_CLK_Mcount_CNT_INT1,
      O(0) => LONG_CLK_Mcount_CNT_INT,
      S(3) => LONG_CLK_Mcount_CNT_INT_lut_3_Q_287,
      S(2) => LONG_CLK_CNT_INT_2_rt_299,
      S(1) => LONG_CLK_CNT_INT_1_rt_303,
      S(0) => LONG_CLK_CNT_INT_0_rt_308
    );
  LONG_CLK_CNT_INT_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => LONG_CLK_CNT_INT(2),
      ADR3 => '1',
      ADR5 => '1',
      O => LONG_CLK_CNT_INT_2_rt_299
    );
  A_TO_G_6_OBUF_1_3_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_3_C5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_1 : X_FF
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_1_CLK,
      I => LONG_CLK_Mcount_CNT_INT1,
      O => LONG_CLK_CNT_INT(1),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_CNT_INT_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => LONG_CLK_CNT_INT(1),
      ADR3 => '1',
      ADR5 => '1',
      O => LONG_CLK_CNT_INT_1_rt_303
    );
  A_TO_G_6_OBUF_1_2_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_2_B5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_0_CLK,
      I => LONG_CLK_Mcount_CNT_INT,
      O => LONG_CLK_CNT_INT(0),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_CNT_INT_0_rt : X_LUT6
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => LONG_CLK_CNT_INT(0),
      ADR3 => '1',
      ADR5 => '1',
      O => LONG_CLK_CNT_INT_0_rt_308
    );
  A_TO_G_6_OBUF_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_A5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_7 : X_FF
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_7_CLK,
      I => LONG_CLK_Mcount_CNT_INT7,
      O => LONG_CLK_CNT_INT(7),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => LONG_CLK_CNT_INT(7),
      ADR4 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => LONG_CLK_Mcount_CNT_INT_lut_7_Q_317
    );
  A_TO_G_6_OBUF_1_8_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_8_D5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_6 : X_FF
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_6_CLK,
      I => LONG_CLK_Mcount_CNT_INT6,
      O => LONG_CLK_CNT_INT(6),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X28Y54"
    )
    port map (
      CI => LONG_CLK_Mcount_CNT_INT_cy_3_Q_1023,
      CYINIT => '0',
      CO(3) => LONG_CLK_Mcount_CNT_INT_cy_7_Q_1024,
      CO(2) => NLW_LONG_CLK_Mcount_CNT_INT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_LONG_CLK_Mcount_CNT_INT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_LONG_CLK_Mcount_CNT_INT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => LONG_CLK_Mcount_CNT_INT7,
      O(2) => LONG_CLK_Mcount_CNT_INT6,
      O(1) => LONG_CLK_Mcount_CNT_INT5,
      O(0) => LONG_CLK_Mcount_CNT_INT4,
      S(3) => LONG_CLK_Mcount_CNT_INT_lut_7_Q_317,
      S(2) => LONG_CLK_CNT_INT_6_rt_330,
      S(1) => LONG_CLK_Mcount_CNT_INT_lut_5_Q_334,
      S(0) => LONG_CLK_Mcount_CNT_INT_lut_4_Q_339
    );
  LONG_CLK_CNT_INT_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => LONG_CLK_CNT_INT(6),
      ADR3 => '1',
      ADR5 => '1',
      O => LONG_CLK_CNT_INT_6_rt_330
    );
  A_TO_G_6_OBUF_1_7_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_7_C5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_5 : X_FF
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_5_CLK,
      I => LONG_CLK_Mcount_CNT_INT5,
      O => LONG_CLK_CNT_INT(5),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => LONG_CLK_CNT_INT(5),
      ADR3 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => LONG_CLK_Mcount_CNT_INT_lut_5_Q_334
    );
  A_TO_G_6_OBUF_1_6_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_6_B5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_4 : X_FF
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_4_CLK,
      I => LONG_CLK_Mcount_CNT_INT4,
      O => LONG_CLK_CNT_INT(4),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => LONG_CLK_CNT_INT(4),
      ADR4 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => LONG_CLK_Mcount_CNT_INT_lut_4_Q_339
    );
  A_TO_G_6_OBUF_1_5_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_5_A5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_11 : X_FF
    generic map(
      LOC => "SLICE_X28Y55",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_11_CLK,
      I => LONG_CLK_Mcount_CNT_INT11,
      O => LONG_CLK_CNT_INT(11),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X28Y55",
      INIT => X"5555000055550000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => LONG_CLK_CNT_INT(11),
      ADR0 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => LONG_CLK_Mcount_CNT_INT_lut_11_Q_349
    );
  A_TO_G_6_OBUF_1_12_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_12_D5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_10 : X_FF
    generic map(
      LOC => "SLICE_X28Y55",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_10_CLK,
      I => LONG_CLK_Mcount_CNT_INT10,
      O => LONG_CLK_CNT_INT(10),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X28Y55"
    )
    port map (
      CI => LONG_CLK_Mcount_CNT_INT_cy_7_Q_1024,
      CYINIT => '0',
      CO(3) => LONG_CLK_Mcount_CNT_INT_cy_11_Q_1025,
      CO(2) => NLW_LONG_CLK_Mcount_CNT_INT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_LONG_CLK_Mcount_CNT_INT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_LONG_CLK_Mcount_CNT_INT_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => LONG_CLK_Mcount_CNT_INT11,
      O(2) => LONG_CLK_Mcount_CNT_INT10,
      O(1) => LONG_CLK_Mcount_CNT_INT9,
      O(0) => LONG_CLK_Mcount_CNT_INT8,
      S(3) => LONG_CLK_Mcount_CNT_INT_lut_11_Q_349,
      S(2) => LONG_CLK_Mcount_CNT_INT_lut_10_Q_362,
      S(1) => LONG_CLK_Mcount_CNT_INT_lut_9_Q_367,
      S(0) => LONG_CLK_Mcount_CNT_INT_lut_8_Q_372
    );
  LONG_CLK_Mcount_CNT_INT_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X28Y55",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => LONG_CLK_CNT_INT(10),
      ADR2 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => LONG_CLK_Mcount_CNT_INT_lut_10_Q_362
    );
  A_TO_G_6_OBUF_1_11_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_11_C5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_9 : X_FF
    generic map(
      LOC => "SLICE_X28Y55",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_9_CLK,
      I => LONG_CLK_Mcount_CNT_INT9,
      O => LONG_CLK_CNT_INT(9),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X28Y55",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => LONG_CLK_CNT_INT(9),
      ADR1 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => LONG_CLK_Mcount_CNT_INT_lut_9_Q_367
    );
  A_TO_G_6_OBUF_1_10_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_10_B5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_8 : X_FF
    generic map(
      LOC => "SLICE_X28Y55",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_8_CLK,
      I => LONG_CLK_Mcount_CNT_INT8,
      O => LONG_CLK_CNT_INT(8),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X28Y55",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => LONG_CLK_CNT_INT(8),
      ADR4 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => LONG_CLK_Mcount_CNT_INT_lut_8_Q_372
    );
  A_TO_G_6_OBUF_1_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_9_A5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_15 : X_FF
    generic map(
      LOC => "SLICE_X28Y56",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_15_CLK,
      I => LONG_CLK_Mcount_CNT_INT15,
      O => LONG_CLK_CNT_INT(15),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X28Y56",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => LONG_CLK_CNT_INT(15),
      ADR3 => '1',
      ADR5 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      O => LONG_CLK_Mcount_CNT_INT_lut_15_Q_382
    );
  LONG_CLK_CNT_INT_14 : X_FF
    generic map(
      LOC => "SLICE_X28Y56",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_14_CLK,
      I => LONG_CLK_Mcount_CNT_INT14,
      O => LONG_CLK_CNT_INT(14),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X28Y56"
    )
    port map (
      CI => LONG_CLK_Mcount_CNT_INT_cy_11_Q_1025,
      CYINIT => '0',
      CO(3) => NLW_LONG_CLK_Mcount_CNT_INT_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_LONG_CLK_Mcount_CNT_INT_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_LONG_CLK_Mcount_CNT_INT_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_LONG_CLK_Mcount_CNT_INT_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_LONG_CLK_Mcount_CNT_INT_xor_15_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => LONG_CLK_Mcount_CNT_INT15,
      O(2) => LONG_CLK_Mcount_CNT_INT14,
      O(1) => LONG_CLK_Mcount_CNT_INT13,
      O(0) => LONG_CLK_Mcount_CNT_INT12,
      S(3) => LONG_CLK_Mcount_CNT_INT_lut_15_Q_382,
      S(2) => LONG_CLK_Mcount_CNT_INT_lut_14_Q_393,
      S(1) => LONG_CLK_Mcount_CNT_INT_lut_13_Q_398,
      S(0) => LONG_CLK_Mcount_CNT_INT_lut_12_Q_403
    );
  LONG_CLK_Mcount_CNT_INT_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X28Y56",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => LONG_CLK_CNT_INT(14),
      ADR4 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => LONG_CLK_Mcount_CNT_INT_lut_14_Q_393
    );
  A_TO_G_6_OBUF_1_15_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y56",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_15_C5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_13 : X_FF
    generic map(
      LOC => "SLICE_X28Y56",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_13_CLK,
      I => LONG_CLK_Mcount_CNT_INT13,
      O => LONG_CLK_CNT_INT(13),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X28Y56",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => LONG_CLK_CNT_INT(13),
      ADR2 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => LONG_CLK_Mcount_CNT_INT_lut_13_Q_398
    );
  A_TO_G_6_OBUF_1_14_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y56",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_14_B5LUT_O_UNCONNECTED
    );
  LONG_CLK_CNT_INT_12 : X_FF
    generic map(
      LOC => "SLICE_X28Y56",
      INIT => '0'
    )
    port map (
      CE => SHORT_CLK_TICK_INT_958,
      CLK => NlwBufferSignal_LONG_CLK_CNT_INT_12_CLK,
      I => LONG_CLK_Mcount_CNT_INT12,
      O => LONG_CLK_CNT_INT(12),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_Mcount_CNT_INT_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X28Y56",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => LONG_CLK_CNT_INT(12),
      ADR3 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => LONG_CLK_Mcount_CNT_INT_lut_12_Q_403
    );
  A_TO_G_6_OBUF_1_13_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y56",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_13_A5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_3 : X_FF
    generic map(
      LOC => "SLICE_X22Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_3_CLK,
      I => SHORT_CLK_Mcount_CNT_INT3,
      O => SHORT_CLK_CNT_INT(3),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_CNT_INT_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y50",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SHORT_CLK_CNT_INT(3),
      ADR3 => '1',
      ADR5 => '1',
      O => SHORT_CLK_CNT_INT_3_rt_412
    );
  A_TO_G_6_OBUF_1_19_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y50",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_19_D5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_2 : X_FF
    generic map(
      LOC => "SLICE_X22Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_2_CLK,
      I => SHORT_CLK_Mcount_CNT_INT2,
      O => SHORT_CLK_CNT_INT(2),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_Mcount_CNT_INT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y50"
    )
    port map (
      CI => '0',
      CYINIT => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o_inv,
      CO(3) => SHORT_CLK_Mcount_CNT_INT_cy_3_Q_1026,
      CO(2) => NLW_SHORT_CLK_Mcount_CNT_INT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_SHORT_CLK_Mcount_CNT_INT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_SHORT_CLK_Mcount_CNT_INT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => SHORT_CLK_Mcount_CNT_INT3,
      O(2) => SHORT_CLK_Mcount_CNT_INT2,
      O(1) => SHORT_CLK_Mcount_CNT_INT1,
      O(0) => SHORT_CLK_Mcount_CNT_INT,
      S(3) => SHORT_CLK_CNT_INT_3_rt_412,
      S(2) => SHORT_CLK_Mcount_CNT_INT_lut_2_Q_422,
      S(1) => SHORT_CLK_CNT_INT_1_rt_427,
      S(0) => SHORT_CLK_CNT_INT_0_rt_432
    );
  SHORT_CLK_Mcount_CNT_INT_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y50",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => SHORT_CLK_CNT_INT(2),
      ADR2 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => SHORT_CLK_Mcount_CNT_INT_lut_2_Q_422
    );
  A_TO_G_6_OBUF_1_18_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y50",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_18_C5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_1 : X_FF
    generic map(
      LOC => "SLICE_X22Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_1_CLK,
      I => SHORT_CLK_Mcount_CNT_INT1,
      O => SHORT_CLK_CNT_INT(1),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_CNT_INT_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y50",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SHORT_CLK_CNT_INT(1),
      ADR3 => '1',
      ADR5 => '1',
      O => SHORT_CLK_CNT_INT_1_rt_427
    );
  A_TO_G_6_OBUF_1_17_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y50",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_17_B5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_0 : X_FF
    generic map(
      LOC => "SLICE_X22Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_0_CLK,
      I => SHORT_CLK_Mcount_CNT_INT,
      O => SHORT_CLK_CNT_INT(0),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_CNT_INT_0_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y50",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SHORT_CLK_CNT_INT(0),
      ADR3 => '1',
      ADR5 => '1',
      O => SHORT_CLK_CNT_INT_0_rt_432
    );
  A_TO_G_6_OBUF_1_16_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y50",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_16_A5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_7 : X_FF
    generic map(
      LOC => "SLICE_X22Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_7_CLK,
      I => SHORT_CLK_Mcount_CNT_INT7,
      O => SHORT_CLK_CNT_INT(7),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_Mcount_CNT_INT_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y51",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => SHORT_CLK_CNT_INT(7),
      ADR4 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => SHORT_CLK_Mcount_CNT_INT_lut_7_Q_441
    );
  A_TO_G_6_OBUF_1_23_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y51",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_23_D5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_6 : X_FF
    generic map(
      LOC => "SLICE_X22Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_6_CLK,
      I => SHORT_CLK_Mcount_CNT_INT6,
      O => SHORT_CLK_CNT_INT(6),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_Mcount_CNT_INT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y51"
    )
    port map (
      CI => SHORT_CLK_Mcount_CNT_INT_cy_3_Q_1026,
      CYINIT => '0',
      CO(3) => SHORT_CLK_Mcount_CNT_INT_cy_7_Q_1027,
      CO(2) => NLW_SHORT_CLK_Mcount_CNT_INT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_SHORT_CLK_Mcount_CNT_INT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_SHORT_CLK_Mcount_CNT_INT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => SHORT_CLK_Mcount_CNT_INT7,
      O(2) => SHORT_CLK_Mcount_CNT_INT6,
      O(1) => SHORT_CLK_Mcount_CNT_INT5,
      O(0) => SHORT_CLK_Mcount_CNT_INT4,
      S(3) => SHORT_CLK_Mcount_CNT_INT_lut_7_Q_441,
      S(2) => SHORT_CLK_Mcount_CNT_INT_lut_6_Q_453,
      S(1) => SHORT_CLK_Mcount_CNT_INT_lut_5_Q_458,
      S(0) => SHORT_CLK_CNT_INT_4_rt_463
    );
  SHORT_CLK_Mcount_CNT_INT_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y51",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => SHORT_CLK_CNT_INT(6),
      ADR4 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => SHORT_CLK_Mcount_CNT_INT_lut_6_Q_453
    );
  A_TO_G_6_OBUF_1_22_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y51",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_22_C5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_5 : X_FF
    generic map(
      LOC => "SLICE_X22Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_5_CLK,
      I => SHORT_CLK_Mcount_CNT_INT5,
      O => SHORT_CLK_CNT_INT(5),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_Mcount_CNT_INT_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y51",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SHORT_CLK_CNT_INT(5),
      ADR3 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => SHORT_CLK_Mcount_CNT_INT_lut_5_Q_458
    );
  A_TO_G_6_OBUF_1_21_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y51",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_21_B5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_4 : X_FF
    generic map(
      LOC => "SLICE_X22Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_4_CLK,
      I => SHORT_CLK_Mcount_CNT_INT4,
      O => SHORT_CLK_CNT_INT(4),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_CNT_INT_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y51",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SHORT_CLK_CNT_INT(4),
      ADR3 => '1',
      ADR5 => '1',
      O => SHORT_CLK_CNT_INT_4_rt_463
    );
  A_TO_G_6_OBUF_1_20_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y51",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_20_A5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_11 : X_FF
    generic map(
      LOC => "SLICE_X22Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_11_CLK,
      I => SHORT_CLK_Mcount_CNT_INT11,
      O => SHORT_CLK_CNT_INT(11),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_Mcount_CNT_INT_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y52",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => SHORT_CLK_CNT_INT(11),
      ADR4 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => SHORT_CLK_Mcount_CNT_INT_lut_11_Q_472
    );
  A_TO_G_6_OBUF_1_27_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y52",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_27_D5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_10 : X_FF
    generic map(
      LOC => "SLICE_X22Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_10_CLK,
      I => SHORT_CLK_Mcount_CNT_INT10,
      O => SHORT_CLK_CNT_INT(10),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_Mcount_CNT_INT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y52"
    )
    port map (
      CI => SHORT_CLK_Mcount_CNT_INT_cy_7_Q_1027,
      CYINIT => '0',
      CO(3) => SHORT_CLK_Mcount_CNT_INT_cy_11_Q_1028,
      CO(2) => NLW_SHORT_CLK_Mcount_CNT_INT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_SHORT_CLK_Mcount_CNT_INT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_SHORT_CLK_Mcount_CNT_INT_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => SHORT_CLK_Mcount_CNT_INT11,
      O(2) => SHORT_CLK_Mcount_CNT_INT10,
      O(1) => SHORT_CLK_Mcount_CNT_INT9,
      O(0) => SHORT_CLK_Mcount_CNT_INT8,
      S(3) => SHORT_CLK_Mcount_CNT_INT_lut_11_Q_472,
      S(2) => SHORT_CLK_Mcount_CNT_INT_lut_10_Q_484,
      S(1) => SHORT_CLK_Mcount_CNT_INT_lut_9_Q_489,
      S(0) => SHORT_CLK_Mcount_CNT_INT_lut_8_Q_494
    );
  SHORT_CLK_Mcount_CNT_INT_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y52",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => SHORT_CLK_CNT_INT(10),
      ADR2 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => SHORT_CLK_Mcount_CNT_INT_lut_10_Q_484
    );
  A_TO_G_6_OBUF_1_26_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y52",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_26_C5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_9 : X_FF
    generic map(
      LOC => "SLICE_X22Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_9_CLK,
      I => SHORT_CLK_Mcount_CNT_INT9,
      O => SHORT_CLK_CNT_INT(9),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_Mcount_CNT_INT_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y52",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => SHORT_CLK_CNT_INT(9),
      ADR1 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => SHORT_CLK_Mcount_CNT_INT_lut_9_Q_489
    );
  A_TO_G_6_OBUF_1_25_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y52",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_25_B5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_8 : X_FF
    generic map(
      LOC => "SLICE_X22Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_8_CLK,
      I => SHORT_CLK_Mcount_CNT_INT8,
      O => SHORT_CLK_CNT_INT(8),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_Mcount_CNT_INT_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y52",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => SHORT_CLK_CNT_INT(8),
      ADR4 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => SHORT_CLK_Mcount_CNT_INT_lut_8_Q_494
    );
  A_TO_G_6_OBUF_1_24_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y52",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_24_A5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_15 : X_FF
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_15_CLK,
      I => SHORT_CLK_Mcount_CNT_INT15,
      O => SHORT_CLK_CNT_INT(15),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_Mcount_CNT_INT_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SHORT_CLK_CNT_INT(15),
      ADR3 => '1',
      ADR5 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      O => SHORT_CLK_Mcount_CNT_INT_lut_15_Q_504
    );
  SHORT_CLK_CNT_INT_14 : X_FF
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_14_CLK,
      I => SHORT_CLK_Mcount_CNT_INT14,
      O => SHORT_CLK_CNT_INT(14),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_Mcount_CNT_INT_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y53"
    )
    port map (
      CI => SHORT_CLK_Mcount_CNT_INT_cy_11_Q_1028,
      CYINIT => '0',
      CO(3) => NLW_SHORT_CLK_Mcount_CNT_INT_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_SHORT_CLK_Mcount_CNT_INT_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_SHORT_CLK_Mcount_CNT_INT_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_SHORT_CLK_Mcount_CNT_INT_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_SHORT_CLK_Mcount_CNT_INT_xor_15_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => SHORT_CLK_Mcount_CNT_INT15,
      O(2) => SHORT_CLK_Mcount_CNT_INT14,
      O(1) => SHORT_CLK_Mcount_CNT_INT13,
      O(0) => SHORT_CLK_Mcount_CNT_INT12,
      S(3) => SHORT_CLK_Mcount_CNT_INT_lut_15_Q_504,
      S(2) => SHORT_CLK_Mcount_CNT_INT_lut_14_Q_514,
      S(1) => SHORT_CLK_Mcount_CNT_INT_lut_13_Q_519,
      S(0) => SHORT_CLK_Mcount_CNT_INT_lut_12_Q_524
    );
  SHORT_CLK_Mcount_CNT_INT_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => SHORT_CLK_CNT_INT(14),
      ADR4 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => SHORT_CLK_Mcount_CNT_INT_lut_14_Q_514
    );
  A_TO_G_6_OBUF_1_30_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_30_C5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_13 : X_FF
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_13_CLK,
      I => SHORT_CLK_Mcount_CNT_INT13,
      O => SHORT_CLK_CNT_INT(13),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_Mcount_CNT_INT_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => SHORT_CLK_CNT_INT(13),
      ADR4 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => SHORT_CLK_Mcount_CNT_INT_lut_13_Q_519
    );
  A_TO_G_6_OBUF_1_29_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_29_B5LUT_O_UNCONNECTED
    );
  SHORT_CLK_CNT_INT_12 : X_FF
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_CNT_INT_12_CLK,
      I => SHORT_CLK_Mcount_CNT_INT12,
      O => SHORT_CLK_CNT_INT(12),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_Mcount_CNT_INT_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SHORT_CLK_CNT_INT(12),
      ADR3 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      ADR5 => '1',
      O => SHORT_CLK_Mcount_CNT_INT_lut_12_Q_524
    );
  A_TO_G_6_OBUF_1_28_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_A_TO_G_6_OBUF_1_28_A5LUT_O_UNCONNECTED
    );
  PWM_INT_Mcompar_CNT_CMP_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR1 => PWM_INT_CCR_DFF_OUTPUT(6),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(6),
      ADR2 => PWM_INT_CCR_DFF_OUTPUT(7),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(7),
      ADR5 => '1',
      O => PWM_INT_Mcompar_CNT_CMP_lut(3)
    );
  PWM_INT_Mcompar_CNT_CMP_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"C0F0FCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => PWM_INT_CCR_DFF_OUTPUT(6),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(6),
      ADR2 => PWM_INT_CCR_DFF_OUTPUT(7),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(7),
      O => PWM_INT_Mcompar_CNT_CMP_lutdi3_532
    );
  ProtoComp30_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X32Y54"
    )
    port map (
      O => ProtoComp30_CYINITGND_0
    );
  PWM_INT_Mcompar_CNT_CMP_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y54"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp30_CYINITGND_0,
      CO(3) => PWM_INT_Mcompar_CNT_CMP_cy_3_Q_1029,
      CO(2) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_CO_0_UNCONNECTED,
      DI(3) => PWM_INT_Mcompar_CNT_CMP_lutdi3_532,
      DI(2) => PWM_INT_Mcompar_CNT_CMP_lutdi2_540,
      DI(1) => PWM_INT_Mcompar_CNT_CMP_lutdi1_546,
      DI(0) => PWM_INT_Mcompar_CNT_CMP_lutdi_552,
      O(3) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_3_O_0_UNCONNECTED,
      S(3) => PWM_INT_Mcompar_CNT_CMP_lut(3),
      S(2) => PWM_INT_Mcompar_CNT_CMP_lut(2),
      S(1) => PWM_INT_Mcompar_CNT_CMP_lut(1),
      S(0) => PWM_INT_Mcompar_CNT_CMP_lut(0)
    );
  PWM_INT_Mcompar_CNT_CMP_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR3 => PWM_INT_CCR_DFF_OUTPUT(4),
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(4),
      ADR4 => PWM_INT_CCR_DFF_OUTPUT(5),
      ADR1 => PWM_INT_CNT_FSM_CNT_INT(5),
      ADR5 => '1',
      O => PWM_INT_Mcompar_CNT_CMP_lut(2)
    );
  PWM_INT_Mcompar_CNT_CMP_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"FF3F3303"
    )
    port map (
      ADR0 => '1',
      ADR3 => PWM_INT_CCR_DFF_OUTPUT(4),
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(4),
      ADR4 => PWM_INT_CCR_DFF_OUTPUT(5),
      ADR1 => PWM_INT_CNT_FSM_CNT_INT(5),
      O => PWM_INT_Mcompar_CNT_CMP_lutdi2_540
    );
  PWM_INT_Mcompar_CNT_CMP_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR1 => PWM_INT_CCR_DFF_OUTPUT(2),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(2),
      ADR0 => PWM_INT_CCR_DFF_OUTPUT(3),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(3),
      ADR5 => '1',
      O => PWM_INT_Mcompar_CNT_CMP_lut(1)
    );
  PWM_INT_Mcompar_CNT_CMP_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"88EEAAFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => PWM_INT_CCR_DFF_OUTPUT(2),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(2),
      ADR0 => PWM_INT_CCR_DFF_OUTPUT(3),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(3),
      O => PWM_INT_Mcompar_CNT_CMP_lutdi1_546
    );
  PWM_INT_Mcompar_CNT_CMP_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR4 => PWM_INT_CCR_DFF_OUTPUT(0),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(0),
      ADR2 => PWM_INT_CCR_DFF_OUTPUT(1),
      ADR1 => PWM_INT_CNT_FSM_CNT_INT(1),
      ADR5 => '1',
      O => PWM_INT_Mcompar_CNT_CMP_lut(0)
    );
  PWM_INT_Mcompar_CNT_CMP_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"F3F330F3"
    )
    port map (
      ADR0 => '1',
      ADR4 => PWM_INT_CCR_DFF_OUTPUT(0),
      ADR3 => PWM_INT_CNT_FSM_CNT_INT(0),
      ADR2 => PWM_INT_CCR_DFF_OUTPUT(1),
      ADR1 => PWM_INT_CNT_FSM_CNT_INT(1),
      O => PWM_INT_Mcompar_CNT_CMP_lutdi_552
    );
  PWM_INT_Mcompar_CNT_CMP_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR2 => PWM_INT_CCR_DFF_OUTPUT(14),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(14),
      ADR3 => PWM_INT_CCR_DFF_OUTPUT(15),
      ADR1 => PWM_INT_CNT_FSM_CNT_INT(15),
      ADR5 => '1',
      O => PWM_INT_Mcompar_CNT_CMP_lut(7)
    );
  PWM_INT_Mcompar_CNT_CMP_lutdi7 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => X"F330FF33"
    )
    port map (
      ADR0 => '1',
      ADR2 => PWM_INT_CCR_DFF_OUTPUT(14),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(14),
      ADR3 => PWM_INT_CCR_DFF_OUTPUT(15),
      ADR1 => PWM_INT_CNT_FSM_CNT_INT(15),
      O => PWM_INT_Mcompar_CNT_CMP_lutdi7_562
    );
  PWM_INT_Mcompar_CNT_CMP_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y55"
    )
    port map (
      CI => PWM_INT_Mcompar_CNT_CMP_cy_3_Q_1029,
      CYINIT => '0',
      CO(3) => PWM_INT_Mcompar_CNT_CMP_cy_7_Q_1030,
      CO(2) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_CO_0_UNCONNECTED,
      DI(3) => PWM_INT_Mcompar_CNT_CMP_lutdi7_562,
      DI(2) => PWM_INT_Mcompar_CNT_CMP_lutdi6_570,
      DI(1) => PWM_INT_Mcompar_CNT_CMP_lutdi5_576,
      DI(0) => PWM_INT_Mcompar_CNT_CMP_lutdi4_582,
      O(3) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_O_3_UNCONNECTED,
      O(2) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_O_2_UNCONNECTED,
      O(1) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_O_1_UNCONNECTED,
      O(0) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_O_0_UNCONNECTED,
      S(3) => PWM_INT_Mcompar_CNT_CMP_lut(7),
      S(2) => PWM_INT_Mcompar_CNT_CMP_lut(6),
      S(1) => PWM_INT_Mcompar_CNT_CMP_lut(5),
      S(0) => PWM_INT_Mcompar_CNT_CMP_lut(4)
    );
  PWM_INT_Mcompar_CNT_CMP_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR3 => PWM_INT_CCR_DFF_OUTPUT(12),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(12),
      ADR1 => PWM_INT_CCR_DFF_OUTPUT(13),
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(13),
      ADR5 => '1',
      O => PWM_INT_Mcompar_CNT_CMP_lut(6)
    );
  PWM_INT_Mcompar_CNT_CMP_lutdi6 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => X"CF0CCFCF"
    )
    port map (
      ADR0 => '1',
      ADR3 => PWM_INT_CCR_DFF_OUTPUT(12),
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(12),
      ADR1 => PWM_INT_CCR_DFF_OUTPUT(13),
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(13),
      O => PWM_INT_Mcompar_CNT_CMP_lutdi6_570
    );
  PWM_INT_Mcompar_CNT_CMP_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR1 => PWM_INT_CCR_DFF_OUTPUT_10_0,
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(10),
      ADR3 => PWM_INT_CCR_DFF_OUTPUT_11_0,
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(11),
      ADR5 => '1',
      O => PWM_INT_Mcompar_CNT_CMP_lut(5)
    );
  PWM_INT_Mcompar_CNT_CMP_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => X"CF00FFCF"
    )
    port map (
      ADR0 => '1',
      ADR1 => PWM_INT_CCR_DFF_OUTPUT_10_0,
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(10),
      ADR3 => PWM_INT_CCR_DFF_OUTPUT_11_0,
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(11),
      O => PWM_INT_Mcompar_CNT_CMP_lutdi5_576
    );
  PWM_INT_Mcompar_CNT_CMP_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR3 => PWM_INT_CCR_DFF_OUTPUT_8_0,
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(8),
      ADR1 => PWM_INT_CCR_DFF_OUTPUT_9_0,
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(9),
      ADR5 => '1',
      O => PWM_INT_Mcompar_CNT_CMP_lut(4)
    );
  PWM_INT_Mcompar_CNT_CMP_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => X"CC0CFFCF"
    )
    port map (
      ADR0 => '1',
      ADR3 => PWM_INT_CCR_DFF_OUTPUT_8_0,
      ADR2 => PWM_INT_CNT_FSM_CNT_INT(8),
      ADR1 => PWM_INT_CCR_DFF_OUTPUT_9_0,
      ADR4 => PWM_INT_CNT_FSM_CNT_INT(9),
      O => PWM_INT_Mcompar_CNT_CMP_lutdi4_582
    );
  PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy : X_CARRY4
    generic map(
      LOC => "SLICE_X32Y56"
    )
    port map (
      CI => PWM_INT_Mcompar_CNT_CMP_cy_7_Q_1030,
      CYINIT => '0',
      CO(3) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_CO_3_UNCONNECTED,
      CO(2) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_CO_1_UNCONNECTED,
      CO(0) => PWM_INT_CNT_CMP,
      DI(3) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_DI_3_UNCONNECTED,
      DI(2) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_DI_2_UNCONNECTED,
      DI(1) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_DI_1_UNCONNECTED,
      DI(0) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_DI_0_UNCONNECTED,
      O(3) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_O_3_UNCONNECTED,
      O(2) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_O_2_UNCONNECTED,
      O(1) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_O_1_UNCONNECTED,
      O(0) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_O_0_UNCONNECTED,
      S(3) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_S_3_UNCONNECTED,
      S(2) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_S_2_UNCONNECTED,
      S(1) => NLW_PWM_INT_Mcompar_CNT_CMP_cy_7_inv1_cy_S_1_UNCONNECTED,
      S(0) => '1'
    );
  PWM_INT_CMP_DFF_Q : X_FF
    generic map(
      LOC => "SLICE_X32Y56",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CMP_DFF_Q_CLK,
      I => PWM_INT_CNT_CMP,
      O => PWM_INT_CMP_DFF_Q_1031,
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  N0_9_A6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X32Y56",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N0_9_A6LUT_O_UNCONNECTED
    );
  ANODE_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_ANODE_0_OBUF_I,
      O => ANODE(0)
    );
  A_TO_G_0_PULLDOWN : X_PD
    generic map(
      LOC => "PAD141"
    )
    port map (
      O => A_TO_G(0)
    );
  A_TO_G_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD141"
    )
    port map (
      I => NlwBufferSignal_A_TO_G_0_OBUF_I,
      O => A_TO_G(0)
    );
  ANODE_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_ANODE_1_OBUF_I,
      O => ANODE(1)
    );
  A_TO_G_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => '0',
      O => A_TO_G(1)
    );
  ANODE_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD154"
    )
    port map (
      I => NlwBufferSignal_ANODE_2_OBUF_I,
      O => ANODE(2)
    );
  A_TO_G_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => '0',
      O => A_TO_G(2)
    );
  ANODE_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD153"
    )
    port map (
      I => NlwBufferSignal_ANODE_3_OBUF_I,
      O => ANODE(3)
    );
  A_TO_G_3_PULLDOWN : X_PD
    generic map(
      LOC => "PAD138"
    )
    port map (
      O => A_TO_G(3)
    );
  A_TO_G_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD138"
    )
    port map (
      I => NlwBufferSignal_A_TO_G_3_OBUF_I,
      O => A_TO_G(3)
    );
  A_TO_G_4_PULLDOWN : X_PD
    generic map(
      LOC => "PAD137"
    )
    port map (
      O => A_TO_G(4)
    );
  A_TO_G_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD137"
    )
    port map (
      I => NlwBufferSignal_A_TO_G_4_OBUF_I,
      O => A_TO_G(4)
    );
  A_TO_G_5_PULLDOWN : X_PD
    generic map(
      LOC => "PAD134"
    )
    port map (
      O => A_TO_G(5)
    );
  A_TO_G_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => NlwBufferSignal_A_TO_G_5_OBUF_I,
      O => A_TO_G(5)
    );
  A_TO_G_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => '0',
      O => A_TO_G(6)
    );
  CNT_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD67"
    )
    port map (
      I => NlwBufferSignal_CNT_0_OBUF_I,
      O => CNT(0)
    );
  OCPE_IBUF : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 115 ps
    )
    port map (
      O => OCPE_IBUF_622,
      I => OCPE
    );
  ProtoComp35_IMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 115 ps
    )
    port map (
      I => OCPE_IBUF_622,
      O => OCPE_IBUF_0
    );
  CNT_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => NlwBufferSignal_CNT_1_OBUF_I,
      O => CNT(1)
    );
  CNT_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => NlwBufferSignal_CNT_2_OBUF_I,
      O => CNT(2)
    );
  CNT_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD75"
    )
    port map (
      I => NlwBufferSignal_CNT_3_OBUF_I,
      O => CNT(3)
    );
  CNT_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD76"
    )
    port map (
      I => NlwBufferSignal_CNT_4_OBUF_I,
      O => CNT(4)
    );
  CNT_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD73"
    )
    port map (
      I => NlwBufferSignal_CNT_5_OBUF_I,
      O => CNT(5)
    );
  CNT_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD74"
    )
    port map (
      I => NlwBufferSignal_CNT_6_OBUF_I,
      O => CNT(6)
    );
  CNT_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => NlwBufferSignal_CNT_7_OBUF_I,
      O => CNT(7)
    );
  CNT_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD81"
    )
    port map (
      I => NlwBufferSignal_CNT_8_OBUF_I,
      O => CNT(8)
    );
  CNT_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => NlwBufferSignal_CNT_9_OBUF_I,
      O => CNT(9)
    );
  PWM_SIG_OBUF : X_OBUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => NlwBufferSignal_PWM_SIG_OBUF_I,
      O => PWM_SIG
    );
  N_RESET_IBUF : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 115 ps
    )
    port map (
      O => LONG_CLK_N_RESET_inv_non_inverted,
      I => N_RESET
    );
  ProtoComp36_IMUX : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 115 ps
    )
    port map (
      I => ProtoComp36_IINV_OUT,
      O => LONG_CLK_N_RESET_inv
    );
  ProtoComp36_IINV : X_INV
    generic map(
      LOC => "PAD65",
      PATHPULSE => 115 ps
    )
    port map (
      I => LONG_CLK_N_RESET_inv_non_inverted,
      O => ProtoComp36_IINV_OUT
    );
  ARPE_IBUF : X_BUF
    generic map(
      LOC => "PAD66",
      PATHPULSE => 115 ps
    )
    port map (
      O => ARPE_IBUF_649,
      I => ARPE
    );
  ProtoComp35_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD66",
      PATHPULSE => 115 ps
    )
    port map (
      I => ARPE_IBUF_649,
      O => ARPE_IBUF_0
    );
  CNT_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => NlwBufferSignal_CNT_10_OBUF_I,
      O => CNT(10)
    );
  CNT_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD79"
    )
    port map (
      I => NlwBufferSignal_CNT_11_OBUF_I,
      O => CNT(11)
    );
  CNT_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => NlwBufferSignal_CNT_12_OBUF_I,
      O => CNT(12)
    );
  CNT_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD72"
    )
    port map (
      I => NlwBufferSignal_CNT_13_OBUF_I,
      O => CNT(13)
    );
  CNT_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD77"
    )
    port map (
      I => NlwBufferSignal_CNT_14_OBUF_I,
      O => CNT(14)
    );
  CNT_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD78"
    )
    port map (
      I => NlwBufferSignal_CNT_15_OBUF_I,
      O => CNT(15)
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 115 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_664,
      I => CLK
    );
  ProtoComp35_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_664,
      O => CLK_BUFGP_IBUFG_0
    );
  ANODE_0_OBUF_ANODE_0_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ANODE_1_OBUF_667,
      O => ANODE_1_OBUF_0
    );
  SEG7_Mram_n003412 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"FFFFFF00FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_SEL(1),
      ADR3 => SEG7_SEL(0),
      ADR5 => '1',
      O => ANODE_0_OBUF_980
    );
  SEG7_Mram_n0034111 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"FFFF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SEG7_SEL(1),
      ADR3 => SEG7_SEL(0),
      O => ANODE_1_OBUF_667
    );
  SEG7_SEL_1 : X_FF
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => '0'
    )
    port map (
      CE => SEG7_ENABLE,
      CLK => NlwBufferSignal_SEG7_SEL_1_CLK,
      I => Result(1),
      O => SEG7_SEL(1),
      RST => GND,
      SET => GND
    );
  SEG7_Mcount_SEL_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => SEG7_SEL(1),
      ADR3 => '1',
      ADR1 => SEG7_SEL(0),
      O => Result(1)
    );
  SEG7_SEL_0 : X_FF
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => '0'
    )
    port map (
      CE => SEG7_ENABLE,
      CLK => NlwBufferSignal_SEG7_SEL_0_CLK,
      I => Result(0),
      O => SEG7_SEL(0),
      RST => GND,
      SET => GND
    );
  SEG7_Mcount_SEL_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => SEG7_SEL(0),
      ADR4 => '1',
      ADR3 => '1',
      O => Result(0)
    );
  SEG7_ENABLE1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y12",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => SEG7_TEMP1_927,
      ADR2 => SEG7_TEMP2_931,
      O => SEG7_ENABLE
    );
  SEG7_TEMP2 : X_FF
    generic map(
      LOC => "SLICE_X21Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_TEMP2_CLK,
      I => NlwBufferSignal_SEG7_TEMP2_IN,
      O => SEG7_TEMP2_931,
      RST => GND,
      SET => GND
    );
  SEG7_TEMP1 : X_FF
    generic map(
      LOC => "SLICE_X21Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SEG7_TEMP1_CLK,
      I => NlwBufferSignal_SEG7_TEMP1_IN,
      O => SEG7_TEMP1_927,
      RST => GND,
      SET => GND
    );
  ANODE_2_OBUF_ANODE_2_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ANODE_3_OBUF_689,
      O => ANODE_3_OBUF_0
    );
  SEG7_Mram_n003421 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y1",
      INIT => X"F0FFF0FFF0FFF0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => SEG7_SEL(1),
      ADR2 => SEG7_SEL(0),
      ADR5 => '1',
      O => ANODE_2_OBUF_977
    );
  SEG7_Mram_n003431 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y1",
      INIT => X"0FFF0FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => SEG7_SEL(1),
      ADR2 => SEG7_SEL(0),
      O => ANODE_3_OBUF_689
    );
  SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y52",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => SHORT_CLK_CNT_INT(11),
      ADR0 => SHORT_CLK_CNT_INT(12),
      ADR4 => SHORT_CLK_CNT_INT(10),
      ADR5 => SHORT_CLK_CNT_INT(9),
      ADR2 => SHORT_CLK_CNT_INT(8),
      ADR3 => SHORT_CLK_CNT_INT(7),
      O => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o2_1033
    );
  SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y52",
      INIT => X"FFFFFEFFFFFFFFFF"
    )
    port map (
      ADR0 => SHORT_CLK_CNT_INT(1),
      ADR1 => SHORT_CLK_CNT_INT(4),
      ADR4 => SHORT_CLK_CNT_INT(3),
      ADR2 => SHORT_CLK_CNT_INT(0),
      ADR5 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o2_1033,
      ADR3 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o1_1034,
      O => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o_inv
    );
  SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y52",
      INIT => X"0000000002000000"
    )
    port map (
      ADR5 => SHORT_CLK_CNT_INT(15),
      ADR2 => SHORT_CLK_CNT_INT(14),
      ADR1 => SHORT_CLK_CNT_INT(13),
      ADR4 => SHORT_CLK_CNT_INT(2),
      ADR0 => SHORT_CLK_CNT_INT(5),
      ADR3 => SHORT_CLK_CNT_INT(6),
      O => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o1_1034
    );
  SHORT_CLK_TICK_INT : X_FF
    generic map(
      LOC => "SLICE_X23Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SHORT_CLK_TICK_INT_CLK,
      I => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o,
      O => SHORT_CLK_TICK_INT_958,
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y52",
      INIT => X"0000000000100000"
    )
    port map (
      ADR3 => SHORT_CLK_CNT_INT(0),
      ADR0 => SHORT_CLK_CNT_INT(1),
      ADR5 => SHORT_CLK_CNT_INT(4),
      ADR1 => SHORT_CLK_CNT_INT(3),
      ADR2 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o2_1033,
      ADR4 => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o1_1034,
      O => SHORT_CLK_CNT_INT_15_LIMIT_15_equal_1_o
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_3 : X_FF
    generic map(
      LOC => "SLICE_X29Y54",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_3_CLK,
      I => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_3_IN,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(3),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_2 : X_FF
    generic map(
      LOC => "SLICE_X29Y54",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_2_CLK,
      I => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_2_IN,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(2),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_1 : X_FF
    generic map(
      LOC => "SLICE_X29Y54",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_1_CLK,
      I => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_1_IN,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(1),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y54",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_0_CLK,
      I => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_0_IN,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(0),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y55",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => LONG_CLK_CNT_INT(12),
      ADR5 => LONG_CLK_CNT_INT(13),
      ADR1 => LONG_CLK_CNT_INT(11),
      ADR4 => LONG_CLK_CNT_INT(10),
      ADR2 => LONG_CLK_CNT_INT(8),
      ADR0 => LONG_CLK_CNT_INT(7),
      O => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o2_1035
    );
  LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y55",
      INIT => X"FFFFFEFFFFFFFFFF"
    )
    port map (
      ADR1 => LONG_CLK_CNT_INT(1),
      ADR4 => LONG_CLK_CNT_INT(6),
      ADR0 => LONG_CLK_CNT_INT(2),
      ADR2 => LONG_CLK_CNT_INT(0),
      ADR5 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o2_1035,
      ADR3 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o1_1036,
      O => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o_inv
    );
  LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y55",
      INIT => X"0000000000800000"
    )
    port map (
      ADR5 => LONG_CLK_CNT_INT(15),
      ADR3 => LONG_CLK_CNT_INT(14),
      ADR4 => LONG_CLK_CNT_INT(3),
      ADR1 => LONG_CLK_CNT_INT(4),
      ADR0 => LONG_CLK_CNT_INT(5),
      ADR2 => LONG_CLK_CNT_INT(9),
      O => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o1_1036
    );
  LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y55",
      INIT => X"0000000000100000"
    )
    port map (
      ADR5 => LONG_CLK_CNT_INT(0),
      ADR0 => LONG_CLK_CNT_INT(1),
      ADR1 => LONG_CLK_CNT_INT(6),
      ADR3 => LONG_CLK_CNT_INT(2),
      ADR2 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o2_1035,
      ADR4 => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o1_1036,
      O => LONG_CLK_CNT_INT_15_LIMIT_15_equal_1_o
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_7_PWM_INT_HIGH_LEV_DFF_OUTPUT_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(11),
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT_11_0
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_7_PWM_INT_HIGH_LEV_DFF_OUTPUT_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(10),
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT_10_0
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_7_PWM_INT_HIGH_LEV_DFF_OUTPUT_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(9),
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT_9_0
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_7_PWM_INT_HIGH_LEV_DFF_OUTPUT_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(8),
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT_8_0
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_7 : X_FF
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_7_CLK,
      I => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_7_IN,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(7),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_CNT_INT_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => LONG_CLK_CNT_INT(11),
      O => LONG_CLK_CNT_INT_11_rt_772
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_11 : X_FF
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_11_CLK,
      I => LONG_CLK_CNT_INT_11_rt_772,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(11),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_6 : X_FF
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_6_CLK,
      I => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_6_IN,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(6),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_CNT_INT_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => LONG_CLK_CNT_INT(10),
      O => LONG_CLK_CNT_INT_10_rt_777
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_10 : X_FF
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_10_CLK,
      I => LONG_CLK_CNT_INT_10_rt_777,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(10),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_5 : X_FF
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_5_CLK,
      I => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_5_IN,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(5),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_CNT_INT_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => LONG_CLK_CNT_INT(9),
      O => LONG_CLK_CNT_INT_9_rt_780
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_9 : X_FF
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_9_CLK,
      I => LONG_CLK_CNT_INT_9_rt_780,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(9),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_4 : X_FF
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_4_CLK,
      I => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_4_IN,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(4),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  LONG_CLK_CNT_INT_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => LONG_CLK_CNT_INT(8),
      O => LONG_CLK_CNT_INT_8_rt_782
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_8 : X_FF
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_8_CLK,
      I => LONG_CLK_CNT_INT_8_rt_782,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(8),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  A_TO_G_4_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y2",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => SEG7_SEL(1),
      O => A_TO_G_4_OBUF_938
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_15 : X_FF
    generic map(
      LOC => "SLICE_X31Y56",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_15_CLK,
      I => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_15_IN,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(15),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_14 : X_FF
    generic map(
      LOC => "SLICE_X31Y56",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_14_CLK,
      I => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_14_IN,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(14),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_13 : X_FF
    generic map(
      LOC => "SLICE_X31Y56",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_13_CLK,
      I => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_13_IN,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(13),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_12 : X_FF
    generic map(
      LOC => "SLICE_X31Y56",
      INIT => '0'
    )
    port map (
      CE => OCPE_IBUF_0,
      CLK => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_12_CLK,
      I => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_12_IN,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT(12),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CCR_DFF_OUTPUT_3 : X_FF
    generic map(
      LOC => "SLICE_X33Y54",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_3_CLK,
      I => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_3_IN,
      O => PWM_INT_CCR_DFF_OUTPUT(3),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CCR_DFF_OUTPUT_2 : X_FF
    generic map(
      LOC => "SLICE_X33Y54",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_2_CLK,
      I => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_2_IN,
      O => PWM_INT_CCR_DFF_OUTPUT(2),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CCR_DFF_OUTPUT_1 : X_FF
    generic map(
      LOC => "SLICE_X33Y54",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_1_CLK,
      I => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_1_IN,
      O => PWM_INT_CCR_DFF_OUTPUT(1),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CCR_DFF_OUTPUT_0 : X_FF
    generic map(
      LOC => "SLICE_X33Y54",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_0_CLK,
      I => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_0_IN,
      O => PWM_INT_CCR_DFF_OUTPUT(0),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CCR_DFF_OUTPUT_7_PWM_INT_CCR_DFF_OUTPUT_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CCR_DFF_OUTPUT(11),
      O => PWM_INT_CCR_DFF_OUTPUT_11_0
    );
  PWM_INT_CCR_DFF_OUTPUT_7_PWM_INT_CCR_DFF_OUTPUT_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CCR_DFF_OUTPUT(10),
      O => PWM_INT_CCR_DFF_OUTPUT_10_0
    );
  PWM_INT_CCR_DFF_OUTPUT_7_PWM_INT_CCR_DFF_OUTPUT_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CCR_DFF_OUTPUT(9),
      O => PWM_INT_CCR_DFF_OUTPUT_9_0
    );
  PWM_INT_CCR_DFF_OUTPUT_7_PWM_INT_CCR_DFF_OUTPUT_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CCR_DFF_OUTPUT(8),
      O => PWM_INT_CCR_DFF_OUTPUT_8_0
    );
  PWM_INT_CCR_DFF_OUTPUT_7 : X_FF
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_7_CLK,
      I => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_7_IN,
      O => PWM_INT_CCR_DFF_OUTPUT(7),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_INT_HIGH_LEV_DFF_OUTPUT_11_0,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT_11_rt_819
    );
  PWM_INT_CCR_DFF_OUTPUT_11 : X_FF
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_11_CLK,
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT_11_rt_819,
      O => PWM_INT_CCR_DFF_OUTPUT(11),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CCR_DFF_OUTPUT_6 : X_FF
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_6_CLK,
      I => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_6_IN,
      O => PWM_INT_CCR_DFF_OUTPUT(6),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_INT_HIGH_LEV_DFF_OUTPUT_10_0,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT_10_rt_824
    );
  PWM_INT_CCR_DFF_OUTPUT_10 : X_FF
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_10_CLK,
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT_10_rt_824,
      O => PWM_INT_CCR_DFF_OUTPUT(10),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CCR_DFF_OUTPUT_5 : X_FF
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_5_CLK,
      I => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_5_IN,
      O => PWM_INT_CCR_DFF_OUTPUT(5),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_INT_HIGH_LEV_DFF_OUTPUT_9_0,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT_9_rt_827
    );
  PWM_INT_CCR_DFF_OUTPUT_9 : X_FF
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_9_CLK,
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT_9_rt_827,
      O => PWM_INT_CCR_DFF_OUTPUT(9),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CCR_DFF_OUTPUT_4 : X_FF
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_4_CLK,
      I => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_4_IN,
      O => PWM_INT_CCR_DFF_OUTPUT(4),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_HIGH_LEV_DFF_OUTPUT_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => PWM_INT_HIGH_LEV_DFF_OUTPUT_8_0,
      O => PWM_INT_HIGH_LEV_DFF_OUTPUT_8_rt_829
    );
  PWM_INT_CCR_DFF_OUTPUT_8 : X_FF
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_8_CLK,
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT_8_rt_829,
      O => PWM_INT_CCR_DFF_OUTPUT(8),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CCR_DFF_OUTPUT_15 : X_FF
    generic map(
      LOC => "SLICE_X33Y56",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_15_CLK,
      I => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_15_IN,
      O => PWM_INT_CCR_DFF_OUTPUT(15),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CCR_DFF_OUTPUT_14 : X_FF
    generic map(
      LOC => "SLICE_X33Y56",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_14_CLK,
      I => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_14_IN,
      O => PWM_INT_CCR_DFF_OUTPUT(14),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CCR_DFF_OUTPUT_13 : X_FF
    generic map(
      LOC => "SLICE_X33Y56",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_13_CLK,
      I => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_13_IN,
      O => PWM_INT_CCR_DFF_OUTPUT(13),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CCR_DFF_OUTPUT_12 : X_FF
    generic map(
      LOC => "SLICE_X33Y56",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_12_CLK,
      I => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_12_IN,
      O => PWM_INT_CCR_DFF_OUTPUT(12),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_ARR_DFF_OUTPUT_3 : X_FF
    generic map(
      LOC => "SLICE_X34Y54",
      INIT => '0'
    )
    port map (
      CE => PWM_INT_CNT_FSM_TICK_INT_898,
      CLK => NlwBufferSignal_PWM_INT_ARR_DFF_OUTPUT_3_CLK,
      I => NlwBufferSignal_PWM_INT_ARR_DFF_OUTPUT_3_IN,
      O => PWM_INT_ARR_DFF_OUTPUT(3),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_PERIOD_DFF_OUTPUT_9 : X_FF
    generic map(
      LOC => "SLICE_X34Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_PERIOD_DFF_OUTPUT_9_CLK,
      I => PWM_INT_PERIOD_DFF_OUTPUT_9_rstpot_851,
      O => PWM_INT_PERIOD_DFF_OUTPUT(9),
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_PERIOD_DFF_OUTPUT_9_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X34Y60",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => PWM_INT_PERIOD_DFF_OUTPUT(9),
      ADR3 => '1',
      ADR4 => ARPE_IBUF_0,
      O => PWM_INT_PERIOD_DFF_OUTPUT_9_rstpot_851
    );
  PWM_INT_CNT_FSM_TICK_INT : X_FF
    generic map(
      LOC => "SLICE_X35Y54",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_INT_CNT_FSM_TICK_INT_CLK,
      I => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_5_inv,
      O => PWM_INT_CNT_FSM_TICK_INT_898,
      RST => LONG_CLK_N_RESET_inv,
      SET => GND
    );
  PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_5_inv_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y54",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => PWM_INT_CNT_FSM_CNT_INT_15_LIMIT_15_equal_1_o,
      O => PWM_INT_CNT_FSM_Mcompar_CNT_INT_15_LIMIT_15_equal_1_o_cy_5_inv
    );
  NlwBufferBlock_CLK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLK_BUFGP_BUFG_IN
    );
  NlwBufferBlock_SEG7_CLK_DIV_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_3_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_2_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_1_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_0_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_7_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_6_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_5_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_4_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_11_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_10_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_9_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_8_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_15_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_14_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_13_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_12_CLK
    );
  NlwBufferBlock_SEG7_CLK_DIV_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_CLK_DIV_16_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_0_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_4_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_3_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_2_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_1_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_8_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_7_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_6_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_5_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_12_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_11_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_10_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_9_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_15_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_14_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_CNT_INT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_CNT_INT_13_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_3_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_2_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_1_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_0_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_7_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_6_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_5_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_4_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_11_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_10_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_9_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_8_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_15_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_14_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_13_CLK
    );
  NlwBufferBlock_LONG_CLK_CNT_INT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_LONG_CLK_CNT_INT_12_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_3_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_2_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_1_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_0_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_7_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_6_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_5_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_4_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_11_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_10_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_9_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_8_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_15_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_14_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_13_CLK
    );
  NlwBufferBlock_SHORT_CLK_CNT_INT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_CNT_INT_12_CLK
    );
  NlwBufferBlock_PWM_INT_CMP_DFF_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CMP_DFF_Q_CLK
    );
  NlwBufferBlock_ANODE_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ANODE_0_OBUF_980,
      O => NlwBufferSignal_ANODE_0_OBUF_I
    );
  NlwBufferBlock_A_TO_G_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SEG7_SEL(1),
      O => NlwBufferSignal_A_TO_G_0_OBUF_I
    );
  NlwBufferBlock_ANODE_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ANODE_1_OBUF_0,
      O => NlwBufferSignal_ANODE_1_OBUF_I
    );
  NlwBufferBlock_ANODE_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ANODE_2_OBUF_977,
      O => NlwBufferSignal_ANODE_2_OBUF_I
    );
  NlwBufferBlock_ANODE_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ANODE_3_OBUF_0,
      O => NlwBufferSignal_ANODE_3_OBUF_I
    );
  NlwBufferBlock_A_TO_G_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => A_TO_G_4_OBUF_938,
      O => NlwBufferSignal_A_TO_G_3_OBUF_I
    );
  NlwBufferBlock_A_TO_G_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => A_TO_G_4_OBUF_938,
      O => NlwBufferSignal_A_TO_G_4_OBUF_I
    );
  NlwBufferBlock_A_TO_G_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => A_TO_G_4_OBUF_938,
      O => NlwBufferSignal_A_TO_G_5_OBUF_I
    );
  NlwBufferBlock_CNT_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(0),
      O => NlwBufferSignal_CNT_0_OBUF_I
    );
  NlwBufferBlock_CNT_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(1),
      O => NlwBufferSignal_CNT_1_OBUF_I
    );
  NlwBufferBlock_CNT_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(2),
      O => NlwBufferSignal_CNT_2_OBUF_I
    );
  NlwBufferBlock_CNT_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(3),
      O => NlwBufferSignal_CNT_3_OBUF_I
    );
  NlwBufferBlock_CNT_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(4),
      O => NlwBufferSignal_CNT_4_OBUF_I
    );
  NlwBufferBlock_CNT_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(5),
      O => NlwBufferSignal_CNT_5_OBUF_I
    );
  NlwBufferBlock_CNT_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(6),
      O => NlwBufferSignal_CNT_6_OBUF_I
    );
  NlwBufferBlock_CNT_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(7),
      O => NlwBufferSignal_CNT_7_OBUF_I
    );
  NlwBufferBlock_CNT_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(8),
      O => NlwBufferSignal_CNT_8_OBUF_I
    );
  NlwBufferBlock_CNT_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(9),
      O => NlwBufferSignal_CNT_9_OBUF_I
    );
  NlwBufferBlock_PWM_SIG_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CMP_DFF_Q_1031,
      O => NlwBufferSignal_PWM_SIG_OBUF_I
    );
  NlwBufferBlock_CNT_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(10),
      O => NlwBufferSignal_CNT_10_OBUF_I
    );
  NlwBufferBlock_CNT_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(11),
      O => NlwBufferSignal_CNT_11_OBUF_I
    );
  NlwBufferBlock_CNT_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(12),
      O => NlwBufferSignal_CNT_12_OBUF_I
    );
  NlwBufferBlock_CNT_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(13),
      O => NlwBufferSignal_CNT_13_OBUF_I
    );
  NlwBufferBlock_CNT_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(14),
      O => NlwBufferSignal_CNT_14_OBUF_I
    );
  NlwBufferBlock_CNT_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_CNT_FSM_CNT_INT(15),
      O => NlwBufferSignal_CNT_15_OBUF_I
    );
  NlwBufferBlock_SEG7_SEL_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_SEL_1_CLK
    );
  NlwBufferBlock_SEG7_SEL_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_SEL_0_CLK
    );
  NlwBufferBlock_SEG7_TEMP2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_TEMP2_CLK
    );
  NlwBufferBlock_SEG7_TEMP2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SEG7_TEMP1_927,
      O => NlwBufferSignal_SEG7_TEMP2_IN
    );
  NlwBufferBlock_SEG7_TEMP1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SEG7_TEMP1_CLK
    );
  NlwBufferBlock_SEG7_TEMP1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SEG7_CLK_DIV(16),
      O => NlwBufferSignal_SEG7_TEMP1_IN
    );
  NlwBufferBlock_SHORT_CLK_TICK_INT_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_SHORT_CLK_TICK_INT_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_3_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LONG_CLK_CNT_INT(3),
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_3_IN
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_2_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LONG_CLK_CNT_INT(2),
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_2_IN
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_1_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LONG_CLK_CNT_INT(1),
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_1_IN
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_0_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LONG_CLK_CNT_INT(0),
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_0_IN
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_7_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LONG_CLK_CNT_INT(7),
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_7_IN
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_11_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_6_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LONG_CLK_CNT_INT(6),
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_6_IN
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_10_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_5_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LONG_CLK_CNT_INT(5),
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_5_IN
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_9_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_4_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LONG_CLK_CNT_INT(4),
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_4_IN
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_8_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_15_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_15_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LONG_CLK_CNT_INT(15),
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_15_IN
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_14_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_14_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LONG_CLK_CNT_INT(14),
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_14_IN
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_13_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_13_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LONG_CLK_CNT_INT(13),
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_13_IN
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_12_CLK
    );
  NlwBufferBlock_PWM_INT_HIGH_LEV_DFF_OUTPUT_12_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LONG_CLK_CNT_INT(12),
      O => NlwBufferSignal_PWM_INT_HIGH_LEV_DFF_OUTPUT_12_IN
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_3_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(3),
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_3_IN
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_2_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(2),
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_2_IN
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_1_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(1),
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_1_IN
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_0_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(0),
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_0_IN
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_7_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(7),
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_7_IN
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_11_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_6_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(6),
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_6_IN
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_10_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_5_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(5),
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_5_IN
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_9_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_4_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(4),
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_4_IN
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_8_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_15_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_15_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(15),
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_15_IN
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_14_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_14_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(14),
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_14_IN
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_13_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_13_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(13),
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_13_IN
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_12_CLK
    );
  NlwBufferBlock_PWM_INT_CCR_DFF_OUTPUT_12_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_HIGH_LEV_DFF_OUTPUT(12),
      O => NlwBufferSignal_PWM_INT_CCR_DFF_OUTPUT_12_IN
    );
  NlwBufferBlock_PWM_INT_ARR_DFF_OUTPUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_ARR_DFF_OUTPUT_3_CLK
    );
  NlwBufferBlock_PWM_INT_ARR_DFF_OUTPUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_INT_PERIOD_DFF_OUTPUT(9),
      O => NlwBufferSignal_PWM_INT_ARR_DFF_OUTPUT_3_IN
    );
  NlwBufferBlock_PWM_INT_PERIOD_DFF_OUTPUT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_PERIOD_DFF_OUTPUT_9_CLK
    );
  NlwBufferBlock_PWM_INT_CNT_FSM_TICK_INT_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PWM_INT_CNT_FSM_TICK_INT_CLK
    );
  NlwBlock_TOP_EQ_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_TOP_EQ_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

