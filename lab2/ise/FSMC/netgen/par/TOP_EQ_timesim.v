////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: TOP_EQ_timesim.v
// /___/   /\     Timestamp: Tue Nov 07 09:45:17 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf TOP_EQ.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim TOP_EQ.ncd TOP_EQ_timesim.v 
// Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
// Input file	: TOP_EQ.ncd
// Output file	: C:\Users\abs430\Documents\lab2\FSMC\netgen\par\TOP_EQ_timesim.v
// # of Modules	: 1
// Design Name	: TOP_EQ
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module TOP_EQ (
  CLK, N_RESET, NOE, NE, NWE, LOCKED, RDY, DATA
);
  input CLK;
  input N_RESET;
  input NOE;
  input NE;
  input NWE;
  output LOCKED;
  output RDY;
  inout [15 : 0] DATA;
  wire \CLK_GEN/clkfbout ;
  wire \CLK_GEN/clkfbout_buf ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV_ML_NEW_O ;
  wire \CLK_GEN/clkout0 ;
  wire CLK_PE;
  wire \CLK_GEN/pll_base_inst/PLL_ADV_ML_NEW_DIVCLK ;
  wire LOCKED_OBUF_498;
  wire \CLK_GEN/clkout1 ;
  wire CLK_SYN;
  wire \CLK_GEN/clkin1_0 ;
  wire EN_0;
  wire Q_PST_503;
  wire START_505;
  wire \EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>1 ;
  wire N35;
  wire NRESET_I;
  wire \EQ_PE_I/RDY_513 ;
  wire \D_SYN<10>_0 ;
  wire NRESET_I_inv_0;
  wire \D_SYN<11>_0 ;
  wire N14_0;
  wire N13_0;
  wire N12_0;
  wire N4_0;
  wire N11_0;
  wire N3_0;
  wire N18_0;
  wire N10_0;
  wire N17_0;
  wire N9_0;
  wire N16_0;
  wire N8_0;
  wire N15_0;
  wire N7_0;
  wire N6_0;
  wire N5_0;
  wire NOE_IBUF_0;
  wire \NE_SYN<0>_0 ;
  wire NE_IBUF_0;
  wire \EQ_PE_I/_n0025_inv ;
  wire NWE_IBUF_0;
  wire \D_SYN<0>_0 ;
  wire \D_SYN<1>_0 ;
  wire \D_SYN<2>_0 ;
  wire \D_SYN<3>_0 ;
  wire \D_SYN<4>_0 ;
  wire \D_SYN<5>_0 ;
  wire \D_SYN<6>_0 ;
  wire \D_SYN<7>_0 ;
  wire \D_SYN<8>_0 ;
  wire \D_SYN<9>_0 ;
  wire TRISTATE;
  wire N_RESET_IBUF_0;
  wire \EQ_PE_I/Maccum_QINT_cy[3] ;
  wire \EQ_PE_I/Maccum_QINT_cy[7] ;
  wire \EQ_PE_I/Maccum_QINT_cy[11] ;
  wire N37;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO0 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO1 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO2 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO3 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO4 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO5 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO6 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO7 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO8 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO9 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO10 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO11 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO12 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO13 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO14 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DO15 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/CLKOUTDCM0 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/CLKOUT2 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/CLKOUT4 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/CLKFBDCM ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/CLKOUTDCM5 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/CLKOUTDCM1 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DRDY ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/CLKOUTDCM2 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/CLKOUT5 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/CLKOUTDCM4 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/CLKOUTDCM3 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/CLKOUT3 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI0 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI1 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI2 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI3 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI4 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI5 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI6 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI7 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI8 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI9 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI10 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI11 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI12 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI13 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI14 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DI15 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DADDR0 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DADDR1 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DADDR2 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DADDR3 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DADDR4 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/CLKIN1 ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DWE ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/RST_INT ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DEN ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/DCLK ;
  wire \CLK_GEN/pll_base_inst/PLL_ADV/CLKFBIN_INT ;
  wire Eqn_0_mand1_46;
  wire Eqn_1_mand1_40;
  wire Eqn_2_mand1_34;
  wire \ProtoComp12.CYINITGND.0 ;
  wire Eqn_3_mand1_20;
  wire Eqn_4_mand1_83;
  wire Eqn_5_mand1_77;
  wire Eqn_6_mand1_71;
  wire Eqn_7_mand1_57;
  wire Eqn_8_mand1_120;
  wire Eqn_9_mand1_114;
  wire Eqn_10_mand1_108;
  wire Eqn_11_mand1_94;
  wire Eqn_12_mand1_155;
  wire Eqn_13_mand1_149;
  wire Eqn_14_mand1_143;
  wire N18;
  wire N17;
  wire N16;
  wire N15;
  wire N14;
  wire N13;
  wire N12;
  wire N11;
  wire NE_IBUF_203;
  wire N10;
  wire N9;
  wire NOE_IBUF_216;
  wire N_RESET_IBUF_219;
  wire NWE_IBUF_224;
  wire N8;
  wire N7;
  wire N6;
  wire N5;
  wire N4;
  wire N3;
  wire \CLK_GEN/clkin1 ;
  wire \D_SYN<25>_rt_290 ;
  wire \D_SYN<26>_rt_283 ;
  wire \D_SYN<27>_rt_277 ;
  wire \D_SYN<24>_rt_272 ;
  wire \D_SYN<21>_rt_323 ;
  wire \D_SYN<22>_rt_316 ;
  wire \D_SYN<23>_rt_310 ;
  wire \D_SYN<20>_rt_305 ;
  wire EN_371;
  wire PSH_OUT;
  wire \EQ_PE_I/GND_6_o_GND_6_o_equal_1_o ;
  wire \NE_SYN<1>_rt_437 ;
  wire NE_IBUF_rt_433;
  wire \NE_SYN<1>_pack_1 ;
  wire \D_SYN<17>_rt_460 ;
  wire \D_SYN<18>_rt_453 ;
  wire \D_SYN<19>_rt_447 ;
  wire \D_SYN<16>_rt_442 ;
  wire NRESET_I_inv;
  wire \NlwBufferSignal_CLK_GEN/clkf_buf/IN ;
  wire \NlwBufferSignal_SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1/I ;
  wire \NlwBufferSignal_CLK_GEN/clkout1_buf/IN ;
  wire \NlwBufferSignal_CLK_GEN/pll_base_inst/PLL_ADV/CLKIN2 ;
  wire \NlwBufferSignal_CLK_GEN/clkout2_buf/IN ;
  wire \NlwBufferSignal_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0/I ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_3/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_2/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_1/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_0/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_7/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_6/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_5/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_4/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_11/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_10/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_9/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_8/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_15/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_14/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_13/CLK ;
  wire \NlwBufferSignal_EQ_PE_I/QINT_12/CLK ;
  wire \NlwBufferSignal_DATA_0_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_1_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_2_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_3_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_4_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_5_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_6_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_7_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_8_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_9_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_RDY_OBUF/I ;
  wire \NlwBufferSignal_DATA_10_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_11_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_12_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_13_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_14_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_DATA_15_IOBUF/OBUFT/I ;
  wire \NlwBufferSignal_LOCKED_OBUF/I ;
  wire \NlwBufferSignal_D_SYN_31/CLK ;
  wire \NlwBufferSignal_D_SYN_31/IN ;
  wire \NlwBufferSignal_D_SYN_30/CLK ;
  wire \NlwBufferSignal_D_SYN_30/IN ;
  wire \NlwBufferSignal_D_SYN_29/CLK ;
  wire \NlwBufferSignal_D_SYN_29/IN ;
  wire \NlwBufferSignal_D_SYN_28/CLK ;
  wire \NlwBufferSignal_D_SYN_28/IN ;
  wire \NlwBufferSignal_D_SYN_27/CLK ;
  wire \NlwBufferSignal_D_SYN_27/IN ;
  wire \NlwBufferSignal_D_SYN_11/CLK ;
  wire \NlwBufferSignal_D_SYN_26/CLK ;
  wire \NlwBufferSignal_D_SYN_26/IN ;
  wire \NlwBufferSignal_D_SYN_10/CLK ;
  wire \NlwBufferSignal_D_SYN_25/CLK ;
  wire \NlwBufferSignal_D_SYN_25/IN ;
  wire \NlwBufferSignal_D_SYN_9/CLK ;
  wire \NlwBufferSignal_D_SYN_24/CLK ;
  wire \NlwBufferSignal_D_SYN_24/IN ;
  wire \NlwBufferSignal_D_SYN_8/CLK ;
  wire \NlwBufferSignal_Y_11/CLK ;
  wire \NlwBufferSignal_Y_11/IN ;
  wire \NlwBufferSignal_Y_10/CLK ;
  wire \NlwBufferSignal_Y_10/IN ;
  wire \NlwBufferSignal_Y_9/CLK ;
  wire \NlwBufferSignal_Y_9/IN ;
  wire \NlwBufferSignal_Y_8/CLK ;
  wire \NlwBufferSignal_Y_8/IN ;
  wire \NlwBufferSignal_D_SYN_23/CLK ;
  wire \NlwBufferSignal_D_SYN_23/IN ;
  wire \NlwBufferSignal_D_SYN_7/CLK ;
  wire \NlwBufferSignal_D_SYN_22/CLK ;
  wire \NlwBufferSignal_D_SYN_22/IN ;
  wire \NlwBufferSignal_D_SYN_6/CLK ;
  wire \NlwBufferSignal_D_SYN_21/CLK ;
  wire \NlwBufferSignal_D_SYN_21/IN ;
  wire \NlwBufferSignal_D_SYN_5/CLK ;
  wire \NlwBufferSignal_D_SYN_20/CLK ;
  wire \NlwBufferSignal_D_SYN_20/IN ;
  wire \NlwBufferSignal_D_SYN_4/CLK ;
  wire \NlwBufferSignal_Y_7/CLK ;
  wire \NlwBufferSignal_Y_7/IN ;
  wire \NlwBufferSignal_Y_6/CLK ;
  wire \NlwBufferSignal_Y_6/IN ;
  wire \NlwBufferSignal_Y_5/CLK ;
  wire \NlwBufferSignal_Y_5/IN ;
  wire \NlwBufferSignal_Y_4/CLK ;
  wire \NlwBufferSignal_Y_4/IN ;
  wire \NlwBufferSignal_D_SYN_15/CLK ;
  wire \NlwBufferSignal_D_SYN_15/IN ;
  wire \NlwBufferSignal_D_SYN_14/CLK ;
  wire \NlwBufferSignal_D_SYN_14/IN ;
  wire \NlwBufferSignal_D_SYN_13/CLK ;
  wire \NlwBufferSignal_D_SYN_13/IN ;
  wire \NlwBufferSignal_D_SYN_12/CLK ;
  wire \NlwBufferSignal_D_SYN_12/IN ;
  wire \NlwBufferSignal_Y_15/CLK ;
  wire \NlwBufferSignal_Y_15/IN ;
  wire \NlwBufferSignal_Y_14/CLK ;
  wire \NlwBufferSignal_Y_14/IN ;
  wire \NlwBufferSignal_Y_13/CLK ;
  wire \NlwBufferSignal_Y_13/IN ;
  wire \NlwBufferSignal_Y_12/CLK ;
  wire \NlwBufferSignal_Y_12/IN ;
  wire \NlwBufferSignal_EN/CLK ;
  wire \NlwBufferSignal_NWE_SYN_2/CLK ;
  wire \NlwBufferSignal_NWE_SYN_2/IN ;
  wire \NlwBufferSignal_NWE_SYN_1/CLK ;
  wire \NlwBufferSignal_NWE_SYN_1/IN ;
  wire \NlwBufferSignal_NWE_SYN_0/CLK ;
  wire \NlwBufferSignal_NWE_SYN_0/IN ;
  wire \NlwBufferSignal_Y_3/CLK ;
  wire \NlwBufferSignal_Y_3/IN ;
  wire \NlwBufferSignal_Y_2/CLK ;
  wire \NlwBufferSignal_Y_2/IN ;
  wire \NlwBufferSignal_Y_1/CLK ;
  wire \NlwBufferSignal_Y_1/IN ;
  wire \NlwBufferSignal_Y_0/CLK ;
  wire \NlwBufferSignal_Y_0/IN ;
  wire \NlwBufferSignal_EQ_PE_I/RDY/CLK ;
  wire \NlwBufferSignal_START/CLK ;
  wire \NlwBufferSignal_START/IN ;
  wire \NlwBufferSignal_Q_PST/CLK ;
  wire \NlwBufferSignal_NOE_SYN_1/CLK ;
  wire \NlwBufferSignal_NOE_SYN_1/IN ;
  wire \NlwBufferSignal_NE_SYN_1/CLK ;
  wire \NlwBufferSignal_NOE_SYN_0/CLK ;
  wire \NlwBufferSignal_NOE_SYN_0/IN ;
  wire \NlwBufferSignal_NE_SYN_0/CLK ;
  wire \NlwBufferSignal_D_SYN_19/CLK ;
  wire \NlwBufferSignal_D_SYN_19/IN ;
  wire \NlwBufferSignal_D_SYN_3/CLK ;
  wire \NlwBufferSignal_D_SYN_18/CLK ;
  wire \NlwBufferSignal_D_SYN_18/IN ;
  wire \NlwBufferSignal_D_SYN_2/CLK ;
  wire \NlwBufferSignal_D_SYN_17/CLK ;
  wire \NlwBufferSignal_D_SYN_17/IN ;
  wire \NlwBufferSignal_D_SYN_1/CLK ;
  wire \NlwBufferSignal_D_SYN_16/CLK ;
  wire \NlwBufferSignal_D_SYN_16/IN ;
  wire \NlwBufferSignal_D_SYN_0/CLK ;
  wire GND;
  wire \NLW_CLK_GEN/pll_base_inst/PLL_ADV_REL_UNCONNECTED ;
  wire NLW_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_IOCLK_UNCONNECTED;
  wire NLW_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED;
  wire \NLW_EQ_PE_I/Maccum_QINT_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_EQ_PE_I/Maccum_QINT_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_EQ_PE_I/Maccum_QINT_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_EQ_PE_I/Maccum_QINT_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_EQ_PE_I/Maccum_QINT_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_EQ_PE_I/Maccum_QINT_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_EQ_PE_I/Maccum_QINT_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_EQ_PE_I/Maccum_QINT_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_EQ_PE_I/Maccum_QINT_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_EQ_PE_I/Maccum_QINT_xor<15>_CO[0]_UNCONNECTED ;
  wire \NLW_EQ_PE_I/Maccum_QINT_xor<15>_CO[1]_UNCONNECTED ;
  wire \NLW_EQ_PE_I/Maccum_QINT_xor<15>_CO[2]_UNCONNECTED ;
  wire \NLW_EQ_PE_I/Maccum_QINT_xor<15>_CO[3]_UNCONNECTED ;
  wire \NLW_EQ_PE_I/Maccum_QINT_xor<15>_DI[3]_UNCONNECTED ;
  wire VCC;
  wire [15 : 0] \EQ_PE_I/QINT ;
  wire [31 : 0] D_SYN;
  wire [15 : 0] Y;
  wire [1 : 0] NOE_SYN;
  wire [2 : 0] NWE_SYN;
  wire [1 : 0] NE_SYN;
  wire [15 : 0] \EQ_PE_I/Maccum_QINT_lut ;
  wire [15 : 0] Result;
  initial $sdf_annotate("netgen/par/top_eq_timesim.sdf");
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y3" ))
  \CLK_GEN/clkf_buf  (
    .I(\NlwBufferSignal_CLK_GEN/clkf_buf/IN ),
    .O(\CLK_GEN/clkfbout_buf )
  );
  X_BUFIO2FB #(
    .DIVIDE_BYPASS ( "TRUE" ),
    .LOC ( "BUFIO2FB_X1Y15" ))
  SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1 (
    .I(\NlwBufferSignal_SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1/I ),
    .O(\CLK_GEN/pll_base_inst/PLL_ADV_ML_NEW_O )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y2" ))
  \CLK_GEN/clkout1_buf  (
    .I(\NlwBufferSignal_CLK_GEN/clkout1_buf/IN ),
    .O(CLK_PE)
  );
  X_BUF #(
    .LOC ( "PLL_ADV_X0Y0" ))
  \CLK_GEN/pll_base_inst/PLL_ADV/RSTINV  (
    .I(1'b0),
    .O(\CLK_GEN/pll_base_inst/PLL_ADV/RST_INT )
  );
  X_BUF #(
    .LOC ( "PLL_ADV_X0Y0" ))
  \CLK_GEN/pll_base_inst/PLL_ADV/CLKFBIN  (
    .I(\CLK_GEN/pll_base_inst/PLL_ADV_ML_NEW_O ),
    .O(\CLK_GEN/pll_base_inst/PLL_ADV/CLKFBIN_INT )
  );
  X_PLL_ADV #(
    .COMPENSATION ( "SYSTEM_SYNCHRONOUS" ),
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .REF_JITTER ( 0.010000 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT0_DIVIDE ( 7 ),
    .CLKOUT1_DIVIDE ( 3 ),
    .CLKOUT3_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_MULT ( 42 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .CLKOUT2_DIVIDE ( 1 ),
    .CLKIN1_PERIOD ( 40 ),
    .LOC ( "PLL_ADV_X0Y0" ),
    .CLKIN2_PERIOD ( 40 ),
    .VCOCLK_FREQ_MAX ( 1080.000000 ),
    .VCOCLK_FREQ_MIN ( 400.000000 ),
    .CLKIN_FREQ_MAX ( 540.000000 ),
    .CLKIN_FREQ_MIN ( 19.000000 ),
    .CLKPFD_FREQ_MAX ( 500.000000 ),
    .CLKPFD_FREQ_MIN ( 19.000000 ))
  \CLK_GEN/pll_base_inst/PLL_ADV  (
    .CLKFBIN(\CLK_GEN/pll_base_inst/PLL_ADV/CLKFBIN_INT ),
    .DCLK(\CLK_GEN/pll_base_inst/PLL_ADV/DCLK ),
    .DEN(\CLK_GEN/pll_base_inst/PLL_ADV/DEN ),
    .CLKINSEL(GND),
    .CLKIN2(\NlwBufferSignal_CLK_GEN/pll_base_inst/PLL_ADV/CLKIN2 ),
    .RST(\CLK_GEN/pll_base_inst/PLL_ADV/RST_INT ),
    .DWE(\CLK_GEN/pll_base_inst/PLL_ADV/DWE ),
    .REL(\NLW_CLK_GEN/pll_base_inst/PLL_ADV_REL_UNCONNECTED ),
    .CLKIN1(\CLK_GEN/pll_base_inst/PLL_ADV/CLKIN1 ),
    .CLKOUT3(\CLK_GEN/pll_base_inst/PLL_ADV/CLKOUT3 ),
    .CLKOUTDCM3(\CLK_GEN/pll_base_inst/PLL_ADV/CLKOUTDCM3 ),
    .CLKFBOUT(\CLK_GEN/clkfbout ),
    .CLKOUTDCM4(\CLK_GEN/pll_base_inst/PLL_ADV/CLKOUTDCM4 ),
    .CLKOUT1(\CLK_GEN/clkout1 ),
    .CLKOUT5(\CLK_GEN/pll_base_inst/PLL_ADV/CLKOUT5 ),
    .CLKOUTDCM2(\CLK_GEN/pll_base_inst/PLL_ADV/CLKOUTDCM2 ),
    .DRDY(\CLK_GEN/pll_base_inst/PLL_ADV/DRDY ),
    .CLKOUTDCM1(\CLK_GEN/pll_base_inst/PLL_ADV/CLKOUTDCM1 ),
    .CLKOUTDCM5(\CLK_GEN/pll_base_inst/PLL_ADV/CLKOUTDCM5 ),
    .CLKFBDCM(\CLK_GEN/pll_base_inst/PLL_ADV/CLKFBDCM ),
    .CLKOUT0(\CLK_GEN/clkout0 ),
    .CLKOUT4(\CLK_GEN/pll_base_inst/PLL_ADV/CLKOUT4 ),
    .CLKOUT2(\CLK_GEN/pll_base_inst/PLL_ADV/CLKOUT2 ),
    .CLKOUTDCM0(\CLK_GEN/pll_base_inst/PLL_ADV/CLKOUTDCM0 ),
    .LOCKED(LOCKED_OBUF_498),
    .DADDR({\CLK_GEN/pll_base_inst/PLL_ADV/DADDR4 , \CLK_GEN/pll_base_inst/PLL_ADV/DADDR3 , \CLK_GEN/pll_base_inst/PLL_ADV/DADDR2 , 
\CLK_GEN/pll_base_inst/PLL_ADV/DADDR1 , \CLK_GEN/pll_base_inst/PLL_ADV/DADDR0 }),
    .DI({\CLK_GEN/pll_base_inst/PLL_ADV/DI15 , \CLK_GEN/pll_base_inst/PLL_ADV/DI14 , \CLK_GEN/pll_base_inst/PLL_ADV/DI13 , 
\CLK_GEN/pll_base_inst/PLL_ADV/DI12 , \CLK_GEN/pll_base_inst/PLL_ADV/DI11 , \CLK_GEN/pll_base_inst/PLL_ADV/DI10 , \CLK_GEN/pll_base_inst/PLL_ADV/DI9 
, \CLK_GEN/pll_base_inst/PLL_ADV/DI8 , \CLK_GEN/pll_base_inst/PLL_ADV/DI7 , \CLK_GEN/pll_base_inst/PLL_ADV/DI6 , \CLK_GEN/pll_base_inst/PLL_ADV/DI5 , 
\CLK_GEN/pll_base_inst/PLL_ADV/DI4 , \CLK_GEN/pll_base_inst/PLL_ADV/DI3 , \CLK_GEN/pll_base_inst/PLL_ADV/DI2 , \CLK_GEN/pll_base_inst/PLL_ADV/DI1 , 
\CLK_GEN/pll_base_inst/PLL_ADV/DI0 }),
    .DO({\CLK_GEN/pll_base_inst/PLL_ADV/DO15 , \CLK_GEN/pll_base_inst/PLL_ADV/DO14 , \CLK_GEN/pll_base_inst/PLL_ADV/DO13 , 
\CLK_GEN/pll_base_inst/PLL_ADV/DO12 , \CLK_GEN/pll_base_inst/PLL_ADV/DO11 , \CLK_GEN/pll_base_inst/PLL_ADV/DO10 , \CLK_GEN/pll_base_inst/PLL_ADV/DO9 
, \CLK_GEN/pll_base_inst/PLL_ADV/DO8 , \CLK_GEN/pll_base_inst/PLL_ADV/DO7 , \CLK_GEN/pll_base_inst/PLL_ADV/DO6 , \CLK_GEN/pll_base_inst/PLL_ADV/DO5 , 
\CLK_GEN/pll_base_inst/PLL_ADV/DO4 , \CLK_GEN/pll_base_inst/PLL_ADV/DO3 , \CLK_GEN/pll_base_inst/PLL_ADV/DO2 , \CLK_GEN/pll_base_inst/PLL_ADV/DO1 , 
\CLK_GEN/pll_base_inst/PLL_ADV/DO0 })
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \CLK_GEN/clkout2_buf  (
    .I(\NlwBufferSignal_CLK_GEN/clkout2_buf/IN ),
    .O(CLK_SYN)
  );
  X_BUFIO2 #(
    .DIVIDE ( 1 ),
    .DIVIDE_BYPASS ( "TRUE" ),
    .I_INVERT ( "FALSE" ),
    .USE_DOUBLER ( "FALSE" ),
    .LOC ( "BUFIO2_X1Y15" ))
  SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0 (
    .DIVCLK(\CLK_GEN/pll_base_inst/PLL_ADV_ML_NEW_DIVCLK ),
    .I(\NlwBufferSignal_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0/I ),
    .IOCLK(NLW_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_IOCLK_UNCONNECTED),
    .SERDESSTROBE(NLW_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y4" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_3  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_3/CLK ),
    .I(Result[3]),
    .O(\EQ_PE_I/QINT [3]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y4" ),
    .INIT ( 64'h4444888844448888 ))
  \EQ_PE_I/Maccum_QINT_lut<3>  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(START_505),
    .ADR4(\EQ_PE_I/QINT [3]),
    .ADR0(Y[3]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y4" ),
    .INIT ( 32'hCCCC0000 ))
  Eqn_3_mand1 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(START_505),
    .ADR4(\EQ_PE_I/QINT [3]),
    .ADR3(1'b1),
    .O(Eqn_3_mand1_20)
  );
  X_ZERO #(
    .LOC ( "SLICE_X10Y4" ))
  \ProtoComp12.CYINITGND  (
    .O(\ProtoComp12.CYINITGND.0 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y4" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_2  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_2/CLK ),
    .I(Result[2]),
    .O(\EQ_PE_I/QINT [2]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X10Y4" ))
  \EQ_PE_I/Maccum_QINT_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp12.CYINITGND.0 ),
    .CO({\EQ_PE_I/Maccum_QINT_cy[3] , \NLW_EQ_PE_I/Maccum_QINT_cy<3>_CO[2]_UNCONNECTED , \NLW_EQ_PE_I/Maccum_QINT_cy<3>_CO[1]_UNCONNECTED , 
\NLW_EQ_PE_I/Maccum_QINT_cy<3>_CO[0]_UNCONNECTED }),
    .DI({Eqn_3_mand1_20, Eqn_2_mand1_34, Eqn_1_mand1_40, Eqn_0_mand1_46}),
    .O({Result[3], Result[2], Result[1], Result[0]}),
    .S({\EQ_PE_I/Maccum_QINT_lut [3], \EQ_PE_I/Maccum_QINT_lut [2], \EQ_PE_I/Maccum_QINT_lut [1], \EQ_PE_I/Maccum_QINT_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y4" ),
    .INIT ( 64'h0C0CC0C00C0CC0C0 ))
  \EQ_PE_I/Maccum_QINT_lut<2>  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(START_505),
    .ADR4(\EQ_PE_I/QINT [2]),
    .ADR2(Y[2]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y4" ),
    .INIT ( 32'hCCCC0000 ))
  Eqn_2_mand1 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(START_505),
    .ADR4(\EQ_PE_I/QINT [2]),
    .ADR3(1'b1),
    .O(Eqn_2_mand1_34)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y4" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_1  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_1/CLK ),
    .I(Result[1]),
    .O(\EQ_PE_I/QINT [1]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y4" ),
    .INIT ( 64'h00AAAA0000AAAA00 ))
  \EQ_PE_I/Maccum_QINT_lut<1>  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(START_505),
    .ADR4(\EQ_PE_I/QINT [1]),
    .ADR3(Y[1]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y4" ),
    .INIT ( 32'hAAAA0000 ))
  Eqn_1_mand1 (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(START_505),
    .ADR4(\EQ_PE_I/QINT [1]),
    .ADR3(1'b1),
    .O(Eqn_1_mand1_40)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y4" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_0  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_0/CLK ),
    .I(Result[0]),
    .O(\EQ_PE_I/QINT [0]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y4" ),
    .INIT ( 64'h5050A0A05050A0A0 ))
  \EQ_PE_I/Maccum_QINT_lut<0>  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(START_505),
    .ADR4(\EQ_PE_I/QINT [0]),
    .ADR0(Y[0]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y4" ),
    .INIT ( 32'hF0F00000 ))
  Eqn_0_mand1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(START_505),
    .ADR4(\EQ_PE_I/QINT [0]),
    .ADR3(1'b1),
    .O(Eqn_0_mand1_46)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_7  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_7/CLK ),
    .I(Result[7]),
    .O(\EQ_PE_I/QINT [7]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 64'h00CCCC0000CCCC00 ))
  \EQ_PE_I/Maccum_QINT_lut<7>  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(START_505),
    .ADR4(\EQ_PE_I/QINT [7]),
    .ADR3(Y[7]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 32'hCCCC0000 ))
  Eqn_7_mand1 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(START_505),
    .ADR4(\EQ_PE_I/QINT [7]),
    .ADR3(1'b1),
    .O(Eqn_7_mand1_57)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_6  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_6/CLK ),
    .I(Result[6]),
    .O(\EQ_PE_I/QINT [6]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X10Y5" ))
  \EQ_PE_I/Maccum_QINT_cy<7>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy[3] ),
    .CYINIT(1'b0),
    .CO({\EQ_PE_I/Maccum_QINT_cy[7] , \NLW_EQ_PE_I/Maccum_QINT_cy<7>_CO[2]_UNCONNECTED , \NLW_EQ_PE_I/Maccum_QINT_cy<7>_CO[1]_UNCONNECTED , 
\NLW_EQ_PE_I/Maccum_QINT_cy<7>_CO[0]_UNCONNECTED }),
    .DI({Eqn_7_mand1_57, Eqn_6_mand1_71, Eqn_5_mand1_77, Eqn_4_mand1_83}),
    .O({Result[7], Result[6], Result[5], Result[4]}),
    .S({\EQ_PE_I/Maccum_QINT_lut [7], \EQ_PE_I/Maccum_QINT_lut [6], \EQ_PE_I/Maccum_QINT_lut [5], \EQ_PE_I/Maccum_QINT_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 64'h2222888822228888 ))
  \EQ_PE_I/Maccum_QINT_lut<6>  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(START_505),
    .ADR4(\EQ_PE_I/QINT [6]),
    .ADR1(Y[6]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 32'hAAAA0000 ))
  Eqn_6_mand1 (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(START_505),
    .ADR4(\EQ_PE_I/QINT [6]),
    .ADR3(1'b1),
    .O(Eqn_6_mand1_71)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_5  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_5/CLK ),
    .I(Result[5]),
    .O(\EQ_PE_I/QINT [5]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 64'h3300CC003300CC00 ))
  \EQ_PE_I/Maccum_QINT_lut<5>  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(START_505),
    .ADR4(\EQ_PE_I/QINT [5]),
    .ADR1(Y[5]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 32'hFF000000 ))
  Eqn_5_mand1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(START_505),
    .ADR4(\EQ_PE_I/QINT [5]),
    .ADR2(1'b1),
    .O(Eqn_5_mand1_77)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_4  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_4/CLK ),
    .I(Result[4]),
    .O(\EQ_PE_I/QINT [4]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 64'h0F00F0000F00F000 ))
  \EQ_PE_I/Maccum_QINT_lut<4>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(START_505),
    .ADR4(\EQ_PE_I/QINT [4]),
    .ADR2(Y[4]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 32'hFF000000 ))
  Eqn_4_mand1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(START_505),
    .ADR4(\EQ_PE_I/QINT [4]),
    .ADR2(1'b1),
    .O(Eqn_4_mand1_83)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y6" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_11  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_11/CLK ),
    .I(Result[11]),
    .O(\EQ_PE_I/QINT [11]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y6" ),
    .INIT ( 64'h00CCCC0000CCCC00 ))
  \EQ_PE_I/Maccum_QINT_lut<11>  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(START_505),
    .ADR4(\EQ_PE_I/QINT [11]),
    .ADR3(Y[11]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y6" ),
    .INIT ( 32'hCCCC0000 ))
  Eqn_11_mand1 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(START_505),
    .ADR4(\EQ_PE_I/QINT [11]),
    .ADR3(1'b1),
    .O(Eqn_11_mand1_94)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y6" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_10  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_10/CLK ),
    .I(Result[10]),
    .O(\EQ_PE_I/QINT [10]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X10Y6" ))
  \EQ_PE_I/Maccum_QINT_cy<11>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy[7] ),
    .CYINIT(1'b0),
    .CO({\EQ_PE_I/Maccum_QINT_cy[11] , \NLW_EQ_PE_I/Maccum_QINT_cy<11>_CO[2]_UNCONNECTED , \NLW_EQ_PE_I/Maccum_QINT_cy<11>_CO[1]_UNCONNECTED , 
\NLW_EQ_PE_I/Maccum_QINT_cy<11>_CO[0]_UNCONNECTED }),
    .DI({Eqn_11_mand1_94, Eqn_10_mand1_108, Eqn_9_mand1_114, Eqn_8_mand1_120}),
    .O({Result[11], Result[10], Result[9], Result[8]}),
    .S({\EQ_PE_I/Maccum_QINT_lut [11], \EQ_PE_I/Maccum_QINT_lut [10], \EQ_PE_I/Maccum_QINT_lut [9], \EQ_PE_I/Maccum_QINT_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y6" ),
    .INIT ( 64'h3300CC003300CC00 ))
  \EQ_PE_I/Maccum_QINT_lut<10>  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(START_505),
    .ADR4(\EQ_PE_I/QINT [10]),
    .ADR1(Y[10]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y6" ),
    .INIT ( 32'hFF000000 ))
  Eqn_10_mand1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(START_505),
    .ADR4(\EQ_PE_I/QINT [10]),
    .ADR2(1'b1),
    .O(Eqn_10_mand1_108)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y6" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_9  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_9/CLK ),
    .I(Result[9]),
    .O(\EQ_PE_I/QINT [9]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y6" ),
    .INIT ( 64'h00AAAA0000AAAA00 ))
  \EQ_PE_I/Maccum_QINT_lut<9>  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(START_505),
    .ADR4(\EQ_PE_I/QINT [9]),
    .ADR3(Y[9]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y6" ),
    .INIT ( 32'hAAAA0000 ))
  Eqn_9_mand1 (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(START_505),
    .ADR4(\EQ_PE_I/QINT [9]),
    .ADR3(1'b1),
    .O(Eqn_9_mand1_114)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y6" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_8  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_8/CLK ),
    .I(Result[8]),
    .O(\EQ_PE_I/QINT [8]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y6" ),
    .INIT ( 64'h00F0F00000F0F000 ))
  \EQ_PE_I/Maccum_QINT_lut<8>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(START_505),
    .ADR4(\EQ_PE_I/QINT [8]),
    .ADR3(Y[8]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y6" ),
    .INIT ( 32'hF0F00000 ))
  Eqn_8_mand1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(START_505),
    .ADR4(\EQ_PE_I/QINT [8]),
    .ADR3(1'b1),
    .O(Eqn_8_mand1_120)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_15  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_15/CLK ),
    .I(Result[15]),
    .O(\EQ_PE_I/QINT [15]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 64'h00FF0000FF000000 ))
  \EQ_PE_I/Maccum_QINT_lut<15>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\EQ_PE_I/QINT [15]),
    .ADR4(START_505),
    .ADR3(Y[15]),
    .O(\EQ_PE_I/Maccum_QINT_lut [15])
  );
  X_FF #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_14  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_14/CLK ),
    .I(Result[14]),
    .O(\EQ_PE_I/QINT [14]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X10Y7" ))
  \EQ_PE_I/Maccum_QINT_xor<15>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy[11] ),
    .CYINIT(1'b0),
    .CO({\NLW_EQ_PE_I/Maccum_QINT_xor<15>_CO[3]_UNCONNECTED , \NLW_EQ_PE_I/Maccum_QINT_xor<15>_CO[2]_UNCONNECTED , 
\NLW_EQ_PE_I/Maccum_QINT_xor<15>_CO[1]_UNCONNECTED , \NLW_EQ_PE_I/Maccum_QINT_xor<15>_CO[0]_UNCONNECTED }),
    .DI({\NLW_EQ_PE_I/Maccum_QINT_xor<15>_DI[3]_UNCONNECTED , Eqn_14_mand1_143, Eqn_13_mand1_149, Eqn_12_mand1_155}),
    .O({Result[15], Result[14], Result[13], Result[12]}),
    .S({\EQ_PE_I/Maccum_QINT_lut [15], \EQ_PE_I/Maccum_QINT_lut [14], \EQ_PE_I/Maccum_QINT_lut [13], \EQ_PE_I/Maccum_QINT_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 64'h00AAAA0000AAAA00 ))
  \EQ_PE_I/Maccum_QINT_lut<14>  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(START_505),
    .ADR4(\EQ_PE_I/QINT [14]),
    .ADR3(Y[14]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 32'hAAAA0000 ))
  Eqn_14_mand1 (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(START_505),
    .ADR4(\EQ_PE_I/QINT [14]),
    .ADR3(1'b1),
    .O(Eqn_14_mand1_143)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_13  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_13/CLK ),
    .I(Result[13]),
    .O(\EQ_PE_I/QINT [13]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 64'h3300CC003300CC00 ))
  \EQ_PE_I/Maccum_QINT_lut<13>  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(START_505),
    .ADR4(\EQ_PE_I/QINT [13]),
    .ADR1(Y[13]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 32'hFF000000 ))
  Eqn_13_mand1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(START_505),
    .ADR4(\EQ_PE_I/QINT [13]),
    .ADR2(1'b1),
    .O(Eqn_13_mand1_149)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_12  (
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLK(\NlwBufferSignal_EQ_PE_I/QINT_12/CLK ),
    .I(Result[12]),
    .O(\EQ_PE_I/QINT [12]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 64'h00AAAA0000AAAA00 ))
  \EQ_PE_I/Maccum_QINT_lut<12>  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(START_505),
    .ADR4(\EQ_PE_I/QINT [12]),
    .ADR3(Y[12]),
    .ADR5(1'b1),
    .O(\EQ_PE_I/Maccum_QINT_lut [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 32'hAAAA0000 ))
  Eqn_12_mand1 (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(START_505),
    .ADR4(\EQ_PE_I/QINT [12]),
    .ADR3(1'b1),
    .O(Eqn_12_mand1_155)
  );
  X_BPAD #(
    .LOC ( "PAD162" ))
  \DATA<0>  (
    .PAD(DATA[0])
  );
  X_OBUFT #(
    .LOC ( "PAD162" ))
  \DATA_0_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_0_IOBUF/OBUFT/I ),
    .O(DATA[0]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  \DATA_0_IOBUF/IBUF  (
    .O(N18),
    .I(DATA[0])
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  \ProtoComp15.IMUX  (
    .I(N18),
    .O(N18_0)
  );
  X_BPAD #(
    .LOC ( "PAD163" ))
  \DATA<1>  (
    .PAD(DATA[1])
  );
  X_OBUFT #(
    .LOC ( "PAD163" ))
  \DATA_1_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_1_IOBUF/OBUFT/I ),
    .O(DATA[1]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \DATA_1_IOBUF/IBUF  (
    .O(N17),
    .I(DATA[1])
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \ProtoComp15.IMUX.1  (
    .I(N17),
    .O(N17_0)
  );
  X_BPAD #(
    .LOC ( "PAD164" ))
  \DATA<2>  (
    .PAD(DATA[2])
  );
  X_OBUFT #(
    .LOC ( "PAD164" ))
  \DATA_2_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_2_IOBUF/OBUFT/I ),
    .O(DATA[2]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \DATA_2_IOBUF/IBUF  (
    .O(N16),
    .I(DATA[2])
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \ProtoComp15.IMUX.2  (
    .I(N16),
    .O(N16_0)
  );
  X_BPAD #(
    .LOC ( "PAD167" ))
  \DATA<3>  (
    .PAD(DATA[3])
  );
  X_OBUFT #(
    .LOC ( "PAD167" ))
  \DATA_3_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_3_IOBUF/OBUFT/I ),
    .O(DATA[3]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD167" ))
  \DATA_3_IOBUF/IBUF  (
    .O(N15),
    .I(DATA[3])
  );
  X_BUF #(
    .LOC ( "PAD167" ))
  \ProtoComp15.IMUX.3  (
    .I(N15),
    .O(N15_0)
  );
  X_BPAD #(
    .LOC ( "PAD168" ))
  \DATA<4>  (
    .PAD(DATA[4])
  );
  X_OBUFT #(
    .LOC ( "PAD168" ))
  \DATA_4_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_4_IOBUF/OBUFT/I ),
    .O(DATA[4]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD168" ))
  \DATA_4_IOBUF/IBUF  (
    .O(N14),
    .I(DATA[4])
  );
  X_BUF #(
    .LOC ( "PAD168" ))
  \ProtoComp15.IMUX.4  (
    .I(N14),
    .O(N14_0)
  );
  X_BPAD #(
    .LOC ( "PAD169" ))
  \DATA<5>  (
    .PAD(DATA[5])
  );
  X_OBUFT #(
    .LOC ( "PAD169" ))
  \DATA_5_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_5_IOBUF/OBUFT/I ),
    .O(DATA[5]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD169" ))
  \DATA_5_IOBUF/IBUF  (
    .O(N13),
    .I(DATA[5])
  );
  X_BUF #(
    .LOC ( "PAD169" ))
  \ProtoComp15.IMUX.5  (
    .I(N13),
    .O(N13_0)
  );
  X_BPAD #(
    .LOC ( "PAD170" ))
  \DATA<6>  (
    .PAD(DATA[6])
  );
  X_OBUFT #(
    .LOC ( "PAD170" ))
  \DATA_6_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_6_IOBUF/OBUFT/I ),
    .O(DATA[6]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD170" ))
  \DATA_6_IOBUF/IBUF  (
    .O(N12),
    .I(DATA[6])
  );
  X_BUF #(
    .LOC ( "PAD170" ))
  \ProtoComp15.IMUX.6  (
    .I(N12),
    .O(N12_0)
  );
  X_BPAD #(
    .LOC ( "PAD171" ))
  \DATA<7>  (
    .PAD(DATA[7])
  );
  X_OBUFT #(
    .LOC ( "PAD171" ))
  \DATA_7_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_7_IOBUF/OBUFT/I ),
    .O(DATA[7]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD171" ))
  \DATA_7_IOBUF/IBUF  (
    .O(N11),
    .I(DATA[7])
  );
  X_BUF #(
    .LOC ( "PAD171" ))
  \ProtoComp15.IMUX.7  (
    .I(N11),
    .O(N11_0)
  );
  X_IPAD #(
    .LOC ( "PAD161" ))
  NE_112 (
    .PAD(NE)
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  NE_IBUF (
    .O(NE_IBUF_203),
    .I(NE)
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  \ProtoComp16.IMUX  (
    .I(NE_IBUF_203),
    .O(NE_IBUF_0)
  );
  X_BPAD #(
    .LOC ( "PAD172" ))
  \DATA<8>  (
    .PAD(DATA[8])
  );
  X_OBUFT #(
    .LOC ( "PAD172" ))
  \DATA_8_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_8_IOBUF/OBUFT/I ),
    .O(DATA[8]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD172" ))
  \DATA_8_IOBUF/IBUF  (
    .O(N10),
    .I(DATA[8])
  );
  X_BUF #(
    .LOC ( "PAD172" ))
  \ProtoComp15.IMUX.8  (
    .I(N10),
    .O(N10_0)
  );
  X_BPAD #(
    .LOC ( "PAD173" ))
  \DATA<9>  (
    .PAD(DATA[9])
  );
  X_OBUFT #(
    .LOC ( "PAD173" ))
  \DATA_9_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_9_IOBUF/OBUFT/I ),
    .O(DATA[9]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD173" ))
  \DATA_9_IOBUF/IBUF  (
    .O(N9),
    .I(DATA[9])
  );
  X_BUF #(
    .LOC ( "PAD173" ))
  \ProtoComp15.IMUX.9  (
    .I(N9),
    .O(N9_0)
  );
  X_IPAD #(
    .LOC ( "PAD158" ))
  NOE_126 (
    .PAD(NOE)
  );
  X_BUF #(
    .LOC ( "PAD158" ))
  NOE_IBUF (
    .O(NOE_IBUF_216),
    .I(NOE)
  );
  X_BUF #(
    .LOC ( "PAD158" ))
  \ProtoComp16.IMUX.1  (
    .I(NOE_IBUF_216),
    .O(NOE_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD159" ))
  N_RESET_130 (
    .PAD(N_RESET)
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  N_RESET_IBUF (
    .O(N_RESET_IBUF_219),
    .I(N_RESET)
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  \ProtoComp16.IMUX.2  (
    .I(N_RESET_IBUF_219),
    .O(N_RESET_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD178" ))
  RDY_133 (
    .PAD(RDY)
  );
  X_OBUF #(
    .LOC ( "PAD178" ))
  RDY_OBUF (
    .I(\NlwBufferSignal_RDY_OBUF/I ),
    .O(RDY)
  );
  X_IPAD #(
    .LOC ( "PAD157" ))
  NWE_137 (
    .PAD(NWE)
  );
  X_BUF #(
    .LOC ( "PAD157" ))
  NWE_IBUF (
    .O(NWE_IBUF_224),
    .I(NWE)
  );
  X_BUF #(
    .LOC ( "PAD157" ))
  \ProtoComp16.IMUX.3  (
    .I(NWE_IBUF_224),
    .O(NWE_IBUF_0)
  );
  X_BPAD #(
    .LOC ( "PAD174" ))
  \DATA<10>  (
    .PAD(DATA[10])
  );
  X_OBUFT #(
    .LOC ( "PAD174" ))
  \DATA_10_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_10_IOBUF/OBUFT/I ),
    .O(DATA[10]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD174" ))
  \DATA_10_IOBUF/IBUF  (
    .O(N8),
    .I(DATA[10])
  );
  X_BUF #(
    .LOC ( "PAD174" ))
  \ProtoComp15.IMUX.10  (
    .I(N8),
    .O(N8_0)
  );
  X_BPAD #(
    .LOC ( "PAD175" ))
  \DATA<11>  (
    .PAD(DATA[11])
  );
  X_OBUFT #(
    .LOC ( "PAD175" ))
  \DATA_11_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_11_IOBUF/OBUFT/I ),
    .O(DATA[11]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD175" ))
  \DATA_11_IOBUF/IBUF  (
    .O(N7),
    .I(DATA[11])
  );
  X_BUF #(
    .LOC ( "PAD175" ))
  \ProtoComp15.IMUX.11  (
    .I(N7),
    .O(N7_0)
  );
  X_BPAD #(
    .LOC ( "PAD176" ))
  \DATA<12>  (
    .PAD(DATA[12])
  );
  X_OBUFT #(
    .LOC ( "PAD176" ))
  \DATA_12_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_12_IOBUF/OBUFT/I ),
    .O(DATA[12]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD176" ))
  \DATA_12_IOBUF/IBUF  (
    .O(N6),
    .I(DATA[12])
  );
  X_BUF #(
    .LOC ( "PAD176" ))
  \ProtoComp15.IMUX.12  (
    .I(N6),
    .O(N6_0)
  );
  X_BPAD #(
    .LOC ( "PAD177" ))
  \DATA<13>  (
    .PAD(DATA[13])
  );
  X_OBUFT #(
    .LOC ( "PAD177" ))
  \DATA_13_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_13_IOBUF/OBUFT/I ),
    .O(DATA[13]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD177" ))
  \DATA_13_IOBUF/IBUF  (
    .O(N5),
    .I(DATA[13])
  );
  X_BUF #(
    .LOC ( "PAD177" ))
  \ProtoComp15.IMUX.13  (
    .I(N5),
    .O(N5_0)
  );
  X_BPAD #(
    .LOC ( "PAD180" ))
  \DATA<14>  (
    .PAD(DATA[14])
  );
  X_OBUFT #(
    .LOC ( "PAD180" ))
  \DATA_14_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_14_IOBUF/OBUFT/I ),
    .O(DATA[14]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD180" ))
  \DATA_14_IOBUF/IBUF  (
    .O(N4),
    .I(DATA[14])
  );
  X_BUF #(
    .LOC ( "PAD180" ))
  \ProtoComp15.IMUX.14  (
    .I(N4),
    .O(N4_0)
  );
  X_BPAD #(
    .LOC ( "PAD179" ))
  \DATA<15>  (
    .PAD(DATA[15])
  );
  X_OBUFT #(
    .LOC ( "PAD179" ))
  \DATA_15_IOBUF/OBUFT  (
    .I(\NlwBufferSignal_DATA_15_IOBUF/OBUFT/I ),
    .O(DATA[15]),
    .CTL(TRISTATE)
  );
  X_BUF #(
    .LOC ( "PAD179" ))
  \DATA_15_IOBUF/IBUF  (
    .O(N3),
    .I(DATA[15])
  );
  X_BUF #(
    .LOC ( "PAD179" ))
  \ProtoComp15.IMUX.15  (
    .I(N3),
    .O(N3_0)
  );
  X_IPAD #(
    .LOC ( "PAD216" ))
  CLK_171 (
    .PAD(CLK)
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \CLK_GEN/clkin1_buf  (
    .O(\CLK_GEN/clkin1 ),
    .I(CLK)
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \ProtoComp16.IMUX.4  (
    .I(\CLK_GEN/clkin1 ),
    .O(\CLK_GEN/clkin1_0 )
  );
  X_OPAD #(
    .LOC ( "PAD160" ))
  LOCKED_174 (
    .PAD(LOCKED)
  );
  X_OBUF #(
    .LOC ( "PAD160" ))
  LOCKED_OBUF (
    .I(\NlwBufferSignal_LOCKED_OBUF/I ),
    .O(LOCKED)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_31 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_31/CLK ),
    .I(\NlwBufferSignal_D_SYN_31/IN ),
    .O(D_SYN[31]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_30 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_30/CLK ),
    .I(\NlwBufferSignal_D_SYN_30/IN ),
    .O(D_SYN[30]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_29 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_29/CLK ),
    .I(\NlwBufferSignal_D_SYN_29/IN ),
    .O(D_SYN[29]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_28 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_28/CLK ),
    .I(\NlwBufferSignal_D_SYN_28/IN ),
    .O(D_SYN[28]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_BUF   \D_SYN<27>/D_SYN<27>_DMUX_Delay  (
    .I(D_SYN[11]),
    .O(\D_SYN<11>_0 )
  );
  X_BUF   \D_SYN<27>/D_SYN<27>_CMUX_Delay  (
    .I(D_SYN[10]),
    .O(\D_SYN<10>_0 )
  );
  X_BUF   \D_SYN<27>/D_SYN<27>_BMUX_Delay  (
    .I(D_SYN[9]),
    .O(\D_SYN<9>_0 )
  );
  X_BUF   \D_SYN<27>/D_SYN<27>_AMUX_Delay  (
    .I(D_SYN[8]),
    .O(\D_SYN<8>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_27 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_27/CLK ),
    .I(\NlwBufferSignal_D_SYN_27/IN ),
    .O(D_SYN[27]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 32'hFFFF0000 ))
  \D_SYN<27>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(D_SYN[27]),
    .ADR3(1'b1),
    .O(\D_SYN<27>_rt_277 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_11 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_11/CLK ),
    .I(\D_SYN<27>_rt_277 ),
    .O(D_SYN[11]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_26 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_26/CLK ),
    .I(\NlwBufferSignal_D_SYN_26/IN ),
    .O(D_SYN[26]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 32'hFFFF0000 ))
  \D_SYN<26>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(D_SYN[26]),
    .ADR3(1'b1),
    .O(\D_SYN<26>_rt_283 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_10 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_10/CLK ),
    .I(\D_SYN<26>_rt_283 ),
    .O(D_SYN[10]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_25 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_25/CLK ),
    .I(\NlwBufferSignal_D_SYN_25/IN ),
    .O(D_SYN[25]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 32'hFFFF0000 ))
  \D_SYN<25>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(D_SYN[25]),
    .ADR3(1'b1),
    .O(\D_SYN<25>_rt_290 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_9 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_9/CLK ),
    .I(\D_SYN<25>_rt_290 ),
    .O(D_SYN[9]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_24 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_24/CLK ),
    .I(\NlwBufferSignal_D_SYN_24/IN ),
    .O(D_SYN[24]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 32'hFFFF0000 ))
  \D_SYN<24>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(D_SYN[24]),
    .ADR3(1'b1),
    .O(\D_SYN<24>_rt_272 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_8 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_8/CLK ),
    .I(\D_SYN<24>_rt_272 ),
    .O(D_SYN[8]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y6" ),
    .INIT ( 1'b0 ))
  Y_11 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_11/CLK ),
    .I(\NlwBufferSignal_Y_11/IN ),
    .O(Y[11]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y6" ),
    .INIT ( 1'b0 ))
  Y_10 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_10/CLK ),
    .I(\NlwBufferSignal_Y_10/IN ),
    .O(Y[10]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y6" ),
    .INIT ( 1'b0 ))
  Y_9 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_9/CLK ),
    .I(\NlwBufferSignal_Y_9/IN ),
    .O(Y[9]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y6" ),
    .INIT ( 1'b0 ))
  Y_8 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_8/CLK ),
    .I(\NlwBufferSignal_Y_8/IN ),
    .O(Y[8]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_BUF   \D_SYN<23>/D_SYN<23>_DMUX_Delay  (
    .I(D_SYN[7]),
    .O(\D_SYN<7>_0 )
  );
  X_BUF   \D_SYN<23>/D_SYN<23>_CMUX_Delay  (
    .I(D_SYN[6]),
    .O(\D_SYN<6>_0 )
  );
  X_BUF   \D_SYN<23>/D_SYN<23>_BMUX_Delay  (
    .I(D_SYN[5]),
    .O(\D_SYN<5>_0 )
  );
  X_BUF   \D_SYN<23>/D_SYN<23>_AMUX_Delay  (
    .I(D_SYN[4]),
    .O(\D_SYN<4>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_23 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_23/CLK ),
    .I(\NlwBufferSignal_D_SYN_23/IN ),
    .O(D_SYN[23]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y4" ),
    .INIT ( 32'hFFFF0000 ))
  \D_SYN<23>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(D_SYN[23]),
    .ADR3(1'b1),
    .O(\D_SYN<23>_rt_310 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_7/CLK ),
    .I(\D_SYN<23>_rt_310 ),
    .O(D_SYN[7]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_22 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_22/CLK ),
    .I(\NlwBufferSignal_D_SYN_22/IN ),
    .O(D_SYN[22]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y4" ),
    .INIT ( 32'hFFFF0000 ))
  \D_SYN<22>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(D_SYN[22]),
    .ADR3(1'b1),
    .O(\D_SYN<22>_rt_316 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_6/CLK ),
    .I(\D_SYN<22>_rt_316 ),
    .O(D_SYN[6]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_21 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_21/CLK ),
    .I(\NlwBufferSignal_D_SYN_21/IN ),
    .O(D_SYN[21]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y4" ),
    .INIT ( 32'hFFFF0000 ))
  \D_SYN<21>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(D_SYN[21]),
    .ADR3(1'b1),
    .O(\D_SYN<21>_rt_323 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_5/CLK ),
    .I(\D_SYN<21>_rt_323 ),
    .O(D_SYN[5]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_20 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_20/CLK ),
    .I(\NlwBufferSignal_D_SYN_20/IN ),
    .O(D_SYN[20]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y4" ),
    .INIT ( 32'hFFFF0000 ))
  \D_SYN<20>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(D_SYN[20]),
    .ADR3(1'b1),
    .O(\D_SYN<20>_rt_305 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_4/CLK ),
    .I(\D_SYN<20>_rt_305 ),
    .O(D_SYN[4]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 1'b0 ))
  Y_7 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_7/CLK ),
    .I(\NlwBufferSignal_Y_7/IN ),
    .O(Y[7]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 1'b0 ))
  Y_6 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_6/CLK ),
    .I(\NlwBufferSignal_Y_6/IN ),
    .O(Y[6]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 1'b0 ))
  Y_5 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_5/CLK ),
    .I(\NlwBufferSignal_Y_5/IN ),
    .O(Y[5]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 1'b0 ))
  Y_4 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_4/CLK ),
    .I(\NlwBufferSignal_Y_4/IN ),
    .O(Y[4]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y6" ),
    .INIT ( 1'b0 ))
  D_SYN_15 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_15/CLK ),
    .I(\NlwBufferSignal_D_SYN_15/IN ),
    .O(D_SYN[15]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y6" ),
    .INIT ( 1'b0 ))
  D_SYN_14 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_14/CLK ),
    .I(\NlwBufferSignal_D_SYN_14/IN ),
    .O(D_SYN[14]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y6" ),
    .INIT ( 1'b0 ))
  D_SYN_13 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_13/CLK ),
    .I(\NlwBufferSignal_D_SYN_13/IN ),
    .O(D_SYN[13]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y6" ),
    .INIT ( 64'h000000000F0F0F0F ))
  \EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>4_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\EQ_PE_I/QINT [15]),
    .ADR5(\EQ_PE_I/QINT [14]),
    .O(N37)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y6" ),
    .INIT ( 1'b0 ))
  D_SYN_12 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_12/CLK ),
    .I(\NlwBufferSignal_D_SYN_12/IN ),
    .O(D_SYN[12]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y6" ),
    .INIT ( 64'hAAEAAAAAAAAAAAAA ))
  \EQ_PE_I/_n0025_inv1  (
    .ADR4(\EQ_PE_I/QINT [8]),
    .ADR1(\EQ_PE_I/QINT [9]),
    .ADR0(START_505),
    .ADR2(N37),
    .ADR5(\EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>1 ),
    .ADR3(N35),
    .O(\EQ_PE_I/_n0025_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y7" ),
    .INIT ( 1'b0 ))
  Y_15 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_15/CLK ),
    .I(\NlwBufferSignal_Y_15/IN ),
    .O(Y[15]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y7" ),
    .INIT ( 1'b0 ))
  Y_14 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_14/CLK ),
    .I(\NlwBufferSignal_Y_14/IN ),
    .O(Y[14]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y7" ),
    .INIT ( 1'b0 ))
  Y_13 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_13/CLK ),
    .I(\NlwBufferSignal_Y_13/IN ),
    .O(Y[13]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y7" ),
    .INIT ( 1'b0 ))
  Y_12 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_12/CLK ),
    .I(\NlwBufferSignal_Y_12/IN ),
    .O(Y[12]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_BUF   \TRISTATE/TRISTATE_DMUX_Delay  (
    .I(EN_371),
    .O(EN_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 64'hFFFFFF00FFFFFF00 ))
  TRISTATE1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\NE_SYN<0>_0 ),
    .ADR3(NOE_SYN[0]),
    .ADR5(1'b1),
    .O(TRISTATE)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 32'h00005050 ))
  PSH_OUT1 (
    .ADR1(1'b1),
    .ADR2(NWE_SYN[0]),
    .ADR0(NWE_SYN[1]),
    .ADR4(\NE_SYN<0>_0 ),
    .ADR3(1'b1),
    .O(PSH_OUT)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 1'b0 ))
  EN (
    .CE(VCC),
    .CLK(\NlwBufferSignal_EN/CLK ),
    .I(PSH_OUT),
    .O(EN_371),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y3" ),
    .INIT ( 1'b0 ))
  NWE_SYN_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_NWE_SYN_2/CLK ),
    .I(\NlwBufferSignal_NWE_SYN_2/IN ),
    .O(NWE_SYN[2]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y3" ),
    .INIT ( 1'b0 ))
  NWE_SYN_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_NWE_SYN_1/CLK ),
    .I(\NlwBufferSignal_NWE_SYN_1/IN ),
    .O(NWE_SYN[1]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y3" ),
    .INIT ( 1'b0 ))
  NWE_SYN_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_NWE_SYN_0/CLK ),
    .I(\NlwBufferSignal_NWE_SYN_0/IN ),
    .O(NWE_SYN[0]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y4" ),
    .INIT ( 1'b0 ))
  Y_3 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_3/CLK ),
    .I(\NlwBufferSignal_Y_3/IN ),
    .O(Y[3]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y4" ),
    .INIT ( 1'b0 ))
  Y_2 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_2/CLK ),
    .I(\NlwBufferSignal_Y_2/IN ),
    .O(Y[2]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y4" ),
    .INIT ( 1'b0 ))
  Y_1 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_1/CLK ),
    .I(\NlwBufferSignal_Y_1/IN ),
    .O(Y[1]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y4" ),
    .INIT ( 64'h0000000000000001 ))
  \EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>2  (
    .ADR2(\EQ_PE_I/QINT [1]),
    .ADR5(\EQ_PE_I/QINT [0]),
    .ADR3(\EQ_PE_I/QINT [2]),
    .ADR1(\EQ_PE_I/QINT [3]),
    .ADR0(\EQ_PE_I/QINT [4]),
    .ADR4(\EQ_PE_I/QINT [5]),
    .O(\EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y4" ),
    .INIT ( 1'b0 ))
  Y_0 (
    .CE(EN_0),
    .CLK(\NlwBufferSignal_Y_0/CLK ),
    .I(\NlwBufferSignal_Y_0/IN ),
    .O(Y[0]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y6" ),
    .INIT ( 64'hFFFF7FFFFFFFFFFF ))
  \EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>4_SW0  (
    .ADR0(\EQ_PE_I/QINT [12]),
    .ADR1(\EQ_PE_I/QINT [11]),
    .ADR3(\EQ_PE_I/QINT [10]),
    .ADR2(\EQ_PE_I/QINT [7]),
    .ADR5(\EQ_PE_I/QINT [6]),
    .ADR4(\EQ_PE_I/QINT [13]),
    .O(N35)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y6" ),
    .INIT ( 1'b0 ))
  \EQ_PE_I/RDY  (
    .CE(NRESET_I),
    .CLK(\NlwBufferSignal_EQ_PE_I/RDY/CLK ),
    .I(\EQ_PE_I/GND_6_o_GND_6_o_equal_1_o ),
    .O(\EQ_PE_I/RDY_513 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y6" ),
    .INIT ( 64'h0000000000080000 ))
  \EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>4  (
    .ADR4(\EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>1 ),
    .ADR1(\EQ_PE_I/QINT [9]),
    .ADR0(\EQ_PE_I/QINT [8]),
    .ADR2(\EQ_PE_I/QINT [15]),
    .ADR3(\EQ_PE_I/QINT [14]),
    .ADR5(N35),
    .O(\EQ_PE_I/GND_6_o_GND_6_o_equal_1_o )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y7" ),
    .INIT ( 1'b0 ))
  START (
    .CE(VCC),
    .CLK(\NlwBufferSignal_START/CLK ),
    .I(\NlwBufferSignal_START/IN ),
    .O(START_505),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y8" ),
    .INIT ( 1'b0 ))
  Q_PST (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Q_PST/CLK ),
    .I(1'b1),
    .O(Q_PST_503),
    .RST(START_505),
    .SET(GND)
  );
  X_BUF   \NOE_SYN<1>/NOE_SYN<1>_BMUX_Delay  (
    .I(\NE_SYN<1>_pack_1 ),
    .O(NE_SYN[1])
  );
  X_BUF   \NOE_SYN<1>/NOE_SYN<1>_AMUX_Delay  (
    .I(NE_SYN[0]),
    .O(\NE_SYN<0>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y3" ),
    .INIT ( 1'b0 ))
  NOE_SYN_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_NOE_SYN_1/CLK ),
    .I(\NlwBufferSignal_NOE_SYN_1/IN ),
    .O(NOE_SYN[1]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y3" ),
    .INIT ( 32'hAAAAAAAA ))
  NE_IBUF_rt (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(NE_IBUF_0),
    .O(NE_IBUF_rt_433)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y3" ),
    .INIT ( 1'b0 ))
  NE_SYN_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_NE_SYN_1/CLK ),
    .I(NE_IBUF_rt_433),
    .O(\NE_SYN<1>_pack_1 ),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y3" ),
    .INIT ( 1'b0 ))
  NOE_SYN_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_NOE_SYN_0/CLK ),
    .I(\NlwBufferSignal_NOE_SYN_0/IN ),
    .O(NOE_SYN[0]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y3" ),
    .INIT ( 32'hF0F0F0F0 ))
  \NE_SYN<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(NE_SYN[1]),
    .O(\NE_SYN<1>_rt_437 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y3" ),
    .INIT ( 1'b0 ))
  NE_SYN_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_NE_SYN_0/CLK ),
    .I(\NE_SYN<1>_rt_437 ),
    .O(NE_SYN[0]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_BUF   \D_SYN<19>/D_SYN<19>_DMUX_Delay  (
    .I(D_SYN[3]),
    .O(\D_SYN<3>_0 )
  );
  X_BUF   \D_SYN<19>/D_SYN<19>_CMUX_Delay  (
    .I(D_SYN[2]),
    .O(\D_SYN<2>_0 )
  );
  X_BUF   \D_SYN<19>/D_SYN<19>_BMUX_Delay  (
    .I(D_SYN[1]),
    .O(\D_SYN<1>_0 )
  );
  X_BUF   \D_SYN<19>/D_SYN<19>_AMUX_Delay  (
    .I(D_SYN[0]),
    .O(\D_SYN<0>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_19 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_19/CLK ),
    .I(\NlwBufferSignal_D_SYN_19/IN ),
    .O(D_SYN[19]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 32'hFFFF0000 ))
  \D_SYN<19>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(D_SYN[19]),
    .ADR3(1'b1),
    .O(\D_SYN<19>_rt_447 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_3/CLK ),
    .I(\D_SYN<19>_rt_447 ),
    .O(D_SYN[3]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_18 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_18/CLK ),
    .I(\NlwBufferSignal_D_SYN_18/IN ),
    .O(D_SYN[18]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 32'hFFFF0000 ))
  \D_SYN<18>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(D_SYN[18]),
    .ADR3(1'b1),
    .O(\D_SYN<18>_rt_453 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_2/CLK ),
    .I(\D_SYN<18>_rt_453 ),
    .O(D_SYN[2]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_17 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_17/CLK ),
    .I(\NlwBufferSignal_D_SYN_17/IN ),
    .O(D_SYN[17]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 32'hFFFF0000 ))
  \D_SYN<17>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(D_SYN[17]),
    .ADR3(1'b1),
    .O(\D_SYN<17>_rt_460 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_1/CLK ),
    .I(\D_SYN<17>_rt_460 ),
    .O(D_SYN[1]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_16 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_16/CLK ),
    .I(\NlwBufferSignal_D_SYN_16/IN ),
    .O(D_SYN[16]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 32'hFFFF0000 ))
  \D_SYN<16>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(D_SYN[16]),
    .ADR3(1'b1),
    .O(\D_SYN<16>_rt_442 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y4" ),
    .INIT ( 1'b0 ))
  D_SYN_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D_SYN_0/CLK ),
    .I(\D_SYN<16>_rt_442 ),
    .O(D_SYN[0]),
    .RST(NRESET_I_inv_0),
    .SET(GND)
  );
  X_BUF   \NRESET_I/NRESET_I_DMUX_Delay  (
    .I(NRESET_I_inv),
    .O(NRESET_I_inv_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y6" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  NRESET_I1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(LOCKED_OBUF_498),
    .ADR2(N_RESET_IBUF_0),
    .ADR5(1'b1),
    .O(NRESET_I)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y6" ),
    .INIT ( 32'h0F0FFFFF ))
  NRESET_I_inv1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(LOCKED_OBUF_498),
    .ADR2(N_RESET_IBUF_0),
    .O(NRESET_I_inv)
  );
  X_BUF   \NlwBufferBlock_CLK_GEN/clkf_buf/IN  (
    .I(\CLK_GEN/clkfbout ),
    .O(\NlwBufferSignal_CLK_GEN/clkf_buf/IN )
  );
  X_BUF   \NlwBufferBlock_SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1/I  (
    .I(\CLK_GEN/clkfbout_buf ),
    .O(\NlwBufferSignal_SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1/I )
  );
  X_BUF   \NlwBufferBlock_CLK_GEN/clkout1_buf/IN  (
    .I(\CLK_GEN/clkout0 ),
    .O(\NlwBufferSignal_CLK_GEN/clkout1_buf/IN )
  );
  X_BUF   \NlwBufferBlock_CLK_GEN/pll_base_inst/PLL_ADV/CLKIN2  (
    .I(\CLK_GEN/pll_base_inst/PLL_ADV_ML_NEW_DIVCLK ),
    .O(\NlwBufferSignal_CLK_GEN/pll_base_inst/PLL_ADV/CLKIN2 )
  );
  X_BUF   \NlwBufferBlock_CLK_GEN/clkout2_buf/IN  (
    .I(\CLK_GEN/clkout1 ),
    .O(\NlwBufferSignal_CLK_GEN/clkout2_buf/IN )
  );
  X_BUF   \NlwBufferBlock_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0/I  (
    .I(\CLK_GEN/clkin1_0 ),
    .O(\NlwBufferSignal_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0/I )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_3/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_3/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_2/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_2/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_1/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_1/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_0/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_0/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_7/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_7/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_6/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_6/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_5/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_5/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_4/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_4/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_11/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_11/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_10/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_10/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_9/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_9/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_8/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_8/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_15/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_15/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_14/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_14/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_13/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_13/CLK )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/QINT_12/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/QINT_12/CLK )
  );
  X_BUF   \NlwBufferBlock_DATA_0_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [0]),
    .O(\NlwBufferSignal_DATA_0_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_1_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [1]),
    .O(\NlwBufferSignal_DATA_1_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_2_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [2]),
    .O(\NlwBufferSignal_DATA_2_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_3_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [3]),
    .O(\NlwBufferSignal_DATA_3_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_4_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [4]),
    .O(\NlwBufferSignal_DATA_4_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_5_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [5]),
    .O(\NlwBufferSignal_DATA_5_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_6_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [6]),
    .O(\NlwBufferSignal_DATA_6_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_7_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [7]),
    .O(\NlwBufferSignal_DATA_7_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_8_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [8]),
    .O(\NlwBufferSignal_DATA_8_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_9_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [9]),
    .O(\NlwBufferSignal_DATA_9_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_RDY_OBUF/I  (
    .I(\EQ_PE_I/RDY_513 ),
    .O(\NlwBufferSignal_RDY_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DATA_10_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [10]),
    .O(\NlwBufferSignal_DATA_10_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_11_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [11]),
    .O(\NlwBufferSignal_DATA_11_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_12_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [12]),
    .O(\NlwBufferSignal_DATA_12_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_13_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [13]),
    .O(\NlwBufferSignal_DATA_13_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_14_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [14]),
    .O(\NlwBufferSignal_DATA_14_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_DATA_15_IOBUF/OBUFT/I  (
    .I(\EQ_PE_I/QINT [15]),
    .O(\NlwBufferSignal_DATA_15_IOBUF/OBUFT/I )
  );
  X_BUF   \NlwBufferBlock_LOCKED_OBUF/I  (
    .I(LOCKED_OBUF_498),
    .O(\NlwBufferSignal_LOCKED_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_D_SYN_31/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_31/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_31/IN  (
    .I(N3_0),
    .O(\NlwBufferSignal_D_SYN_31/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_30/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_30/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_30/IN  (
    .I(N4_0),
    .O(\NlwBufferSignal_D_SYN_30/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_29/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_29/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_29/IN  (
    .I(N5_0),
    .O(\NlwBufferSignal_D_SYN_29/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_28/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_28/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_28/IN  (
    .I(N6_0),
    .O(\NlwBufferSignal_D_SYN_28/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_27/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_27/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_27/IN  (
    .I(N7_0),
    .O(\NlwBufferSignal_D_SYN_27/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_11/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_11/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_26/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_26/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_26/IN  (
    .I(N8_0),
    .O(\NlwBufferSignal_D_SYN_26/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_10/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_10/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_25/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_25/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_25/IN  (
    .I(N9_0),
    .O(\NlwBufferSignal_D_SYN_25/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_9/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_9/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_24/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_24/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_24/IN  (
    .I(N10_0),
    .O(\NlwBufferSignal_D_SYN_24/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_8/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_11/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_11/IN  (
    .I(\D_SYN<11>_0 ),
    .O(\NlwBufferSignal_Y_11/IN )
  );
  X_BUF   \NlwBufferBlock_Y_10/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_10/IN  (
    .I(\D_SYN<10>_0 ),
    .O(\NlwBufferSignal_Y_10/IN )
  );
  X_BUF   \NlwBufferBlock_Y_9/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_9/IN  (
    .I(\D_SYN<9>_0 ),
    .O(\NlwBufferSignal_Y_9/IN )
  );
  X_BUF   \NlwBufferBlock_Y_8/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_8/IN  (
    .I(\D_SYN<8>_0 ),
    .O(\NlwBufferSignal_Y_8/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_23/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_23/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_23/IN  (
    .I(N11_0),
    .O(\NlwBufferSignal_D_SYN_23/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_7/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_7/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_22/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_22/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_22/IN  (
    .I(N12_0),
    .O(\NlwBufferSignal_D_SYN_22/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_6/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_6/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_21/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_21/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_21/IN  (
    .I(N13_0),
    .O(\NlwBufferSignal_D_SYN_21/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_5/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_5/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_20/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_20/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_20/IN  (
    .I(N14_0),
    .O(\NlwBufferSignal_D_SYN_20/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_4/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_7/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_7/IN  (
    .I(\D_SYN<7>_0 ),
    .O(\NlwBufferSignal_Y_7/IN )
  );
  X_BUF   \NlwBufferBlock_Y_6/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_6/IN  (
    .I(\D_SYN<6>_0 ),
    .O(\NlwBufferSignal_Y_6/IN )
  );
  X_BUF   \NlwBufferBlock_Y_5/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_5/IN  (
    .I(\D_SYN<5>_0 ),
    .O(\NlwBufferSignal_Y_5/IN )
  );
  X_BUF   \NlwBufferBlock_Y_4/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_4/IN  (
    .I(\D_SYN<4>_0 ),
    .O(\NlwBufferSignal_Y_4/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_15/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_15/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_15/IN  (
    .I(D_SYN[31]),
    .O(\NlwBufferSignal_D_SYN_15/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_14/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_14/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_14/IN  (
    .I(D_SYN[30]),
    .O(\NlwBufferSignal_D_SYN_14/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_13/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_13/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_13/IN  (
    .I(D_SYN[29]),
    .O(\NlwBufferSignal_D_SYN_13/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_12/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_12/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_12/IN  (
    .I(D_SYN[28]),
    .O(\NlwBufferSignal_D_SYN_12/IN )
  );
  X_BUF   \NlwBufferBlock_Y_15/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_15/IN  (
    .I(D_SYN[15]),
    .O(\NlwBufferSignal_Y_15/IN )
  );
  X_BUF   \NlwBufferBlock_Y_14/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_14/IN  (
    .I(D_SYN[14]),
    .O(\NlwBufferSignal_Y_14/IN )
  );
  X_BUF   \NlwBufferBlock_Y_13/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_13/IN  (
    .I(D_SYN[13]),
    .O(\NlwBufferSignal_Y_13/IN )
  );
  X_BUF   \NlwBufferBlock_Y_12/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_12/IN  (
    .I(D_SYN[12]),
    .O(\NlwBufferSignal_Y_12/IN )
  );
  X_BUF   \NlwBufferBlock_EN/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_EN/CLK )
  );
  X_BUF   \NlwBufferBlock_NWE_SYN_2/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_NWE_SYN_2/CLK )
  );
  X_BUF   \NlwBufferBlock_NWE_SYN_2/IN  (
    .I(NWE_IBUF_0),
    .O(\NlwBufferSignal_NWE_SYN_2/IN )
  );
  X_BUF   \NlwBufferBlock_NWE_SYN_1/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_NWE_SYN_1/CLK )
  );
  X_BUF   \NlwBufferBlock_NWE_SYN_1/IN  (
    .I(NWE_SYN[2]),
    .O(\NlwBufferSignal_NWE_SYN_1/IN )
  );
  X_BUF   \NlwBufferBlock_NWE_SYN_0/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_NWE_SYN_0/CLK )
  );
  X_BUF   \NlwBufferBlock_NWE_SYN_0/IN  (
    .I(NWE_SYN[1]),
    .O(\NlwBufferSignal_NWE_SYN_0/IN )
  );
  X_BUF   \NlwBufferBlock_Y_3/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_3/IN  (
    .I(\D_SYN<3>_0 ),
    .O(\NlwBufferSignal_Y_3/IN )
  );
  X_BUF   \NlwBufferBlock_Y_2/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_2/IN  (
    .I(\D_SYN<2>_0 ),
    .O(\NlwBufferSignal_Y_2/IN )
  );
  X_BUF   \NlwBufferBlock_Y_1/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_1/IN  (
    .I(\D_SYN<1>_0 ),
    .O(\NlwBufferSignal_Y_1/IN )
  );
  X_BUF   \NlwBufferBlock_Y_0/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_Y_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Y_0/IN  (
    .I(\D_SYN<0>_0 ),
    .O(\NlwBufferSignal_Y_0/IN )
  );
  X_BUF   \NlwBufferBlock_EQ_PE_I/RDY/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_EQ_PE_I/RDY/CLK )
  );
  X_BUF   \NlwBufferBlock_START/CLK  (
    .I(CLK_PE),
    .O(\NlwBufferSignal_START/CLK )
  );
  X_BUF   \NlwBufferBlock_START/IN  (
    .I(Q_PST_503),
    .O(\NlwBufferSignal_START/IN )
  );
  X_BUF   \NlwBufferBlock_Q_PST/CLK  (
    .I(EN_0),
    .O(\NlwBufferSignal_Q_PST/CLK )
  );
  X_BUF   \NlwBufferBlock_NOE_SYN_1/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_NOE_SYN_1/CLK )
  );
  X_BUF   \NlwBufferBlock_NOE_SYN_1/IN  (
    .I(NOE_IBUF_0),
    .O(\NlwBufferSignal_NOE_SYN_1/IN )
  );
  X_BUF   \NlwBufferBlock_NE_SYN_1/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_NE_SYN_1/CLK )
  );
  X_BUF   \NlwBufferBlock_NOE_SYN_0/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_NOE_SYN_0/CLK )
  );
  X_BUF   \NlwBufferBlock_NOE_SYN_0/IN  (
    .I(NOE_SYN[1]),
    .O(\NlwBufferSignal_NOE_SYN_0/IN )
  );
  X_BUF   \NlwBufferBlock_NE_SYN_0/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_NE_SYN_0/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_19/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_19/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_19/IN  (
    .I(N15_0),
    .O(\NlwBufferSignal_D_SYN_19/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_3/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_3/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_18/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_18/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_18/IN  (
    .I(N16_0),
    .O(\NlwBufferSignal_D_SYN_18/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_2/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_2/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_17/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_17/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_17/IN  (
    .I(N17_0),
    .O(\NlwBufferSignal_D_SYN_17/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_1/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_1/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_16/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_16/CLK )
  );
  X_BUF   \NlwBufferBlock_D_SYN_16/IN  (
    .I(N18_0),
    .O(\NlwBufferSignal_D_SYN_16/IN )
  );
  X_BUF   \NlwBufferBlock_D_SYN_0/CLK  (
    .I(CLK_SYN),
    .O(\NlwBufferSignal_D_SYN_0/CLK )
  );
  X_ZERO   NlwBlock_TOP_EQ_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_TOP_EQ_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

