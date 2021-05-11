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
static const char *ng0 = "C:/Users/bosto/Documents/DeltMedVm/Projekt/I2CV2/circuit/I2C_recieveAcknowledge.vhd";



static void work_a_2504940396_3212880686_p_0(char *t0)
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
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int t23;
    int t24;
    int t25;
    int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4360);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 2152U);
    t10 = *((char **)t4);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)2);
    if (t12 == 1)
        goto LAB14;

LAB15:    t9 = (unsigned char)0;

LAB16:    if (t9 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t1 = (unsigned char)0;

LAB21:    if (t1 != 0)
        goto LAB17;

LAB18:    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB38;

LAB39:    t1 = (unsigned char)0;

LAB40:    if (t1 != 0)
        goto LAB36;

LAB37:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 4456);
    t19 = (t4 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4520);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB11:    t4 = (t0 + 1192U);
    t16 = *((char **)t4);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)3);
    t8 = t18;
    goto LAB13;

LAB14:    t4 = (t0 + 2312U);
    t13 = *((char **)t4);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)2);
    t9 = t15;
    goto LAB16;

LAB17:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2632U);
    t10 = *((char **)t2);
    t2 = (t0 + 7588);
    t23 = xsi_mem_cmp(t2, t10, 2U);
    if (t23 == 1)
        goto LAB23;

LAB28:    t16 = (t0 + 7590);
    t24 = xsi_mem_cmp(t16, t10, 2U);
    if (t24 == 1)
        goto LAB24;

LAB29:    t20 = (t0 + 7592);
    t25 = xsi_mem_cmp(t20, t10, 2U);
    if (t25 == 1)
        goto LAB25;

LAB30:    t22 = (t0 + 7594);
    t27 = xsi_mem_cmp(t22, t10, 2U);
    if (t27 == 1)
        goto LAB26;

LAB31:
LAB27:
LAB22:    goto LAB9;

LAB19:    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB21;

LAB23:    xsi_set_current_line(62, ng0);
    t28 = (t0 + 1352U);
    t29 = *((char **)t28);
    t9 = *((unsigned char *)t29);
    t11 = (t9 == (unsigned char)2);
    if (t11 != 0)
        goto LAB33;

LAB35:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 4584);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB34:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 7596);
    t5 = (t0 + 4648);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    memcpy(t19, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB22;

LAB24:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4520);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 7598);
    t5 = (t0 + 4648);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    memcpy(t19, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4712);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB22;

LAB25:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 7600);
    t5 = (t0 + 4648);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    memcpy(t19, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB22;

LAB26:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 7602);
    t5 = (t0 + 4648);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    memcpy(t19, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB22;

LAB32:;
LAB33:    xsi_set_current_line(63, ng0);
    t28 = (t0 + 4584);
    t30 = (t28 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t28);
    goto LAB34;

LAB36:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4456);
    t10 = (t2 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 4776);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4712);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4520);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 7604);
    t5 = (t0 + 4648);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    memcpy(t19, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4584);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB38:    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB40;

}

static void work_a_2504940396_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(108, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4840);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4376);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2504940396_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2504940396_3212880686_p_0,(void *)work_a_2504940396_3212880686_p_1};
	xsi_register_didat("work_a_2504940396_3212880686", "isim/testbench_I2CV2_isim_beh.exe.sim/work/a_2504940396_3212880686.didat");
	xsi_register_executes(pe);
}
