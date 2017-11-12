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
extern char *IEEE_P_2717149903;

void ieee_p_2717149903_sub_2486506143_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, char *, char *, unsigned char , char *, char *, char *, unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char );
void ieee_p_2717149903_sub_539877840_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, unsigned int , unsigned int , char *);


static void simprim_a_1861840547_1486755294_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 3688);
    t2 = (t0 + 1576U);
    t3 = (t0 + 4808);
    t4 = (t0 + 1416U);
    t5 = (t0 + 2272U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_539877840_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 4696);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_1861840547_1486755294_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2512U);
    t4 = *((char **)t2);
    t5 = *((unsigned char *)t4);
    t6 = (t5 != (unsigned char)1);
    if (t6 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB4;

LAB6:
LAB5:
LAB14:    *((char **)t1) = &&LAB15;

LAB1:    return;
LAB4:    if ((unsigned char)0 == 0)
        goto LAB10;

LAB11:    goto LAB5;

LAB7:    t2 = (t0 + 2512U);
    t7 = *((char **)t2);
    t8 = *((unsigned char *)t7);
    t9 = (t8 != (unsigned char)0);
    t3 = t9;
    goto LAB9;

LAB10:    t2 = (t0 + 7636);
    xsi_report(t2, 76U, (unsigned char)3);
    goto LAB11;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}

static void simprim_a_1861840547_1486755294_p_2(char *t0)
{
    char t9[16];
    char t25[16];
    char t31[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    char *t14;
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

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1616U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (t0 + 2632U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((unsigned char *)t2) = t4;
    t2 = (t0 + 4184);
    t3 = (t0 + 1256U);
    t5 = (t0 + 4872);
    t6 = (t0 + 2752U);
    t7 = *((char **)t6);
    t6 = (t0 + 7712);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 1;
    t11 = (t10 + 4U);
    *((int *)t11) = 1;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t12 = (1 - 1);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = (t0 + 2632U);
    t14 = *((char **)t11);
    t4 = *((unsigned char *)t14);
    t11 = xsi_get_transient_memory(32U);
    memset(t11, 0, 32U);
    t15 = t11;
    t16 = (0 - 0);
    t13 = (t16 * 1);
    t17 = (32U * t13);
    t18 = (t15 + t17);
    t19 = t18;
    t20 = (t0 + 1576U);
    t21 = xsi_signal_get_last_event(t20);
    *((int64 *)t19) = t21;
    t22 = (t18 + 8U);
    t23 = (t0 + 2392U);
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
    t27 = (t0 + 2032U);
    t32 = *((char **)t27);
    t33 = *((unsigned char *)t32);
    t27 = (t0 + 2152U);
    t34 = *((char **)t27);
    t35 = *((unsigned char *)t34);
    ieee_p_2717149903_sub_2486506143_2101202839(IEEE_P_2717149903, t2, t3, 0U, 0U, t5, t7, t6, t9, t4, t11, t25, t31, (unsigned char)3, t33, t35, (unsigned char)1, (unsigned char)0, (unsigned char)0, (unsigned char)0);

LAB6:    t2 = (t0 + 4728);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t3 = (t0 + 4728);
    *((int *)t3) = 0;
    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void simprim_a_1861840547_1486755294_3408546519_init()
{
	static char *pe[] = {(void *)simprim_a_1861840547_1486755294_p_0,(void *)simprim_a_1861840547_1486755294_p_1,(void *)simprim_a_1861840547_1486755294_p_2};
	xsi_register_didat("simprim_a_1861840547_1486755294_3408546519", "isim/TOP_EQ_isim_par.exe.sim/simprim/a_1861840547_1486755294_3408546519.didat");
	xsi_register_executes(pe);
}
