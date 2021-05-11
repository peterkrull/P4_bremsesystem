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
static const char *ng0 = "C:/Users/bosto/Documents/DeltMedVm/Projekt/I2CV2/circuit/I2C-recieveByte.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);


static void work_a_3022161972_3212880686_p_0(char *t0)
{
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
    int t21;
    char *t22;
    int t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;

LAB0:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5584);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1352U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 2632U);
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

LAB15:    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB24;

LAB25:    t1 = (unsigned char)0;

LAB26:    if (t1 != 0)
        goto LAB22;

LAB23:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 5728);
    t15 = (t4 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 5792);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB11:    t4 = (t0 + 2472U);
    t12 = *((char **)t4);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    t8 = t14;
    goto LAB13;

LAB14:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 5728);
    t12 = (t2 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 9569);
    t5 = (t0 + 5856);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 9577);
    t5 = (t0 + 5920);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 5984);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 9580);
    t5 = (t0 + 6048);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB16:    t2 = (t0 + 1512U);
    t9 = *((char **)t2);
    t11 = *((unsigned char *)t9);
    t13 = (t11 == (unsigned char)3);
    t1 = t13;
    goto LAB18;

LAB19:    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t10 = (t8 == (unsigned char)3);
    t3 = t10;
    goto LAB21;

LAB22:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 3112U);
    t9 = *((char **)t2);
    t2 = (t0 + 9582);
    t19 = xsi_mem_cmp(t2, t9, 2U);
    if (t19 == 1)
        goto LAB28;

LAB33:    t15 = (t0 + 9584);
    t20 = xsi_mem_cmp(t15, t9, 2U);
    if (t20 == 1)
        goto LAB29;

LAB34:    t17 = (t0 + 9586);
    t21 = xsi_mem_cmp(t17, t9, 2U);
    if (t21 == 1)
        goto LAB30;

LAB35:    t22 = (t0 + 9588);
    t24 = xsi_mem_cmp(t22, t9, 2U);
    if (t24 == 1)
        goto LAB31;

LAB36:
LAB32:    xsi_set_current_line(82, ng0);

LAB27:    goto LAB9;

LAB24:    t2 = (t0 + 2632U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB26;

LAB28:    xsi_set_current_line(62, ng0);
    t25 = (t0 + 1192U);
    t26 = *((char **)t25);
    t10 = *((unsigned char *)t26);
    t25 = (t0 + 2952U);
    t27 = *((char **)t25);
    t25 = (t0 + 9500U);
    t28 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t27, t25);
    t29 = (t28 - 7);
    t30 = (t29 * -1);
    t31 = (1 * t30);
    t32 = (0U + t31);
    t33 = (t0 + 5856);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    *((unsigned char *)t37) = t10;
    xsi_driver_first_trans_delta(t33, t32, 1, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 9590);
    t5 = (t0 + 6048);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB27;

LAB29:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 5792);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2952U);
    t4 = *((char **)t2);
    t2 = (t0 + 9500U);
    t5 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t38, t4, t2, 1);
    t9 = (t38 + 12U);
    t30 = *((unsigned int *)t9);
    t31 = (1U * t30);
    t1 = (3U != t31);
    if (t1 == 1)
        goto LAB38;

LAB39:    t12 = (t0 + 5920);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t5, 3U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2952U);
    t4 = *((char **)t2);
    t2 = (t0 + 9500U);
    t5 = (t0 + 9592);
    t12 = (t38 + 0U);
    t15 = (t12 + 0U);
    *((int *)t15) = 0;
    t15 = (t12 + 4U);
    *((int *)t15) = 2;
    t15 = (t12 + 8U);
    *((int *)t15) = 1;
    t19 = (2 - 0);
    t30 = (t19 * 1);
    t30 = (t30 + 1);
    t15 = (t12 + 12U);
    *((unsigned int *)t15) = t30;
    t1 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t4, t2, t5, t38);
    if (t1 != 0)
        goto LAB40;

LAB42:
LAB41:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 9595);
    t5 = (t0 + 6048);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB27;

LAB30:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 9597);
    t5 = (t0 + 6048);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB27;

LAB31:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 9599);
    t5 = (t0 + 6048);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 5792);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB27;

LAB37:;
LAB38:    xsi_size_not_matching(3U, t31, 0);
    goto LAB39;

LAB40:    xsi_set_current_line(68, ng0);
    t15 = (t0 + 5984);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t22 = *((char **)t18);
    *((unsigned char *)t22) = (unsigned char)3;
    xsi_driver_first_trans_fast(t15);
    goto LAB41;

}

static void work_a_3022161972_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(89, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 6112);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5600);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3022161972_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(90, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 6176);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5616);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3022161972_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(93, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 6240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5632);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3022161972_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(94, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6304);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5648);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3022161972_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3022161972_3212880686_p_0,(void *)work_a_3022161972_3212880686_p_1,(void *)work_a_3022161972_3212880686_p_2,(void *)work_a_3022161972_3212880686_p_3,(void *)work_a_3022161972_3212880686_p_4};
	xsi_register_didat("work_a_3022161972_3212880686", "isim/testbench_I2CV2_isim_beh.exe.sim/work/a_3022161972_3212880686.didat");
	xsi_register_executes(pe);
}
