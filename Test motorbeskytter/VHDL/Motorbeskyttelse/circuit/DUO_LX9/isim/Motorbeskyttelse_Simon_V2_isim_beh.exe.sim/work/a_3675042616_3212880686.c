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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/vm_delt_mappe/Done motorbeskyttelse/PWMGenerator/circuit/PWMGenerator.vhd";
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1434214030532753770_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_1434220770698190313_1035706684(char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_3675042616_3212880686_p_0(char *t0)
{
    char t8[16];
    char t12[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3144);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1512U);
    t9 = *((char **)t4);
    t4 = (t0 + 5360U);
    t10 = (t0 + 5429);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 10;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (10 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t8, t9, t4, t10, t12);
    t17 = (t0 + 3224);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t14, 11U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 5376U);
    t5 = (t0 + 1032U);
    t9 = *((char **)t5);
    t5 = (t0 + 5344U);
    t1 = ieee_p_1242562249_sub_1434214030532753770_1035706684(IEEE_P_1242562249, t4, t2, t9, t5);
    if (t1 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 5376U);
    t5 = (t0 + 1032U);
    t9 = *((char **)t5);
    t5 = (t0 + 5344U);
    t1 = ieee_p_1242562249_sub_1434220770698190313_1035706684(IEEE_P_1242562249, t4, t2, t9, t5);
    if (t1 != 0)
        goto LAB11;

LAB12:
LAB9:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 5440);
    t1 = 1;
    if (11U == 11U)
        goto LAB16;

LAB17:    t1 = 0;

LAB18:    if (t1 != 0)
        goto LAB13;

LAB15:
LAB14:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 5470);
    t1 = 1;
    if (8U == 8U)
        goto LAB25;

LAB26:    t1 = 0;

LAB27:    if (t1 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(49, ng0);
    t10 = (t0 + 3288);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    t14 = (t13 + 56U);
    t17 = *((char **)t14);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t10);
    goto LAB9;

LAB11:    xsi_set_current_line(51, ng0);
    t10 = (t0 + 3288);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    t14 = (t13 + 56U);
    t17 = *((char **)t14);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t10);
    goto LAB9;

LAB13:    xsi_set_current_line(55, ng0);
    t11 = (t0 + 1672U);
    t13 = *((char **)t11);
    t11 = (t0 + 5376U);
    t14 = (t0 + 5451);
    t18 = (t12 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 7;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t15 = (7 - 0);
    t22 = (t15 * 1);
    t22 = (t22 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t22;
    t19 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t8, t13, t11, t14, t12);
    t20 = (t0 + 3352);
    t21 = (t20 + 56U);
    t23 = *((char **)t21);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t19, 8U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 5459);
    t5 = (t0 + 3224);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 11U);
    xsi_driver_first_trans_fast(t5);
    goto LAB14;

LAB16:    t16 = 0;

LAB19:    if (t16 < 11U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t9 = (t4 + t16);
    t10 = (t2 + t16);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB17;

LAB21:    t16 = (t16 + 1);
    goto LAB19;

LAB22:    xsi_set_current_line(60, ng0);
    t11 = (t0 + 5478);
    t14 = (t0 + 3352);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 8U);
    xsi_driver_first_trans_fast(t14);
    goto LAB23;

LAB25:    t16 = 0;

LAB28:    if (t16 < 8U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t9 = (t4 + t16);
    t10 = (t2 + t16);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB26;

LAB30:    t16 = (t16 + 1);
    goto LAB28;

}


extern void work_a_3675042616_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3675042616_3212880686_p_0};
	xsi_register_didat("work_a_3675042616_3212880686", "isim/Motorbeskyttelse_Simon_V2_isim_beh.exe.sim/work/a_3675042616_3212880686.didat");
	xsi_register_executes(pe);
}
