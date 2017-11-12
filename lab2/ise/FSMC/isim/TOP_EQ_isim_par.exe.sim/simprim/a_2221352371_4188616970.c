/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *IEEE_P_3499444699;
static const char *ng1 = "Function initedgecount ended without a return statement";
extern char *IEEE_P_2717149903;
extern char *SIMPRIM_P_4208868169;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );
void ieee_p_2717149903_sub_2486506143_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, char *, char *, unsigned char , char *, char *, char *, unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char );
void ieee_p_2717149903_sub_539877840_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, unsigned int , unsigned int , char *);
void ieee_p_2717149903_sub_649313994_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, unsigned int , unsigned int , int64 );
char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
void simprim_p_4208868169_sub_2788155168_3008368149(char *, char *, char *, char *, char *, char *, char *, char *, char *, char *, int , char *, char *, char *, char *, char *, char *, char *, char *, unsigned char );
void simprim_p_4208868169_sub_2926893151_3008368149(char *, char *, char *, char *, char *, char *, char *, char *, char *, char *, unsigned char , char *, char *, char *, char *, char *, char *, char *, char *, unsigned char );


char *simprim_a_2221352371_4188616970_sub_4108030164_2322834110(char *t1, char *t2, unsigned char t3, int t4)
{
    char t6[16];
    char t9[16];
    char *t0;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    int t12;
    int t13;
    char *t14;
    unsigned int t15;
    char *t16;
    int t17;
    char *t18;
    int t19;
    char *t20;
    int t21;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;

LAB0:    t7 = (t6 + 4U);
    *((unsigned char *)t7) = t3;
    t8 = (t6 + 5U);
    *((int *)t8) = t4;
    if (t3 != 0)
        goto LAB2;

LAB4:    t10 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t9, 0, 3);
    t11 = (t9 + 12U);
    t15 = *((unsigned int *)t11);
    t15 = (t15 * 1U);
    t0 = xsi_get_transient_memory(t15);
    memcpy(t0, t10, t15);
    t14 = (t9 + 0U);
    t12 = *((int *)t14);
    t16 = (t9 + 4U);
    t13 = *((int *)t16);
    t18 = (t9 + 8U);
    t17 = *((int *)t18);
    t20 = (t2 + 0U);
    t22 = (t20 + 0U);
    *((int *)t22) = t12;
    t22 = (t20 + 4U);
    *((int *)t22) = t13;
    t22 = (t20 + 8U);
    *((int *)t22) = t17;
    t19 = (t13 - t12);
    t25 = (t19 * t17);
    t25 = (t25 + 1);
    t22 = (t20 + 12U);
    *((unsigned int *)t22) = t25;

LAB1:    return t0;
LAB2:    if (t4 == 4)
        goto LAB6;

LAB9:    if (t4 == 6)
        goto LAB6;

LAB10:    if (t4 == 8)
        goto LAB6;

LAB11:    if (t4 == 3)
        goto LAB7;

LAB12:    if (t4 == 5)
        goto LAB7;

LAB13:    if (t4 == 7)
        goto LAB7;

LAB14:
LAB8:    t10 = (t1 + 7896U);
    t11 = *((char **)t10);
    t12 = *((int *)t11);
    t13 = (t12 - 1);
    t10 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t9, t13, 3);
    t14 = (t9 + 12U);
    t15 = *((unsigned int *)t14);
    t15 = (t15 * 1U);
    t0 = xsi_get_transient_memory(t15);
    memcpy(t0, t10, t15);
    t16 = (t9 + 0U);
    t17 = *((int *)t16);
    t18 = (t9 + 4U);
    t19 = *((int *)t18);
    t20 = (t9 + 8U);
    t21 = *((int *)t20);
    t22 = (t2 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = t17;
    t23 = (t22 + 4U);
    *((int *)t23) = t19;
    t23 = (t22 + 8U);
    *((int *)t23) = t21;
    t24 = (t19 - t17);
    t25 = (t24 * t21);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    goto LAB1;

LAB3:    xsi_error(ng1);
    t0 = 0;
    goto LAB1;

LAB5:    goto LAB3;

LAB6:    t10 = (t1 + 7896U);
    t11 = *((char **)t10);
    t12 = *((int *)t11);
    t13 = (t12 - 1);
    t10 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t9, t13, 3);
    t14 = (t9 + 12U);
    t15 = *((unsigned int *)t14);
    t15 = (t15 * 1U);
    t0 = xsi_get_transient_memory(t15);
    memcpy(t0, t10, t15);
    t16 = (t9 + 0U);
    t17 = *((int *)t16);
    t18 = (t9 + 4U);
    t19 = *((int *)t18);
    t20 = (t9 + 8U);
    t21 = *((int *)t20);
    t22 = (t2 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = t17;
    t23 = (t22 + 4U);
    *((int *)t23) = t19;
    t23 = (t22 + 8U);
    *((int *)t23) = t21;
    t24 = (t19 - t17);
    t25 = (t24 * t21);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    goto LAB1;

LAB7:    t10 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t9, 1, 3);
    t11 = (t9 + 12U);
    t15 = *((unsigned int *)t11);
    t15 = (t15 * 1U);
    t0 = xsi_get_transient_memory(t15);
    memcpy(t0, t10, t15);
    t14 = (t9 + 0U);
    t12 = *((int *)t14);
    t16 = (t9 + 4U);
    t13 = *((int *)t16);
    t18 = (t9 + 8U);
    t17 = *((int *)t18);
    t20 = (t2 + 0U);
    t22 = (t20 + 0U);
    *((int *)t22) = t12;
    t22 = (t20 + 4U);
    *((int *)t22) = t13;
    t22 = (t20 + 8U);
    *((int *)t22) = t17;
    t19 = (t13 - t12);
    t25 = (t19 * t17);
    t25 = (t25 + 1);
    t22 = (t20 + 12U);
    *((unsigned int *)t22) = t25;
    goto LAB1;

LAB15:;
LAB16:    goto LAB5;

LAB17:    goto LAB5;

LAB18:    goto LAB5;

LAB19:    goto LAB3;

}

static void simprim_a_2221352371_4188616970_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 10416);
    t2 = (t0 + 2160U);
    t3 = (t0 + 14736);
    t4 = (t0 + 2000U);
    t5 = (t0 + 7176U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_539877840_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 14400);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_2221352371_4188616970_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 10664);
    t2 = (t0 + 2320U);
    t3 = (t0 + 14800);
    t4 = (t0 + 2160U);
    t5 = (t0 + 7656U);
    t6 = *((char **)t5);
    t7 = *((int64 *)t6);
    ieee_p_2717149903_sub_649313994_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 14416);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_2221352371_4188616970_p_2(char *t0)
{
    char t39[16];
    char t41[16];
    char t42[16];
    char t43[16];
    char t45[16];
    char t49[16];
    char t53[16];
    char t57[16];
    char *t1;
    char *t2;
    int64 t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    int t11;
    unsigned char t12;
    char *t13;
    int t14;
    unsigned char t15;
    char *t16;
    int t17;
    unsigned char t18;
    char *t19;
    int t20;
    unsigned char t21;
    char *t22;
    int t23;
    unsigned char t24;
    char *t25;
    int t26;
    unsigned char t27;
    char *t28;
    int t29;
    unsigned char t30;
    char *t31;
    int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t40;
    char *t46;
    char *t47;
    char *t50;
    char *t51;
    char *t54;
    char *t55;
    char *t58;
    char *t59;
    int t60;

LAB0:    t1 = (t0 + 11104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t3 = (1 * 1LL);
    t2 = (t0 + 10912);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t2 = (t0 + 7896U);
    t10 = *((char **)t2);
    t11 = *((int *)t10);
    t12 = (t11 == 1);
    if (t12 == 1)
        goto LAB26;

LAB27:    t2 = (t0 + 7896U);
    t13 = *((char **)t2);
    t14 = *((int *)t13);
    t15 = (t14 == 3);
    t9 = t15;

LAB28:    if (t9 == 1)
        goto LAB23;

LAB24:    t2 = (t0 + 7896U);
    t16 = *((char **)t2);
    t17 = *((int *)t16);
    t18 = (t17 == 4);
    t8 = t18;

LAB25:    if (t8 == 1)
        goto LAB20;

LAB21:    t2 = (t0 + 7896U);
    t19 = *((char **)t2);
    t20 = *((int *)t19);
    t21 = (t20 == 5);
    t7 = t21;

LAB22:    if (t7 == 1)
        goto LAB17;

LAB18:    t2 = (t0 + 7896U);
    t22 = *((char **)t2);
    t23 = *((int *)t22);
    t24 = (t23 == 6);
    t6 = t24;

LAB19:    if (t6 == 1)
        goto LAB14;

LAB15:    t2 = (t0 + 7896U);
    t25 = *((char **)t2);
    t26 = *((int *)t25);
    t27 = (t26 == 7);
    t5 = t27;

LAB16:    if (t5 == 1)
        goto LAB11;

LAB12:    t2 = (t0 + 7896U);
    t28 = *((char **)t2);
    t29 = *((int *)t28);
    t30 = (t29 == 8);
    t4 = t30;

LAB13:    if (t4 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 10912);
    t10 = (t0 + 23894);
    t16 = (t39 + 0U);
    t19 = (t16 + 0U);
    *((int *)t19) = 1;
    t19 = (t16 + 4U);
    *((int *)t19) = 24;
    t19 = (t16 + 8U);
    *((int *)t19) = 1;
    t11 = (24 - 1);
    t40 = (t11 * 1);
    t40 = (t40 + 1);
    t19 = (t16 + 12U);
    *((unsigned int *)t19) = t40;
    t19 = (t0 + 23918);
    t25 = (t41 + 0U);
    t28 = (t25 + 0U);
    *((int *)t28) = 1;
    t28 = (t25 + 4U);
    *((int *)t28) = 8;
    t28 = (t25 + 8U);
    *((int *)t28) = 1;
    t14 = (8 - 1);
    t40 = (t14 * 1);
    t40 = (t40 + 1);
    t28 = (t25 + 12U);
    *((unsigned int *)t28) = t40;
    t28 = (t0 + 23926);
    t33 = (t42 + 0U);
    t34 = (t33 + 0U);
    *((int *)t34) = 1;
    t34 = (t33 + 4U);
    *((int *)t34) = 9;
    t34 = (t33 + 8U);
    *((int *)t34) = 1;
    t17 = (9 - 1);
    t40 = (t17 * 1);
    t40 = (t40 + 1);
    t34 = (t33 + 12U);
    *((unsigned int *)t34) = t40;
    t34 = (t0 + 23935);
    t36 = (t43 + 0U);
    t37 = (t36 + 0U);
    *((int *)t37) = 1;
    t37 = (t36 + 4U);
    *((int *)t37) = 0;
    t37 = (t36 + 8U);
    *((int *)t37) = 1;
    t20 = (0 - 1);
    t40 = (t20 * 1);
    t40 = (t40 + 1);
    t37 = (t36 + 12U);
    *((unsigned int *)t37) = t40;
    t37 = (t0 + 7896U);
    t38 = *((char **)t37);
    t23 = *((int *)t38);
    t37 = (t0 + 23935);
    t46 = (t45 + 0U);
    t47 = (t46 + 0U);
    *((int *)t47) = 1;
    t47 = (t46 + 4U);
    *((int *)t47) = 0;
    t47 = (t46 + 8U);
    *((int *)t47) = 1;
    t26 = (0 - 1);
    t40 = (t26 * 1);
    t40 = (t40 + 1);
    t47 = (t46 + 12U);
    *((unsigned int *)t47) = t40;
    t47 = (t0 + 23935);
    t50 = (t49 + 0U);
    t51 = (t50 + 0U);
    *((int *)t51) = 1;
    t51 = (t50 + 4U);
    *((int *)t51) = 41;
    t51 = (t50 + 8U);
    *((int *)t51) = 1;
    t29 = (41 - 1);
    t40 = (t29 * 1);
    t40 = (t40 + 1);
    t51 = (t50 + 12U);
    *((unsigned int *)t51) = t40;
    t51 = (t0 + 23976);
    t54 = (t53 + 0U);
    t55 = (t54 + 0U);
    *((int *)t55) = 1;
    t55 = (t54 + 4U);
    *((int *)t55) = 24;
    t55 = (t54 + 8U);
    *((int *)t55) = 1;
    t32 = (24 - 1);
    t40 = (t32 * 1);
    t40 = (t40 + 1);
    t55 = (t54 + 12U);
    *((unsigned int *)t55) = t40;
    t55 = (t0 + 24000);
    t58 = (t57 + 0U);
    t59 = (t58 + 0U);
    *((int *)t59) = 1;
    t59 = (t58 + 4U);
    *((int *)t59) = 0;
    t59 = (t58 + 8U);
    *((int *)t59) = 1;
    t60 = (0 - 1);
    t40 = (t60 * 1);
    t40 = (t40 + 1);
    t59 = (t58 + 12U);
    *((unsigned int *)t59) = t40;
    simprim_p_4208868169_sub_2788155168_3008368149(SIMPRIM_P_4208868169, t2, t10, t39, t19, t41, t28, t42, t34, t43, t23, t37, t45, t47, t49, t51, t53, t55, t57, (unsigned char)3);

LAB9:    t2 = (t0 + 7776U);
    t10 = *((char **)t2);
    t5 = *((unsigned char *)t10);
    if (t5 == 1)
        goto LAB49;

LAB50:    t2 = (t0 + 7896U);
    t13 = *((char **)t2);
    t11 = *((int *)t13);
    t6 = (t11 == 1);
    t4 = t6;

LAB51:    if (t4 != 0)
        goto LAB46;

LAB48:    t2 = (t0 + 15056);
    t10 = (t2 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB47:    t2 = (t0 + 8016U);
    t10 = *((char **)t2);
    t4 = *((unsigned char *)t10);
    t5 = (t4 == (unsigned char)0);
    if (t5 != 0)
        goto LAB52;

LAB54:    t2 = (t0 + 8016U);
    t10 = *((char **)t2);
    t4 = *((unsigned char *)t10);
    t5 = (t4 == (unsigned char)1);
    if (t5 != 0)
        goto LAB55;

LAB56:    t2 = (t0 + 10912);
    t10 = (t0 + 24000);
    t16 = (t39 + 0U);
    t19 = (t16 + 0U);
    *((int *)t19) = 1;
    t19 = (t16 + 4U);
    *((int *)t19) = 26;
    t19 = (t16 + 8U);
    *((int *)t19) = 1;
    t11 = (26 - 1);
    t40 = (t11 * 1);
    t40 = (t40 + 1);
    t19 = (t16 + 12U);
    *((unsigned int *)t19) = t40;
    t19 = (t0 + 24026);
    t25 = (t41 + 0U);
    t28 = (t25 + 0U);
    *((int *)t28) = 1;
    t28 = (t25 + 4U);
    *((int *)t28) = 10;
    t28 = (t25 + 8U);
    *((int *)t28) = 1;
    t14 = (10 - 1);
    t40 = (t14 * 1);
    t40 = (t40 + 1);
    t28 = (t25 + 12U);
    *((unsigned int *)t28) = t40;
    t28 = (t0 + 24036);
    t33 = (t42 + 0U);
    t34 = (t33 + 0U);
    *((int *)t34) = 1;
    t34 = (t33 + 4U);
    *((int *)t34) = 9;
    t34 = (t33 + 8U);
    *((int *)t34) = 1;
    t17 = (9 - 1);
    t40 = (t17 * 1);
    t40 = (t40 + 1);
    t34 = (t33 + 12U);
    *((unsigned int *)t34) = t40;
    t34 = (t0 + 24045);
    t36 = (t43 + 0U);
    t37 = (t36 + 0U);
    *((int *)t37) = 1;
    t37 = (t36 + 4U);
    *((int *)t37) = 0;
    t37 = (t36 + 8U);
    *((int *)t37) = 1;
    t20 = (0 - 1);
    t40 = (t20 * 1);
    t40 = (t40 + 1);
    t37 = (t36 + 12U);
    *((unsigned int *)t37) = t40;
    t37 = (t0 + 8016U);
    t38 = *((char **)t37);
    t4 = *((unsigned char *)t38);
    t37 = (t0 + 24045);
    t46 = (t45 + 0U);
    t47 = (t46 + 0U);
    *((int *)t47) = 1;
    t47 = (t46 + 4U);
    *((int *)t47) = 0;
    t47 = (t46 + 8U);
    *((int *)t47) = 1;
    t23 = (0 - 1);
    t40 = (t23 * 1);
    t40 = (t40 + 1);
    t47 = (t46 + 12U);
    *((unsigned int *)t47) = t40;
    t47 = (t0 + 24045);
    t50 = (t49 + 0U);
    t51 = (t50 + 0U);
    *((int *)t51) = 1;
    t51 = (t50 + 4U);
    *((int *)t51) = 41;
    t51 = (t50 + 8U);
    *((int *)t51) = 1;
    t26 = (41 - 1);
    t40 = (t26 * 1);
    t40 = (t40 + 1);
    t51 = (t50 + 12U);
    *((unsigned int *)t51) = t40;
    t51 = (t0 + 24086);
    t54 = (t53 + 0U);
    t55 = (t54 + 0U);
    *((int *)t55) = 1;
    t55 = (t54 + 4U);
    *((int *)t55) = 15;
    t55 = (t54 + 8U);
    *((int *)t55) = 1;
    t29 = (15 - 1);
    t40 = (t29 * 1);
    t40 = (t40 + 1);
    t55 = (t54 + 12U);
    *((unsigned int *)t55) = t40;
    t55 = (t0 + 24101);
    t58 = (t57 + 0U);
    t59 = (t58 + 0U);
    *((int *)t59) = 1;
    t59 = (t58 + 4U);
    *((int *)t59) = 0;
    t59 = (t58 + 8U);
    *((int *)t59) = 1;
    t32 = (0 - 1);
    t40 = (t32 * 1);
    t40 = (t40 + 1);
    t59 = (t58 + 12U);
    *((unsigned int *)t59) = t40;
    simprim_p_4208868169_sub_2926893151_3008368149(SIMPRIM_P_4208868169, t2, t10, t39, t19, t41, t28, t42, t34, t43, t4, t37, t45, t47, t49, t51, t53, t55, t57, (unsigned char)3);

LAB53:    t2 = (t0 + 8136U);
    t10 = *((char **)t2);
    t4 = *((unsigned char *)t10);
    t5 = (t4 == (unsigned char)0);
    if (t5 != 0)
        goto LAB57;

LAB59:    t2 = (t0 + 8136U);
    t10 = *((char **)t2);
    t4 = *((unsigned char *)t10);
    t5 = (t4 == (unsigned char)1);
    if (t5 != 0)
        goto LAB60;

LAB61:    t2 = (t0 + 10912);
    t10 = (t0 + 24101);
    t16 = (t39 + 0U);
    t19 = (t16 + 0U);
    *((int *)t19) = 1;
    t19 = (t16 + 4U);
    *((int *)t19) = 26;
    t19 = (t16 + 8U);
    *((int *)t19) = 1;
    t11 = (26 - 1);
    t40 = (t11 * 1);
    t40 = (t40 + 1);
    t19 = (t16 + 12U);
    *((unsigned int *)t19) = t40;
    t19 = (t0 + 24127);
    t25 = (t41 + 0U);
    t28 = (t25 + 0U);
    *((int *)t28) = 1;
    t28 = (t25 + 4U);
    *((int *)t28) = 13;
    t28 = (t25 + 8U);
    *((int *)t28) = 1;
    t14 = (13 - 1);
    t40 = (t14 * 1);
    t40 = (t40 + 1);
    t28 = (t25 + 12U);
    *((unsigned int *)t28) = t40;
    t28 = (t0 + 24140);
    t33 = (t42 + 0U);
    t34 = (t33 + 0U);
    *((int *)t34) = 1;
    t34 = (t33 + 4U);
    *((int *)t34) = 9;
    t34 = (t33 + 8U);
    *((int *)t34) = 1;
    t17 = (9 - 1);
    t40 = (t17 * 1);
    t40 = (t40 + 1);
    t34 = (t33 + 12U);
    *((unsigned int *)t34) = t40;
    t34 = (t0 + 24149);
    t36 = (t43 + 0U);
    t37 = (t36 + 0U);
    *((int *)t37) = 1;
    t37 = (t36 + 4U);
    *((int *)t37) = 0;
    t37 = (t36 + 8U);
    *((int *)t37) = 1;
    t20 = (0 - 1);
    t40 = (t20 * 1);
    t40 = (t40 + 1);
    t37 = (t36 + 12U);
    *((unsigned int *)t37) = t40;
    t37 = (t0 + 8136U);
    t38 = *((char **)t37);
    t4 = *((unsigned char *)t38);
    t37 = (t0 + 24149);
    t46 = (t45 + 0U);
    t47 = (t46 + 0U);
    *((int *)t47) = 1;
    t47 = (t46 + 4U);
    *((int *)t47) = 0;
    t47 = (t46 + 8U);
    *((int *)t47) = 1;
    t23 = (0 - 1);
    t40 = (t23 * 1);
    t40 = (t40 + 1);
    t47 = (t46 + 12U);
    *((unsigned int *)t47) = t40;
    t47 = (t0 + 24149);
    t50 = (t49 + 0U);
    t51 = (t50 + 0U);
    *((int *)t51) = 1;
    t51 = (t50 + 4U);
    *((int *)t51) = 41;
    t51 = (t50 + 8U);
    *((int *)t51) = 1;
    t26 = (41 - 1);
    t40 = (t26 * 1);
    t40 = (t40 + 1);
    t51 = (t50 + 12U);
    *((unsigned int *)t51) = t40;
    t51 = (t0 + 24190);
    t54 = (t53 + 0U);
    t55 = (t54 + 0U);
    *((int *)t55) = 1;
    t55 = (t54 + 4U);
    *((int *)t55) = 15;
    t55 = (t54 + 8U);
    *((int *)t55) = 1;
    t29 = (15 - 1);
    t40 = (t29 * 1);
    t40 = (t40 + 1);
    t55 = (t54 + 12U);
    *((unsigned int *)t55) = t40;
    t55 = (t0 + 24205);
    t58 = (t57 + 0U);
    t59 = (t58 + 0U);
    *((int *)t59) = 1;
    t59 = (t58 + 4U);
    *((int *)t59) = 0;
    t59 = (t58 + 8U);
    *((int *)t59) = 1;
    t32 = (0 - 1);
    t40 = (t32 * 1);
    t40 = (t40 + 1);
    t59 = (t58 + 12U);
    *((unsigned int *)t59) = t40;
    simprim_p_4208868169_sub_2926893151_3008368149(SIMPRIM_P_4208868169, t2, t10, t39, t19, t41, t28, t42, t34, t43, t4, t37, t45, t47, t49, t51, t53, t55, t57, (unsigned char)3);

LAB58:    t2 = (t0 + 8136U);
    t10 = *((char **)t2);
    t5 = *((unsigned char *)t10);
    if (t5 == 1)
        goto LAB65;

LAB66:    t4 = (unsigned char)0;

LAB67:    if (t4 != 0)
        goto LAB62;

LAB64:
LAB63:    t2 = (t0 + 7776U);
    t10 = *((char **)t2);
    t5 = *((unsigned char *)t10);
    if (t5 == 1)
        goto LAB73;

LAB74:    t4 = (unsigned char)0;

LAB75:    if (t4 != 0)
        goto LAB70;

LAB72:
LAB71:    t2 = (t0 + 8136U);
    t10 = *((char **)t2);
    t5 = *((unsigned char *)t10);
    if (t5 == 1)
        goto LAB81;

LAB82:    t4 = (unsigned char)0;

LAB83:    if (t4 != 0)
        goto LAB78;

LAB80:
LAB79:
LAB88:    *((char **)t1) = &&LAB89;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t2 = (t0 + 7896U);
    t31 = *((char **)t2);
    t32 = *((int *)t31);
    if (t32 == 1)
        goto LAB30;

LAB38:    if (t32 == 3)
        goto LAB31;

LAB39:    if (t32 == 4)
        goto LAB32;

LAB40:    if (t32 == 5)
        goto LAB33;

LAB41:    if (t32 == 6)
        goto LAB34;

LAB42:    if (t32 == 7)
        goto LAB35;

LAB43:    if (t32 == 8)
        goto LAB36;

LAB44:
LAB37:
LAB29:    goto LAB9;

LAB11:    t4 = (unsigned char)1;
    goto LAB13;

LAB14:    t5 = (unsigned char)1;
    goto LAB16;

LAB17:    t6 = (unsigned char)1;
    goto LAB19;

LAB20:    t7 = (unsigned char)1;
    goto LAB22;

LAB23:    t8 = (unsigned char)1;
    goto LAB25;

LAB26:    t9 = (unsigned char)1;
    goto LAB28;

LAB30:    t2 = (t0 + 23852);
    t34 = (t0 + 14864);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    memcpy(t38, t2, 3U);
    xsi_driver_first_trans_fast(t34);
    t2 = (t0 + 23855);
    t13 = (t0 + 14928);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t2, 3U);
    xsi_driver_first_trans_fast(t13);
    t2 = (t0 + 14992);
    t10 = (t2 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB29;

LAB31:    t2 = (t0 + 23858);
    t13 = (t0 + 14864);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t2, 3U);
    xsi_driver_first_trans_fast(t13);
    t2 = (t0 + 23861);
    t13 = (t0 + 14928);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t2, 3U);
    xsi_driver_first_trans_fast(t13);
    t2 = (t0 + 14992);
    t10 = (t2 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB29;

LAB32:    t2 = (t0 + 23864);
    t13 = (t0 + 14864);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t2, 3U);
    xsi_driver_first_trans_fast(t13);
    t2 = (t0 + 23867);
    t13 = (t0 + 14928);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t2, 3U);
    xsi_driver_first_trans_fast(t13);
    t2 = (t0 + 14992);
    t10 = (t2 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB29;

LAB33:    t2 = (t0 + 23870);
    t13 = (t0 + 14864);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t2, 3U);
    xsi_driver_first_trans_fast(t13);
    t2 = (t0 + 23873);
    t13 = (t0 + 14928);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t2, 3U);
    xsi_driver_first_trans_fast(t13);
    t2 = (t0 + 14992);
    t10 = (t2 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB29;

LAB34:    t2 = (t0 + 23876);
    t13 = (t0 + 14864);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t2, 3U);
    xsi_driver_first_trans_fast(t13);
    t2 = (t0 + 23879);
    t13 = (t0 + 14928);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t2, 3U);
    xsi_driver_first_trans_fast(t13);
    t2 = (t0 + 14992);
    t10 = (t2 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB29;

LAB35:    t2 = (t0 + 23882);
    t13 = (t0 + 14864);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t2, 3U);
    xsi_driver_first_trans_fast(t13);
    t2 = (t0 + 23885);
    t13 = (t0 + 14928);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t2, 3U);
    xsi_driver_first_trans_fast(t13);
    t2 = (t0 + 14992);
    t10 = (t2 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB29;

LAB36:    t2 = (t0 + 23888);
    t13 = (t0 + 14864);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t2, 3U);
    xsi_driver_first_trans_fast(t13);
    t2 = (t0 + 23891);
    t13 = (t0 + 14928);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t2, 3U);
    xsi_driver_first_trans_fast(t13);
    t2 = (t0 + 14992);
    t10 = (t2 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB29;

LAB45:;
LAB46:    t2 = (t0 + 15056);
    t16 = (t2 + 56U);
    t19 = *((char **)t16);
    t22 = (t19 + 56U);
    t25 = *((char **)t22);
    *((unsigned char *)t25) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB47;

LAB49:    t4 = (unsigned char)1;
    goto LAB51;

LAB52:    t2 = (t0 + 8376U);
    t13 = *((char **)t2);
    t2 = (t13 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    goto LAB53;

LAB55:    t2 = (t0 + 8376U);
    t13 = *((char **)t2);
    t2 = (t13 + 0);
    *((unsigned char *)t2) = (unsigned char)3;
    goto LAB53;

LAB57:    t2 = (t0 + 8496U);
    t13 = *((char **)t2);
    t2 = (t13 + 0);
    *((unsigned char *)t2) = (unsigned char)2;
    goto LAB58;

LAB60:    t2 = (t0 + 8496U);
    t13 = *((char **)t2);
    t2 = (t13 + 0);
    *((unsigned char *)t2) = (unsigned char)3;
    goto LAB58;

LAB62:    if ((unsigned char)0 == 0)
        goto LAB68;

LAB69:    t2 = (t0 + 24293);
    xsi_report(t2, 64U, (unsigned char)3);
    goto LAB63;

LAB65:    t2 = (t0 + 7896U);
    t13 = *((char **)t2);
    t11 = *((int *)t13);
    t6 = (t11 == 1);
    t4 = t6;
    goto LAB67;

LAB68:    t2 = (t0 + 24205);
    xsi_report(t2, 88U, 2);
    goto LAB69;

LAB70:    if ((unsigned char)0 == 0)
        goto LAB76;

LAB77:    goto LAB71;

LAB73:    t2 = (t0 + 7896U);
    t13 = *((char **)t2);
    t11 = *((int *)t13);
    t6 = (t11 != 1);
    t4 = t6;
    goto LAB75;

LAB76:    t2 = (t0 + 24357);
    xsi_report(t2, 115U, (unsigned char)3);
    goto LAB77;

LAB78:    if ((unsigned char)0 == 0)
        goto LAB84;

LAB85:    t2 = (t0 + 24574);
    xsi_report(t2, 55U, (unsigned char)3);
    goto LAB79;

LAB81:    t2 = (t0 + 8016U);
    t13 = *((char **)t2);
    t6 = *((unsigned char *)t13);
    t4 = t6;
    goto LAB83;

LAB84:    t2 = (t0 + 24472);
    xsi_report(t2, 102U, 2);
    goto LAB85;

LAB86:    goto LAB2;

LAB87:    goto LAB86;

LAB89:    goto LAB87;

}

static void simprim_a_2221352371_4188616970_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 8016U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    if (t3 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 2360U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t11 = (t0 + 15120);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t13;
    xsi_driver_first_trans_fast(t11);

LAB2:    t18 = (t0 + 14432);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2360U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t1 = (t0 + 15120);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void simprim_a_2221352371_4188616970_p_4(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int64 t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    t1 = (t0 + 6160U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 6160U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 14448);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t3 = (t0 + 15184);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t3, 0U, 1, 0LL);
    t8 = (100 * 1LL);
    t9 = (t0 + 15184);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t9, 0U, 1, t8);
    goto LAB3;

LAB5:    t3 = (t0 + 15248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t3, 0U, 1, 0LL);
    t8 = (100 * 1LL);
    t9 = (t0 + 15248);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t9, 0U, 1, t8);
    goto LAB3;

}

static void simprim_a_2221352371_4188616970_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 8136U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    if (t3 != 0)
        goto LAB3;

LAB4:
LAB5:    t13 = (t0 + 6200U);
    t14 = *((char **)t13);
    t15 = *((unsigned char *)t14);
    t13 = (t0 + 15312);
    t16 = (t13 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t15;
    xsi_driver_first_trans_fast(t13);

LAB2:    t20 = (t0 + 14464);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 5880U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t1 = (t0 + 6040U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t5, t7);
    t1 = (t0 + 15312);
    t9 = (t1 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t8;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void simprim_a_2221352371_4188616970_p_6(char *t0)
{
    char t13[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 5680U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 14480);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t3 = (t0 + 4600U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 3960U);
    t3 = *((char **)t1);
    t1 = (t0 + 23532U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t3, t1, 1);
    t7 = (t13 + 12U);
    t14 = *((unsigned int *)t7);
    t15 = (1U * t14);
    t2 = (3U != t15);
    if (t2 == 1)
        goto LAB8;

LAB9:    t8 = (t0 + 15376);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 3U);
    xsi_driver_first_trans_fast(t8);

LAB6:    goto LAB3;

LAB5:    t3 = (t0 + 24629);
    t8 = (t0 + 15376);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 3U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_size_not_matching(3U, t15, 0);
    goto LAB9;

}

static void simprim_a_2221352371_4188616970_p_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3960U);
    t2 = *((char **)t1);
    t1 = (t0 + 23532U);
    t3 = (t0 + 8856U);
    t4 = *((char **)t3);
    t3 = (t0 + 23580U);
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 15440);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB3:    t1 = (t0 + 14496);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t6 = (t0 + 15440);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

}

static void simprim_a_2221352371_4188616970_p_8(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 5680U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 14512);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t3 = (t0 + 4600U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 15504);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

}

static void simprim_a_2221352371_4188616970_p_9(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:
LAB3:    t1 = (t0 + 6200U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 15568);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 14528);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void simprim_a_2221352371_4188616970_p_10(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 8976U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    if (t3 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 3960U);
    t2 = *((char **)t1);
    t1 = (t0 + 23532U);
    t4 = (t0 + 4120U);
    t5 = *((char **)t4);
    t4 = (t0 + 23548U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 15632);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB6:    t1 = (t0 + 3960U);
    t2 = *((char **)t1);
    t1 = (t0 + 23532U);
    t4 = (t0 + 4280U);
    t5 = *((char **)t4);
    t4 = (t0 + 23564U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 15696);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB9:
LAB3:    t1 = (t0 + 14544);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t1 = (t0 + 8976U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB3;

LAB5:    t6 = (t0 + 15632);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB6;

LAB8:    t6 = (t0 + 15696);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB9;

}

static void simprim_a_2221352371_4188616970_p_11(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    t1 = (t0 + 5680U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 5680U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 14560);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t3 = (t0 + 4760U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 5400U);
    t6 = *((char **)t3);
    t7 = *((unsigned char *)t6);
    t3 = (t0 + 4920U);
    t8 = *((char **)t3);
    t9 = *((unsigned char *)t8);
    t10 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t9);
    t11 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t10);
    t12 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t5, t11);
    t3 = (t0 + 15760);
    t13 = (t3 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

LAB5:    t3 = (t0 + 4440U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t7 = (t5 == (unsigned char)2);
    if (t7 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 15824);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB8:    goto LAB3;

LAB7:    t3 = (t0 + 5400U);
    t6 = *((char **)t3);
    t9 = *((unsigned char *)t6);
    t3 = (t0 + 15824);
    t8 = (t3 + 56U);
    t13 = *((char **)t8);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t9;
    xsi_driver_first_trans_fast(t3);
    goto LAB8;

}

static void simprim_a_2221352371_4188616970_p_12(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:
LAB3:    t1 = (t0 + 5400U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5560U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 15888);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 14576);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void simprim_a_2221352371_4188616970_p_13(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t2 = (t0 + 7896U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 == 1);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 5080U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t15 = (t0 + 5240U);
    t16 = *((char **)t15);
    t17 = *((unsigned char *)t16);
    t15 = (t0 + 15952);
    t18 = (t15 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t17;
    xsi_driver_first_trans_fast(t15);

LAB2:    t22 = (t0 + 14592);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 5720U);
    t9 = *((char **)t2);
    t10 = *((unsigned char *)t9);
    t2 = (t0 + 15952);
    t11 = (t2 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t10;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}

static void simprim_a_2221352371_4188616970_p_14(char *t0)
{
    char t8[16];
    char t25[16];
    char t31[16];
    char t36[16];
    char t37[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    char *t13;
    unsigned char t14;
    char *t15;
    int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    int64 t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    int t28;
    unsigned int t29;
    char *t30;
    char *t32;
    unsigned char t33;
    char *t34;
    unsigned char t35;

LAB0:    t1 = (t0 + 14080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 13888);
    t3 = (t0 + 1520U);
    t4 = (t0 + 16016);
    t5 = (t0 + 9096U);
    t6 = *((char **)t5);
    t5 = (t0 + 24632);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 1;
    t10 = (t9 + 4U);
    *((int *)t10) = 6;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (6 - 1);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = (t0 + 2520U);
    t13 = *((char **)t10);
    t14 = *((unsigned char *)t13);
    t10 = xsi_get_transient_memory(32U);
    memset(t10, 0, 32U);
    t15 = t10;
    t16 = (0 - 0);
    t12 = (t16 * 1);
    t17 = (32U * t12);
    t18 = (t15 + t17);
    t19 = t18;
    t20 = (t0 + 2320U);
    t21 = xsi_signal_get_last_event(t20);
    *((int64 *)t19) = t21;
    t22 = (t18 + 8U);
    t23 = (t0 + 7296U);
    t24 = *((char **)t23);
    memcpy(t22, t24, 16U);
    t23 = (t18 + 24U);
    *((unsigned char *)t23) = (unsigned char)1;
    t26 = (t25 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 0;
    t27 = (t26 + 4U);
    *((int *)t27) = 0;
    t27 = (t26 + 8U);
    *((int *)t27) = 1;
    t28 = (0 - 0);
    t29 = (t28 * 1);
    t29 = (t29 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t29;
    t27 = ((IEEE_P_2717149903) + 1288U);
    t30 = *((char **)t27);
    memcpy(t31, t30, 16U);
    t27 = (t0 + 6936U);
    t32 = *((char **)t27);
    t33 = *((unsigned char *)t32);
    t27 = (t0 + 7056U);
    t34 = *((char **)t27);
    t35 = *((unsigned char *)t34);
    ieee_p_2717149903_sub_2486506143_2101202839(IEEE_P_2717149903, t2, t3, 0U, 0U, t4, t6, t5, t8, t14, t10, t25, t31, (unsigned char)3, t33, t35, (unsigned char)1, (unsigned char)0, (unsigned char)0, (unsigned char)0);
    t2 = (t0 + 13888);
    t3 = (t0 + 1680U);
    t4 = (t0 + 16080);
    t5 = (t0 + 9216U);
    t6 = *((char **)t5);
    t5 = (t0 + 24638);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 1;
    t10 = (t9 + 4U);
    *((int *)t10) = 5;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (5 - 1);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = (t0 + 2680U);
    t13 = *((char **)t10);
    t14 = *((unsigned char *)t13);
    t10 = xsi_get_transient_memory(32U);
    memset(t10, 0, 32U);
    t15 = t10;
    t16 = (0 - 0);
    t12 = (t16 * 1);
    t17 = (32U * t12);
    t18 = (t15 + t17);
    t19 = t18;
    t20 = (t0 + 2320U);
    t21 = xsi_signal_get_last_event(t20);
    *((int64 *)t19) = t21;
    t22 = (t18 + 8U);
    t23 = (t0 + 7416U);
    t24 = *((char **)t23);
    memcpy(t22, t24, 16U);
    t23 = (t18 + 24U);
    *((unsigned char *)t23) = (unsigned char)1;
    t26 = (t25 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 0;
    t27 = (t26 + 4U);
    *((int *)t27) = 0;
    t27 = (t26 + 8U);
    *((int *)t27) = 1;
    t28 = (0 - 0);
    t29 = (t28 * 1);
    t29 = (t29 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t29;
    t27 = ((IEEE_P_2717149903) + 1288U);
    t30 = *((char **)t27);
    memcpy(t36, t30, 16U);
    t27 = (t0 + 6936U);
    t32 = *((char **)t27);
    t33 = *((unsigned char *)t32);
    t27 = (t0 + 7056U);
    t34 = *((char **)t27);
    t35 = *((unsigned char *)t34);
    ieee_p_2717149903_sub_2486506143_2101202839(IEEE_P_2717149903, t2, t3, 0U, 0U, t4, t6, t5, t8, t14, t10, t25, t36, (unsigned char)3, t33, t35, (unsigned char)1, (unsigned char)0, (unsigned char)0, (unsigned char)0);
    t2 = (t0 + 13888);
    t3 = (t0 + 1840U);
    t4 = (t0 + 16144);
    t5 = (t0 + 9336U);
    t6 = *((char **)t5);
    t5 = (t0 + 24643);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 1;
    t10 = (t9 + 4U);
    *((int *)t10) = 12;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (12 - 1);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = (t0 + 2840U);
    t13 = *((char **)t10);
    t14 = *((unsigned char *)t13);
    t10 = xsi_get_transient_memory(32U);
    memset(t10, 0, 32U);
    t15 = t10;
    t16 = (0 - 0);
    t12 = (t16 * 1);
    t17 = (32U * t12);
    t18 = (t15 + t17);
    t19 = t18;
    t20 = (t0 + 2320U);
    t21 = xsi_signal_get_last_event(t20);
    *((int64 *)t19) = t21;
    t22 = (t18 + 8U);
    t23 = (t0 + 7536U);
    t24 = *((char **)t23);
    memcpy(t22, t24, 16U);
    t23 = (t18 + 24U);
    *((unsigned char *)t23) = (unsigned char)1;
    t26 = (t25 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 0;
    t27 = (t26 + 4U);
    *((int *)t27) = 0;
    t27 = (t26 + 8U);
    *((int *)t27) = 1;
    t28 = (0 - 0);
    t29 = (t28 * 1);
    t29 = (t29 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t29;
    t27 = ((IEEE_P_2717149903) + 1288U);
    t30 = *((char **)t27);
    memcpy(t37, t30, 16U);
    t27 = (t0 + 6936U);
    t32 = *((char **)t27);
    t33 = *((unsigned char *)t32);
    t27 = (t0 + 7056U);
    t34 = *((char **)t27);
    t35 = *((unsigned char *)t34);
    ieee_p_2717149903_sub_2486506143_2101202839(IEEE_P_2717149903, t2, t3, 0U, 0U, t4, t6, t5, t8, t14, t10, t25, t37, (unsigned char)3, t33, t35, (unsigned char)1, (unsigned char)0, (unsigned char)0, (unsigned char)0);

LAB6:    t2 = (t0 + 14656);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t3 = (t0 + 14656);
    *((int *)t3) = 0;
    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void simprim_a_2221352371_4188616970_0997522304_init()
{
	static char *pe[] = {(void *)simprim_a_2221352371_4188616970_p_0,(void *)simprim_a_2221352371_4188616970_p_1,(void *)simprim_a_2221352371_4188616970_p_2,(void *)simprim_a_2221352371_4188616970_p_3,(void *)simprim_a_2221352371_4188616970_p_4,(void *)simprim_a_2221352371_4188616970_p_5,(void *)simprim_a_2221352371_4188616970_p_6,(void *)simprim_a_2221352371_4188616970_p_7,(void *)simprim_a_2221352371_4188616970_p_8,(void *)simprim_a_2221352371_4188616970_p_9,(void *)simprim_a_2221352371_4188616970_p_10,(void *)simprim_a_2221352371_4188616970_p_11,(void *)simprim_a_2221352371_4188616970_p_12,(void *)simprim_a_2221352371_4188616970_p_13,(void *)simprim_a_2221352371_4188616970_p_14};
	static char *se[] = {(void *)simprim_a_2221352371_4188616970_sub_4108030164_2322834110};
	xsi_register_didat("simprim_a_2221352371_4188616970_0997522304", "isim/TOP_EQ_isim_par.exe.sim/simprim/a_2221352371_4188616970_0997522304.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
