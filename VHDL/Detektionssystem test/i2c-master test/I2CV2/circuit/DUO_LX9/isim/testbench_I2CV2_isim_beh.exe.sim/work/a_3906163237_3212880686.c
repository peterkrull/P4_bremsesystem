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
static const char *ng0 = "C:/Users/bosto/Documents/DeltMedVm/Projekt/I2CV2/circuit/I2C_sendRestart.vhd";



static void work_a_3906163237_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    int t27;
    int t28;
    int t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    xsi_set_current_line(54, ng0);
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
LAB2:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1192U);
    t11 = *((char **)t4);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)3);
    if (t13 == 1)
        goto LAB17;

LAB18:    t10 = (unsigned char)0;

LAB19:    if (t10 == 1)
        goto LAB14;

LAB15:    t9 = (unsigned char)0;

LAB16:    if (t9 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t6 = *((unsigned char *)t4);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB25;

LAB26:    t3 = (unsigned char)0;

LAB27:    if (t3 == 1)
        goto LAB22;

LAB23:    t1 = (unsigned char)0;

LAB24:    if (t1 != 0)
        goto LAB20;

LAB21:    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t6 = *((unsigned char *)t4);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB52;

LAB53:    t3 = (unsigned char)0;

LAB54:    if (t3 == 1)
        goto LAB49;

LAB50:    t1 = (unsigned char)0;

LAB51:    if (t1 != 0)
        goto LAB47;

LAB48:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 4136);
    t23 = (t4 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    *((unsigned char *)t26) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    goto LAB9;

LAB11:    t4 = (t0 + 1352U);
    t20 = *((char **)t4);
    t21 = *((unsigned char *)t20);
    t22 = (t21 == (unsigned char)2);
    t8 = t22;
    goto LAB13;

LAB14:    t4 = (t0 + 2152U);
    t17 = *((char **)t4);
    t18 = *((unsigned char *)t17);
    t19 = (t18 == (unsigned char)2);
    t9 = t19;
    goto LAB16;

LAB17:    t4 = (t0 + 1992U);
    t14 = *((char **)t4);
    t15 = *((unsigned char *)t14);
    t16 = (t15 == (unsigned char)2);
    t10 = t16;
    goto LAB19;

LAB20:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2312U);
    t14 = *((char **)t2);
    t2 = (t0 + 6939);
    t27 = xsi_mem_cmp(t2, t14, 3U);
    if (t27 == 1)
        goto LAB29;

LAB38:    t20 = (t0 + 6942);
    t28 = xsi_mem_cmp(t20, t14, 3U);
    if (t28 == 1)
        goto LAB30;

LAB39:    t24 = (t0 + 6945);
    t29 = xsi_mem_cmp(t24, t14, 3U);
    if (t29 == 1)
        goto LAB31;

LAB40:    t26 = (t0 + 6948);
    t31 = xsi_mem_cmp(t26, t14, 3U);
    if (t31 == 1)
        goto LAB32;

LAB41:    t32 = (t0 + 6951);
    t34 = xsi_mem_cmp(t32, t14, 3U);
    if (t34 == 1)
        goto LAB33;

LAB42:    t35 = (t0 + 6954);
    t37 = xsi_mem_cmp(t35, t14, 3U);
    if (t37 == 1)
        goto LAB34;

LAB43:    t38 = (t0 + 6957);
    t40 = xsi_mem_cmp(t38, t14, 3U);
    if (t40 == 1)
        goto LAB35;

LAB44:    t41 = (t0 + 6960);
    t43 = xsi_mem_cmp(t41, t14, 3U);
    if (t43 == 1)
        goto LAB36;

LAB45:
LAB37:
LAB28:    goto LAB9;

LAB22:    t2 = (t0 + 1992U);
    t11 = *((char **)t2);
    t10 = *((unsigned char *)t11);
    t12 = (t10 == (unsigned char)2);
    t1 = t12;
    goto LAB24;

LAB25:    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)2);
    t3 = t9;
    goto LAB27;

LAB29:    xsi_set_current_line(62, ng0);
    t44 = (t0 + 4200);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    *((unsigned char *)t48) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t44);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 4264);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 6963);
    t5 = (t0 + 4328);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    memcpy(t20, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB30:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 6966);
    t5 = (t0 + 4328);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    memcpy(t20, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB31:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 6969);
    t5 = (t0 + 4328);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    memcpy(t20, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4264);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB28;

LAB32:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 6972);
    t5 = (t0 + 4328);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    memcpy(t20, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB33:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 4392);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4200);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 6975);
    t5 = (t0 + 4328);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    memcpy(t20, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB34:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 6978);
    t5 = (t0 + 4328);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    memcpy(t20, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB35:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 6981);
    t5 = (t0 + 4328);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    memcpy(t20, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB36:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 6984);
    t5 = (t0 + 4328);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    memcpy(t20, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB46:;
LAB47:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4392);
    t14 = (t2 + 56U);
    t17 = *((char **)t14);
    t20 = (t17 + 56U);
    t23 = *((char **)t20);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4136);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 6987);
    t5 = (t0 + 4328);
    t11 = (t5 + 56U);
    t14 = *((char **)t11);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    memcpy(t20, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB49:    t2 = (t0 + 1352U);
    t11 = *((char **)t2);
    t10 = *((unsigned char *)t11);
    t12 = (t10 == (unsigned char)3);
    t1 = t12;
    goto LAB51;

LAB52:    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB54;

}

static void work_a_3906163237_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(99, ng0);

LAB3:    t1 = (t0 + 1992U);
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


extern void work_a_3906163237_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3906163237_3212880686_p_0,(void *)work_a_3906163237_3212880686_p_1};
	xsi_register_didat("work_a_3906163237_3212880686", "isim/testbench_I2CV2_isim_beh.exe.sim/work/a_3906163237_3212880686.didat");
	xsi_register_executes(pe);
}
