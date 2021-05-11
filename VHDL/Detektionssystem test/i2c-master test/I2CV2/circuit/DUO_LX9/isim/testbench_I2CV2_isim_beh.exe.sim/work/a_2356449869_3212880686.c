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
static const char *ng0 = "C:/Users/bosto/Documents/DeltMedVm/Projekt/I2CV2/circuit/I2C_sendNotAckStop.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_2356449869_3212880686_p_0(char *t0)
{
    char t37[16];
    char t38[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    int t20;
    char *t21;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t39;

LAB0:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4040);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 1192U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t6 = *((unsigned char *)t4);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB19;

LAB20:    t3 = (unsigned char)0;

LAB21:    if (t3 == 1)
        goto LAB16;

LAB17:    t1 = (unsigned char)0;

LAB18:    if (t1 != 0)
        goto LAB14;

LAB15:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB39;

LAB40:    t1 = (unsigned char)0;

LAB41:    if (t1 != 0)
        goto LAB37;

LAB38:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 4136);
    t15 = (t4 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4200);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB11:    t4 = (t0 + 1992U);
    t12 = *((char **)t4);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    t8 = t14;
    goto LAB13;

LAB14:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2152U);
    t12 = *((char **)t2);
    t2 = (t0 + 6959);
    t19 = xsi_mem_cmp(t2, t12, 3U);
    if (t19 == 1)
        goto LAB23;

LAB30:    t16 = (t0 + 6962);
    t20 = xsi_mem_cmp(t16, t12, 3U);
    if (t20 == 1)
        goto LAB24;

LAB31:    t18 = (t0 + 6965);
    t22 = xsi_mem_cmp(t18, t12, 3U);
    if (t22 == 1)
        goto LAB25;

LAB32:    t23 = (t0 + 6968);
    t25 = xsi_mem_cmp(t23, t12, 3U);
    if (t25 == 1)
        goto LAB26;

LAB33:    t26 = (t0 + 6971);
    t28 = xsi_mem_cmp(t26, t12, 3U);
    if (t28 == 1)
        goto LAB27;

LAB34:    t29 = (t0 + 6974);
    t31 = xsi_mem_cmp(t29, t12, 3U);
    if (t31 == 1)
        goto LAB28;

LAB35:
LAB29:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 4328);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);

LAB22:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 6924U);
    t5 = (t0 + 6977);
    t12 = (t38 + 0U);
    t15 = (t12 + 0U);
    *((int *)t15) = 0;
    t15 = (t12 + 4U);
    *((int *)t15) = 2;
    t15 = (t12 + 8U);
    *((int *)t15) = 1;
    t19 = (2 - 0);
    t39 = (t19 * 1);
    t39 = (t39 + 1);
    t15 = (t12 + 12U);
    *((unsigned int *)t15) = t39;
    t15 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t37, t4, t2, t5, t38);
    t16 = (t0 + 4392);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t21 = (t18 + 56U);
    t23 = *((char **)t21);
    memcpy(t23, t15, 3U);
    xsi_driver_first_trans_fast(t16);
    goto LAB9;

LAB16:    t2 = (t0 + 2312U);
    t9 = *((char **)t2);
    t11 = *((unsigned char *)t9);
    t13 = (t11 == (unsigned char)2);
    t1 = t13;
    goto LAB18;

LAB19:    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t10 = (t8 == (unsigned char)2);
    t3 = t10;
    goto LAB21;

LAB23:    goto LAB22;

LAB24:    xsi_set_current_line(62, ng0);
    t32 = (t0 + 4200);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    *((unsigned char *)t36) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t32);
    goto LAB22;

LAB25:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 4264);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB22;

LAB26:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4200);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB22;

LAB27:    goto LAB22;

LAB28:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4264);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB22;

LAB36:;
LAB37:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4264);
    t9 = (t2 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 4200);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4328);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 4136);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 6980);
    t5 = (t0 + 4392);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB39:    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB41;

}

static void work_a_2356449869_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(90, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4456);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4056);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2356449869_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2356449869_3212880686_p_0,(void *)work_a_2356449869_3212880686_p_1};
	xsi_register_didat("work_a_2356449869_3212880686", "isim/testbench_I2CV2_isim_beh.exe.sim/work/a_2356449869_3212880686.didat");
	xsi_register_executes(pe);
}
