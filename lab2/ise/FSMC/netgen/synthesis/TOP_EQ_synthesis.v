////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: TOP_EQ_synthesis.v
// /___/   /\     Timestamp: Tue Nov 07 09:43:03 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim TOP_EQ.ngc TOP_EQ_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: TOP_EQ.ngc
// Output file	: C:\Users\abs430\Documents\lab2\FSMC\netgen\synthesis\TOP_EQ_synthesis.v
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
  wire N_RESET_IBUF_1;
  wire NOE_IBUF_2;
  wire NE_IBUF_3;
  wire NWE_IBUF_4;
  wire CLK_PE;
  wire CLK_SYN;
  wire LOCKED_OBUF_7;
  wire NRESET_I;
  wire \EQ_PE_I/RDY_9 ;
  wire START_10;
  wire EN_47;
  wire Q_PST_67;
  wire TRISTATE;
  wire PSH_OUT;
  wire N1;
  wire NRESET_I_inv;
  wire \CLK_GEN/clkfbout_buf ;
  wire \CLK_GEN/clkout1 ;
  wire \CLK_GEN/clkout0 ;
  wire \CLK_GEN/clkfbout ;
  wire \CLK_GEN/clkin1 ;
  wire \EQ_PE_I/GND_6_o_GND_6_o_equal_1_o ;
  wire \EQ_PE_I/_n0025_inv ;
  wire \EQ_PE_I/QINT_eqn ;
  wire Eqn_0_mand1_113;
  wire Eqn_1_mand1_117;
  wire Eqn_2_mand1_121;
  wire Eqn_3_mand1_125;
  wire Eqn_4_mand1_129;
  wire Eqn_5_mand1_133;
  wire Eqn_6_mand1_137;
  wire Eqn_7_mand1_141;
  wire Eqn_8_mand1_145;
  wire Eqn_9_mand1_149;
  wire Eqn_10_mand1_153;
  wire Eqn_11_mand1_157;
  wire Eqn_12_mand1_161;
  wire Eqn_13_mand1_165;
  wire Eqn_14_mand1_169;
  wire \EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>1 ;
  wire N35;
  wire N37;
  wire N3;
  wire N4;
  wire N5;
  wire N6;
  wire N7;
  wire N8;
  wire N9;
  wire N10;
  wire N11;
  wire N12;
  wire N13;
  wire N14;
  wire N15;
  wire N16;
  wire N17;
  wire N18;
  wire \NLW_CLK_GEN/pll_base_inst_CLKOUT3_UNCONNECTED ;
  wire \NLW_CLK_GEN/pll_base_inst_CLKOUT4_UNCONNECTED ;
  wire \NLW_CLK_GEN/pll_base_inst_CLKOUT5_UNCONNECTED ;
  wire \NLW_CLK_GEN/pll_base_inst_CLKOUT2_UNCONNECTED ;
  wire [1 : 0] NE_SYN;
  wire [1 : 0] NOE_SYN;
  wire [31 : 0] D_SYN;
  wire [2 : 0] NWE_SYN;
  wire [15 : 0] Y;
  wire [15 : 0] Result;
  wire [15 : 0] \EQ_PE_I/QINT ;
  wire [15 : 0] \EQ_PE_I/Maccum_QINT_lut ;
  wire [14 : 0] \EQ_PE_I/Maccum_QINT_cy ;
  VCC   XST_VCC (
    .P(\EQ_PE_I/QINT_eqn )
  );
  GND   XST_GND (
    .G(N1)
  );
  FDC #(
    .INIT ( 1'b0 ))
  NE_SYN_0 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(NE_SYN[1]),
    .Q(NE_SYN[0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  NE_SYN_1 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(NE_IBUF_3),
    .Q(NE_SYN[1])
  );
  FDC   EN (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(PSH_OUT),
    .Q(EN_47)
  );
  FDC #(
    .INIT ( 1'b0 ))
  NOE_SYN_0 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(NOE_SYN[1]),
    .Q(NOE_SYN[0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  NOE_SYN_1 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(NOE_IBUF_2),
    .Q(NOE_SYN[1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_0 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[16]),
    .Q(D_SYN[0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_1 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[17]),
    .Q(D_SYN[1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_2 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[18]),
    .Q(D_SYN[2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_3 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[19]),
    .Q(D_SYN[3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_4 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[20]),
    .Q(D_SYN[4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_5 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[21]),
    .Q(D_SYN[5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_6 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[22]),
    .Q(D_SYN[6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_7 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[23]),
    .Q(D_SYN[7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_8 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[24]),
    .Q(D_SYN[8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_9 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[25]),
    .Q(D_SYN[9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_10 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[26]),
    .Q(D_SYN[10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_11 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[27]),
    .Q(D_SYN[11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_12 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[28]),
    .Q(D_SYN[12])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_13 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[29]),
    .Q(D_SYN[13])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_14 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[30]),
    .Q(D_SYN[14])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_15 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(D_SYN[31]),
    .Q(D_SYN[15])
  );
  FDC #(
    .INIT ( 1'b0 ))
  NWE_SYN_0 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(NWE_SYN[1]),
    .Q(NWE_SYN[0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  NWE_SYN_1 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(NWE_SYN[2]),
    .Q(NWE_SYN[1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  NWE_SYN_2 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(NWE_IBUF_4),
    .Q(NWE_SYN[2])
  );
  FDC   Q_PST (
    .C(EN_47),
    .CLR(START_10),
    .D(\EQ_PE_I/QINT_eqn ),
    .Q(Q_PST_67)
  );
  FDCE   Y_0 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[0]),
    .Q(Y[0])
  );
  FDCE   Y_1 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[1]),
    .Q(Y[1])
  );
  FDCE   Y_2 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[2]),
    .Q(Y[2])
  );
  FDCE   Y_3 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[3]),
    .Q(Y[3])
  );
  FDCE   Y_4 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[4]),
    .Q(Y[4])
  );
  FDCE   Y_5 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[5]),
    .Q(Y[5])
  );
  FDCE   Y_6 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[6]),
    .Q(Y[6])
  );
  FDCE   Y_7 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[7]),
    .Q(Y[7])
  );
  FDCE   Y_8 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[8]),
    .Q(Y[8])
  );
  FDCE   Y_9 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[9]),
    .Q(Y[9])
  );
  FDCE   Y_10 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[10]),
    .Q(Y[10])
  );
  FDCE   Y_11 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[11]),
    .Q(Y[11])
  );
  FDCE   Y_12 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[12]),
    .Q(Y[12])
  );
  FDCE   Y_13 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[13]),
    .Q(Y[13])
  );
  FDCE   Y_14 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[14]),
    .Q(Y[14])
  );
  FDCE   Y_15 (
    .C(CLK_SYN),
    .CE(EN_47),
    .CLR(NRESET_I_inv),
    .D(D_SYN[15]),
    .Q(Y[15])
  );
  FDC   START (
    .C(CLK_PE),
    .CLR(NRESET_I_inv),
    .D(Q_PST_67),
    .Q(START_10)
  );
  FDE   \EQ_PE_I/RDY  (
    .C(CLK_PE),
    .CE(NRESET_I),
    .D(\EQ_PE_I/GND_6_o_GND_6_o_equal_1_o ),
    .Q(\EQ_PE_I/RDY_9 )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<0>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [0]),
    .I2(Y[0]),
    .O(\EQ_PE_I/Maccum_QINT_lut [0])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<0>  (
    .CI(N1),
    .DI(Eqn_0_mand1_113),
    .S(\EQ_PE_I/Maccum_QINT_lut [0]),
    .O(\EQ_PE_I/Maccum_QINT_cy [0])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<0>  (
    .CI(N1),
    .LI(\EQ_PE_I/Maccum_QINT_lut [0]),
    .O(Result[0])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<1>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [1]),
    .I2(Y[1]),
    .O(\EQ_PE_I/Maccum_QINT_lut [1])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<1>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [0]),
    .DI(Eqn_1_mand1_117),
    .S(\EQ_PE_I/Maccum_QINT_lut [1]),
    .O(\EQ_PE_I/Maccum_QINT_cy [1])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<1>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [0]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [1]),
    .O(Result[1])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<2>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [2]),
    .I2(Y[2]),
    .O(\EQ_PE_I/Maccum_QINT_lut [2])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<2>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [1]),
    .DI(Eqn_2_mand1_121),
    .S(\EQ_PE_I/Maccum_QINT_lut [2]),
    .O(\EQ_PE_I/Maccum_QINT_cy [2])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<2>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [1]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [2]),
    .O(Result[2])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<3>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [3]),
    .I2(Y[3]),
    .O(\EQ_PE_I/Maccum_QINT_lut [3])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<3>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [2]),
    .DI(Eqn_3_mand1_125),
    .S(\EQ_PE_I/Maccum_QINT_lut [3]),
    .O(\EQ_PE_I/Maccum_QINT_cy [3])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<3>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [2]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [3]),
    .O(Result[3])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<4>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [4]),
    .I2(Y[4]),
    .O(\EQ_PE_I/Maccum_QINT_lut [4])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<4>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [3]),
    .DI(Eqn_4_mand1_129),
    .S(\EQ_PE_I/Maccum_QINT_lut [4]),
    .O(\EQ_PE_I/Maccum_QINT_cy [4])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<4>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [3]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [4]),
    .O(Result[4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<5>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [5]),
    .I2(Y[5]),
    .O(\EQ_PE_I/Maccum_QINT_lut [5])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<5>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [4]),
    .DI(Eqn_5_mand1_133),
    .S(\EQ_PE_I/Maccum_QINT_lut [5]),
    .O(\EQ_PE_I/Maccum_QINT_cy [5])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<5>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [4]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [5]),
    .O(Result[5])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<6>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [6]),
    .I2(Y[6]),
    .O(\EQ_PE_I/Maccum_QINT_lut [6])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<6>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [5]),
    .DI(Eqn_6_mand1_137),
    .S(\EQ_PE_I/Maccum_QINT_lut [6]),
    .O(\EQ_PE_I/Maccum_QINT_cy [6])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<6>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [5]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [6]),
    .O(Result[6])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<7>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [7]),
    .I2(Y[7]),
    .O(\EQ_PE_I/Maccum_QINT_lut [7])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<7>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [6]),
    .DI(Eqn_7_mand1_141),
    .S(\EQ_PE_I/Maccum_QINT_lut [7]),
    .O(\EQ_PE_I/Maccum_QINT_cy [7])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<7>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [6]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [7]),
    .O(Result[7])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<8>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [8]),
    .I2(Y[8]),
    .O(\EQ_PE_I/Maccum_QINT_lut [8])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<8>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [7]),
    .DI(Eqn_8_mand1_145),
    .S(\EQ_PE_I/Maccum_QINT_lut [8]),
    .O(\EQ_PE_I/Maccum_QINT_cy [8])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<8>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [7]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [8]),
    .O(Result[8])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<9>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [9]),
    .I2(Y[9]),
    .O(\EQ_PE_I/Maccum_QINT_lut [9])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<9>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [8]),
    .DI(Eqn_9_mand1_149),
    .S(\EQ_PE_I/Maccum_QINT_lut [9]),
    .O(\EQ_PE_I/Maccum_QINT_cy [9])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<9>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [8]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [9]),
    .O(Result[9])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<10>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [10]),
    .I2(Y[10]),
    .O(\EQ_PE_I/Maccum_QINT_lut [10])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<10>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [9]),
    .DI(Eqn_10_mand1_153),
    .S(\EQ_PE_I/Maccum_QINT_lut [10]),
    .O(\EQ_PE_I/Maccum_QINT_cy [10])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<10>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [9]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [10]),
    .O(Result[10])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<11>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [11]),
    .I2(Y[11]),
    .O(\EQ_PE_I/Maccum_QINT_lut [11])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<11>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [10]),
    .DI(Eqn_11_mand1_157),
    .S(\EQ_PE_I/Maccum_QINT_lut [11]),
    .O(\EQ_PE_I/Maccum_QINT_cy [11])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<11>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [10]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [11]),
    .O(Result[11])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<12>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [12]),
    .I2(Y[12]),
    .O(\EQ_PE_I/Maccum_QINT_lut [12])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<12>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [11]),
    .DI(Eqn_12_mand1_161),
    .S(\EQ_PE_I/Maccum_QINT_lut [12]),
    .O(\EQ_PE_I/Maccum_QINT_cy [12])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<12>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [11]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [12]),
    .O(Result[12])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<13>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [13]),
    .I2(Y[13]),
    .O(\EQ_PE_I/Maccum_QINT_lut [13])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<13>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [12]),
    .DI(Eqn_13_mand1_165),
    .S(\EQ_PE_I/Maccum_QINT_lut [13]),
    .O(\EQ_PE_I/Maccum_QINT_cy [13])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<13>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [12]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [13]),
    .O(Result[13])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<14>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [14]),
    .I2(Y[14]),
    .O(\EQ_PE_I/Maccum_QINT_lut [14])
  );
  MUXCY   \EQ_PE_I/Maccum_QINT_cy<14>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [13]),
    .DI(Eqn_14_mand1_169),
    .S(\EQ_PE_I/Maccum_QINT_lut [14]),
    .O(\EQ_PE_I/Maccum_QINT_cy [14])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<14>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [13]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [14]),
    .O(Result[14])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \EQ_PE_I/Maccum_QINT_lut<15>  (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [15]),
    .I2(Y[15]),
    .O(\EQ_PE_I/Maccum_QINT_lut [15])
  );
  XORCY   \EQ_PE_I/Maccum_QINT_xor<15>  (
    .CI(\EQ_PE_I/Maccum_QINT_cy [14]),
    .LI(\EQ_PE_I/Maccum_QINT_lut [15]),
    .O(Result[15])
  );
  BUFG   \CLK_GEN/clkout2_buf  (
    .O(CLK_SYN),
    .I(\CLK_GEN/clkout1 )
  );
  BUFG   \CLK_GEN/clkout1_buf  (
    .O(CLK_PE),
    .I(\CLK_GEN/clkout0 )
  );
  BUFG   \CLK_GEN/clkf_buf  (
    .O(\CLK_GEN/clkfbout_buf ),
    .I(\CLK_GEN/clkfbout )
  );
  IBUFG #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IOSTANDARD ( "DEFAULT" ))
  \CLK_GEN/clkin1_buf  (
    .I(CLK),
    .O(\CLK_GEN/clkin1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  NRESET_I1 (
    .I0(LOCKED_OBUF_7),
    .I1(N_RESET_IBUF_1),
    .O(NRESET_I)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  TRISTATE1 (
    .I0(NE_SYN[0]),
    .I1(NOE_SYN[0]),
    .O(TRISTATE)
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  PSH_OUT1 (
    .I0(NE_SYN[0]),
    .I1(NWE_SYN[0]),
    .I2(NWE_SYN[1]),
    .O(PSH_OUT)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_0_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [0]),
    .O(Eqn_0_mand1_113)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_1_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [1]),
    .O(Eqn_1_mand1_117)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_2_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [2]),
    .O(Eqn_2_mand1_121)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_3_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [3]),
    .O(Eqn_3_mand1_125)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_4_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [4]),
    .O(Eqn_4_mand1_129)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_5_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [5]),
    .O(Eqn_5_mand1_133)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_6_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [6]),
    .O(Eqn_6_mand1_137)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_7_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [7]),
    .O(Eqn_7_mand1_141)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_8_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [8]),
    .O(Eqn_8_mand1_145)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_9_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [9]),
    .O(Eqn_9_mand1_149)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_10_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [10]),
    .O(Eqn_10_mand1_153)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_11_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [11]),
    .O(Eqn_11_mand1_157)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_12_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [12]),
    .O(Eqn_12_mand1_161)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_13_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [13]),
    .O(Eqn_13_mand1_165)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Eqn_14_mand1 (
    .I0(START_10),
    .I1(\EQ_PE_I/QINT [14]),
    .O(Eqn_14_mand1_169)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>2  (
    .I0(\EQ_PE_I/QINT [1]),
    .I1(\EQ_PE_I/QINT [0]),
    .I2(\EQ_PE_I/QINT [2]),
    .I3(\EQ_PE_I/QINT [3]),
    .I4(\EQ_PE_I/QINT [4]),
    .I5(\EQ_PE_I/QINT [5]),
    .O(\EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>1 )
  );
  IBUF   N_RESET_IBUF (
    .I(N_RESET),
    .O(N_RESET_IBUF_1)
  );
  IBUF   NOE_IBUF (
    .I(NOE),
    .O(NOE_IBUF_2)
  );
  IBUF   NE_IBUF (
    .I(NE),
    .O(NE_IBUF_3)
  );
  IBUF   NWE_IBUF (
    .I(NWE),
    .O(NWE_IBUF_4)
  );
  OBUF   LOCKED_OBUF (
    .I(LOCKED_OBUF_7),
    .O(LOCKED)
  );
  OBUF   RDY_OBUF (
    .I(\EQ_PE_I/RDY_9 ),
    .O(RDY)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF7FFFFFFF ))
  \EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>4_SW0  (
    .I0(\EQ_PE_I/QINT [12]),
    .I1(\EQ_PE_I/QINT [11]),
    .I2(\EQ_PE_I/QINT [10]),
    .I3(\EQ_PE_I/QINT [7]),
    .I4(\EQ_PE_I/QINT [6]),
    .I5(\EQ_PE_I/QINT [13]),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000080 ))
  \EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>4  (
    .I0(\EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>1 ),
    .I1(\EQ_PE_I/QINT [9]),
    .I2(\EQ_PE_I/QINT [8]),
    .I3(\EQ_PE_I/QINT [15]),
    .I4(\EQ_PE_I/QINT [14]),
    .I5(N35),
    .O(\EQ_PE_I/GND_6_o_GND_6_o_equal_1_o )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>4_SW1  (
    .I0(\EQ_PE_I/QINT [15]),
    .I1(\EQ_PE_I/QINT [14]),
    .O(N37)
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0F0F8F0F0F0 ))
  \EQ_PE_I/_n0025_inv1  (
    .I0(\EQ_PE_I/QINT [8]),
    .I1(\EQ_PE_I/QINT [9]),
    .I2(START_10),
    .I3(N37),
    .I4(\EQ_PE_I/GND_6_o_GND_6_o_equal_1_o<15>1 ),
    .I5(N35),
    .O(\EQ_PE_I/_n0025_inv )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  NRESET_I_inv1 (
    .I0(LOCKED_OBUF_7),
    .I1(N_RESET_IBUF_1),
    .O(NRESET_I_inv)
  );
  IOBUF   DATA_15_IOBUF (
    .I(\EQ_PE_I/QINT [15]),
    .T(TRISTATE),
    .O(N3),
    .IO(DATA[15])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_31 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N3),
    .Q(D_SYN[31])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_15  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[15]),
    .Q(\EQ_PE_I/QINT [15])
  );
  IOBUF   DATA_14_IOBUF (
    .I(\EQ_PE_I/QINT [14]),
    .T(TRISTATE),
    .O(N4),
    .IO(DATA[14])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_30 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N4),
    .Q(D_SYN[30])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_14  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[14]),
    .Q(\EQ_PE_I/QINT [14])
  );
  IOBUF   DATA_13_IOBUF (
    .I(\EQ_PE_I/QINT [13]),
    .T(TRISTATE),
    .O(N5),
    .IO(DATA[13])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_29 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N5),
    .Q(D_SYN[29])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_13  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[13]),
    .Q(\EQ_PE_I/QINT [13])
  );
  IOBUF   DATA_12_IOBUF (
    .I(\EQ_PE_I/QINT [12]),
    .T(TRISTATE),
    .O(N6),
    .IO(DATA[12])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_28 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N6),
    .Q(D_SYN[28])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_12  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[12]),
    .Q(\EQ_PE_I/QINT [12])
  );
  IOBUF   DATA_11_IOBUF (
    .I(\EQ_PE_I/QINT [11]),
    .T(TRISTATE),
    .O(N7),
    .IO(DATA[11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_27 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N7),
    .Q(D_SYN[27])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_11  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[11]),
    .Q(\EQ_PE_I/QINT [11])
  );
  IOBUF   DATA_10_IOBUF (
    .I(\EQ_PE_I/QINT [10]),
    .T(TRISTATE),
    .O(N8),
    .IO(DATA[10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_26 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N8),
    .Q(D_SYN[26])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_10  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[10]),
    .Q(\EQ_PE_I/QINT [10])
  );
  IOBUF   DATA_9_IOBUF (
    .I(\EQ_PE_I/QINT [9]),
    .T(TRISTATE),
    .O(N9),
    .IO(DATA[9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_25 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N9),
    .Q(D_SYN[25])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_9  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[9]),
    .Q(\EQ_PE_I/QINT [9])
  );
  IOBUF   DATA_8_IOBUF (
    .I(\EQ_PE_I/QINT [8]),
    .T(TRISTATE),
    .O(N10),
    .IO(DATA[8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_24 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N10),
    .Q(D_SYN[24])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_8  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[8]),
    .Q(\EQ_PE_I/QINT [8])
  );
  IOBUF   DATA_7_IOBUF (
    .I(\EQ_PE_I/QINT [7]),
    .T(TRISTATE),
    .O(N11),
    .IO(DATA[7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_23 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N11),
    .Q(D_SYN[23])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_7  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[7]),
    .Q(\EQ_PE_I/QINT [7])
  );
  IOBUF   DATA_6_IOBUF (
    .I(\EQ_PE_I/QINT [6]),
    .T(TRISTATE),
    .O(N12),
    .IO(DATA[6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_22 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N12),
    .Q(D_SYN[22])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_6  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[6]),
    .Q(\EQ_PE_I/QINT [6])
  );
  IOBUF   DATA_5_IOBUF (
    .I(\EQ_PE_I/QINT [5]),
    .T(TRISTATE),
    .O(N13),
    .IO(DATA[5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_21 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N13),
    .Q(D_SYN[21])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_5  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[5]),
    .Q(\EQ_PE_I/QINT [5])
  );
  IOBUF   DATA_4_IOBUF (
    .I(\EQ_PE_I/QINT [4]),
    .T(TRISTATE),
    .O(N14),
    .IO(DATA[4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_20 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N14),
    .Q(D_SYN[20])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_4  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[4]),
    .Q(\EQ_PE_I/QINT [4])
  );
  IOBUF   DATA_3_IOBUF (
    .I(\EQ_PE_I/QINT [3]),
    .T(TRISTATE),
    .O(N15),
    .IO(DATA[3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_19 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N15),
    .Q(D_SYN[19])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_3  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[3]),
    .Q(\EQ_PE_I/QINT [3])
  );
  IOBUF   DATA_2_IOBUF (
    .I(\EQ_PE_I/QINT [2]),
    .T(TRISTATE),
    .O(N16),
    .IO(DATA[2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_18 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N16),
    .Q(D_SYN[18])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_2  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[2]),
    .Q(\EQ_PE_I/QINT [2])
  );
  IOBUF   DATA_1_IOBUF (
    .I(\EQ_PE_I/QINT [1]),
    .T(TRISTATE),
    .O(N17),
    .IO(DATA[1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_17 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N17),
    .Q(D_SYN[17])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_1  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[1]),
    .Q(\EQ_PE_I/QINT [1])
  );
  IOBUF   DATA_0_IOBUF (
    .I(\EQ_PE_I/QINT [0]),
    .T(TRISTATE),
    .O(N18),
    .IO(DATA[0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  D_SYN_16 (
    .C(CLK_SYN),
    .CLR(NRESET_I_inv),
    .D(N18),
    .Q(D_SYN[16])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \EQ_PE_I/QINT_0  (
    .C(CLK_PE),
    .CE(\EQ_PE_I/_n0025_inv ),
    .CLR(NRESET_I_inv),
    .D(Result[0]),
    .Q(\EQ_PE_I/QINT [0])
  );
  PLL_BASE #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLKFBOUT_MULT ( 42 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN_PERIOD ( 40.0 ),
    .CLKOUT0_DIVIDE ( 7 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DIVIDE ( 3 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DIVIDE ( 1 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DIVIDE ( 1 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .COMPENSATION ( "SYSTEM_SYNCHRONOUS" ),
    .DIVCLK_DIVIDE ( 1 ),
    .REF_JITTER ( 0.010000 ),
    .RESET_ON_LOSS_OF_LOCK ( "FALSE" ))
  \CLK_GEN/pll_base_inst  (
    .CLKIN(\CLK_GEN/clkin1 ),
    .CLKFBIN(\CLK_GEN/clkfbout_buf ),
    .CLKOUT1(\CLK_GEN/clkout1 ),
    .CLKOUT0(\CLK_GEN/clkout0 ),
    .CLKFBOUT(\CLK_GEN/clkfbout ),
    .RST(N1),
    .LOCKED(LOCKED_OBUF_7),
    .CLKOUT3(\NLW_CLK_GEN/pll_base_inst_CLKOUT3_UNCONNECTED ),
    .CLKOUT4(\NLW_CLK_GEN/pll_base_inst_CLKOUT4_UNCONNECTED ),
    .CLKOUT5(\NLW_CLK_GEN/pll_base_inst_CLKOUT5_UNCONNECTED ),
    .CLKOUT2(\NLW_CLK_GEN/pll_base_inst_CLKOUT2_UNCONNECTED )
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

