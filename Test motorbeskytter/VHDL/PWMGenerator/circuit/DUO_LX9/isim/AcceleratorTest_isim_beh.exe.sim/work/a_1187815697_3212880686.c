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
static const char *ng0 = "/home/ise/SharedVMFolder/PWMGenerator/circuit/Accelerator.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1701011461141789389_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_1187815697_3212880686_p_0(char *t0)
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
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3552);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 1832U);
    t9 = *((char **)t4);
    t4 = (t0 + 5808U);
    t10 = (t0 + 5883);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 17;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (17 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t8, t9, t4, t10, t12);
    t17 = (t0 + 3648);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t14, 18U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 5901);
    t1 = 1;
    if (18U == 18U)
        goto LAB11;

LAB12:    t1 = 0;

LAB13:    if (t1 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(50, ng0);
    t11 = (t0 + 1192U);
    t13 = *((char **)t11);
    t11 = (t0 + 1352U);
    t14 = *((char **)t11);
    t11 = ((IEEE_P_2592010699) + 4000);
    t6 = xsi_vhdl_lessthan(t11, t13, 8U, t14, 8U);
    if (t6 == 1)
        goto LAB20;

LAB21:    t3 = (unsigned char)0;

LAB22:    if (t3 != 0)
        goto LAB17;

LAB19:    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t2 = ((IEEE_P_2592010699) + 4000);
    t3 = xsi_vhdl_greater(t2, t4, 8U, t5, 8U);
    if (t3 == 1)
        goto LAB25;

LAB26:    t1 = (unsigned char)0;

LAB27:    if (t1 != 0)
        goto LAB23;

LAB24:
LAB18:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 5951);
    t5 = (t0 + 3648);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 18U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB11:    t16 = 0;

LAB14:    if (t16 < 18U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t9 = (t4 + t16);
    t10 = (t2 + t16);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB12;

LAB16:    t16 = (t16 + 1);
    goto LAB14;

LAB17:    xsi_set_current_line(51, ng0);
    t21 = (t0 + 1672U);
    t22 = *((char **)t21);
    t21 = (t0 + 5792U);
    t23 = (t0 + 5927);
    t25 = (t12 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 0;
    t26 = (t25 + 4U);
    *((int *)t26) = 7;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t15 = (7 - 0);
    t27 = (t15 * 1);
    t27 = (t27 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t27;
    t26 = ieee_p_1242562249_sub_1701011461141789389_1035706684(IEEE_P_1242562249, t8, t22, t21, t23, t12);
    t28 = (t0 + 3712);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t26, 8U);
    xsi_driver_first_trans_fast(t28);
    goto LAB18;

LAB20:    t17 = (t0 + 1672U);
    t18 = *((char **)t17);
    t17 = (t0 + 5919);
    t20 = ((IEEE_P_2592010699) + 4000);
    t7 = xsi_vhdl_greater(t20, t18, 8U, t17, 8U);
    t3 = t7;
    goto LAB22;

LAB23:    xsi_set_current_line(53, ng0);
    t14 = (t0 + 1672U);
    t17 = *((char **)t14);
    t14 = (t0 + 5792U);
    t18 = (t0 + 5943);
    t20 = (t12 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 7;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t15 = (7 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t16;
    t21 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t8, t17, t14, t18, t12);
    t22 = (t0 + 3712);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t21, 8U);
    xsi_driver_first_trans_fast(t22);
    goto LAB18;

LAB25:    t9 = (t0 + 1672U);
    t10 = *((char **)t9);
    t9 = (t0 + 5935);
    t13 = ((IEEE_P_2592010699) + 4000);
    t6 = xsi_vhdl_lessthan(t13, t10, 8U, t9, 8U);
    t1 = t6;
    goto LAB27;

}

static void work_a_1187815697_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(60, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3776);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3568);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1187815697_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1187815697_3212880686_p_0,(void *)work_a_1187815697_3212880686_p_1};
	xsi_register_didat("work_a_1187815697_3212880686", "isim/AcceleratorTest_isim_beh.exe.sim/work/a_1187815697_3212880686.didat");
	xsi_register_executes(pe);
}
