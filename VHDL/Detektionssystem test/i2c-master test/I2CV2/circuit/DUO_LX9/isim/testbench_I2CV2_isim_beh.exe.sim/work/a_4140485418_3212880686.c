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
extern char *IEEE_P_2592010699;
static const char *ng1 = "C:/Users/bosto/Documents/DeltMedVm/Projekt/I2CV2/circuit/I2CV2.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2770553711_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


unsigned char work_a_4140485418_3212880686_sub_3504574107_3057020925(char *t1, char *t2, char *t3, char *t4, char *t5)
{
    char t6[128];
    char t7[40];
    char t11[8];
    unsigned char t0;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    char *t20;
    unsigned int t21;
    int t22;
    int t23;
    int t24;
    char *t25;
    char *t26;
    unsigned char t27;
    int t28;
    char *t29;
    int t30;
    int t31;
    unsigned int t32;
    char *t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned char t38;
    char *t39;
    int t40;
    char *t41;
    int t42;
    int t43;
    unsigned int t44;
    char *t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    unsigned char t50;
    unsigned char t51;
    unsigned char t52;
    char *t53;
    char *t54;

LAB0:    t8 = (t6 + 4U);
    t9 = ((IEEE_P_2592010699) + 3320);
    t10 = (t8 + 88U);
    *((char **)t10) = t9;
    t12 = (t8 + 56U);
    *((char **)t12) = t11;
    *((unsigned char *)t11) = (unsigned char)2;
    t13 = (t8 + 80U);
    *((unsigned int *)t13) = 1U;
    t14 = (t7 + 4U);
    t15 = (t2 != 0);
    if (t15 == 1)
        goto LAB3;

LAB2:    t16 = (t7 + 12U);
    *((char **)t16) = t3;
    t17 = (t7 + 20U);
    t18 = (t4 != 0);
    if (t18 == 1)
        goto LAB5;

LAB4:    t19 = (t7 + 28U);
    *((char **)t19) = t5;
    t20 = (t3 + 12U);
    t21 = *((unsigned int *)t20);
    t22 = (t21 - 1);
    t23 = 0;
    t24 = t22;

LAB6:    if (t23 <= t24)
        goto LAB7;

LAB9:    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t15 = *((unsigned char *)t10);
    t0 = t15;

LAB1:    return t0;
LAB3:    *((char **)t14) = t2;
    goto LAB2;

LAB5:    *((char **)t17) = t4;
    goto LAB4;

LAB7:    t25 = (t8 + 56U);
    t26 = *((char **)t25);
    t27 = *((unsigned char *)t26);
    t25 = (t3 + 0U);
    t28 = *((int *)t25);
    t29 = (t3 + 8U);
    t30 = *((int *)t29);
    t31 = (t23 - t28);
    t32 = (t31 * t30);
    t33 = (t3 + 4U);
    t34 = *((int *)t33);
    xsi_vhdl_check_range_of_index(t28, t34, t30, t23);
    t35 = (1U * t32);
    t36 = (0 + t35);
    t37 = (t2 + t36);
    t38 = *((unsigned char *)t37);
    t39 = (t5 + 0U);
    t40 = *((int *)t39);
    t41 = (t5 + 8U);
    t42 = *((int *)t41);
    t43 = (t23 - t40);
    t44 = (t43 * t42);
    t45 = (t5 + 4U);
    t46 = *((int *)t45);
    xsi_vhdl_check_range_of_index(t40, t46, t42, t23);
    t47 = (1U * t44);
    t48 = (0 + t47);
    t49 = (t4 + t48);
    t50 = *((unsigned char *)t49);
    t51 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t38, t50);
    t52 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t27, t51);
    t53 = (t8 + 56U);
    t54 = *((char **)t53);
    t53 = (t54 + 0);
    *((unsigned char *)t53) = t52;

LAB8:    if (t23 == t24)
        goto LAB9;

LAB10:    t22 = (t23 + 1);
    t23 = t22;
    goto LAB6;

LAB11:;
}

static void work_a_4140485418_3212880686_p_0(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(223, ng1);

LAB3:    t1 = (t0 + 29563);
    t3 = (t0 + 17320);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 7U);
    xsi_driver_first_trans_fast(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(224, ng1);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4024);
    t5 = (t0 + 29236U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)97, t2, t5, (char)99, (unsigned char)2, (char)101);
    t6 = (7U + 1U);
    t7 = (8U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 17384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 16792);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t6, 0);
    goto LAB6;

}

static void work_a_4140485418_3212880686_p_2(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(245, ng1);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4024);
    t5 = (t0 + 29236U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)97, t2, t5, (char)99, (unsigned char)3, (char)101);
    t6 = (7U + 1U);
    t7 = (8U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 17448);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 16808);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t6, 0);
    goto LAB6;

}

static void work_a_4140485418_3212880686_p_3(char *t0)
{
    char t29[16];
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
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;

LAB0:    xsi_set_current_line(347, ng1);
    t2 = (t0 + 4192U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 16824);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(348, ng1);
    t4 = (t0 + 1192U);
    t10 = *((char **)t4);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB14;

LAB15:    t9 = (unsigned char)0;

LAB16:    if (t9 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t1 = (unsigned char)0;

LAB21:    if (t1 != 0)
        goto LAB17;

LAB18:
LAB9:    xsi_set_current_line(368, ng1);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)2);
    if (t6 == 1)
        goto LAB34;

LAB35:    t1 = (unsigned char)0;

LAB36:    if (t1 != 0)
        goto LAB31;

LAB33:
LAB32:    goto LAB3;

LAB5:    t4 = (t0 + 4232U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(349, ng1);
    t4 = (t0 + 29570);
    t20 = (t0 + 17512);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t4, 12U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(350, ng1);
    t2 = (t0 + 17576);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(351, ng1);
    t2 = (t0 + 17640);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(352, ng1);
    t2 = (t0 + 17704);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(353, ng1);
    t2 = (t0 + 17768);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB11:    t4 = (t0 + 4872U);
    t16 = *((char **)t4);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)3);
    t8 = t18;
    goto LAB13;

LAB14:    t4 = (t0 + 3112U);
    t13 = *((char **)t4);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)2);
    t9 = t15;
    goto LAB16;

LAB17:    xsi_set_current_line(355, ng1);
    t2 = (t0 + 3752U);
    t10 = *((char **)t2);
    t25 = (11 - 11);
    t26 = (t25 * -1);
    t27 = (1U * t26);
    t28 = (0 + t27);
    t2 = (t10 + t28);
    t11 = *((unsigned char *)t2);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB25;

LAB26:    t13 = (t0 + 4712U);
    t16 = *((char **)t13);
    t14 = *((unsigned char *)t16);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;

LAB27:    if (t9 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(364, ng1);
    t2 = (t0 + 2952U);
    t4 = *((char **)t2);
    t2 = (t0 + 29220U);
    t5 = ieee_p_1242562249_sub_2770553711_1035706684(IEEE_P_1242562249, t29, t4, t2, 1);
    t10 = (t0 + 17512);
    t13 = (t10 + 56U);
    t16 = *((char **)t13);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t5, 12U);
    xsi_driver_first_trans_fast(t10);

LAB23:    goto LAB9;

LAB19:    t2 = (t0 + 3112U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB21;

LAB22:    xsi_set_current_line(356, ng1);
    t13 = (t0 + 4712U);
    t19 = *((char **)t13);
    t17 = *((unsigned char *)t19);
    t18 = (t17 == (unsigned char)3);
    if (t18 != 0)
        goto LAB28;

LAB30:
LAB29:    xsi_set_current_line(359, ng1);
    t2 = (t0 + 17576);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(360, ng1);
    t2 = (t0 + 29582);
    t5 = (t0 + 17512);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    memcpy(t19, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(361, ng1);
    t2 = (t0 + 5032U);
    t4 = *((char **)t2);
    t2 = (t0 + 17832);
    t5 = (t2 + 56U);
    t10 = *((char **)t5);
    t13 = (t10 + 56U);
    t16 = *((char **)t13);
    memcpy(t16, t4, 16U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(362, ng1);
    t2 = (t0 + 17704);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB23;

LAB25:    t9 = (unsigned char)1;
    goto LAB27;

LAB28:    xsi_set_current_line(357, ng1);
    t13 = (t0 + 17768);
    t20 = (t13 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t13);
    goto LAB29;

LAB31:    xsi_set_current_line(369, ng1);
    t2 = (t0 + 17640);
    t10 = (t2 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB32;

LAB34:    t2 = (t0 + 3112U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB36;

}

static void work_a_4140485418_3212880686_p_4(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned char t10;
    char *t11;
    int t12;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(379, ng1);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 16840);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(380, ng1);
    t4 = (t0 + 4072U);
    t8 = *((char **)t4);
    t9 = *((int *)t8);
    t10 = (t9 < 40);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(383, ng1);
    t2 = (t0 + 17896);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(384, ng1);
    t2 = (t0 + 4232U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t1);
    t2 = (t0 + 17960);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = t3;
    xsi_driver_first_trans_fast(t2);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(381, ng1);
    t4 = (t0 + 4072U);
    t11 = *((char **)t4);
    t12 = *((int *)t11);
    t13 = (t12 + 1);
    t4 = (t0 + 17896);
    t14 = (t4 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((int *)t17) = t13;
    xsi_driver_first_trans_fast(t4);
    goto LAB9;

}

static void work_a_4140485418_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(390, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (0 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4712U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t11);
    t8 = (t0 + 18024);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_delta(t8, 11U, 1, 0LL);

LAB2:    t17 = (t0 + 16856);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(391, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (1 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4712U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t11);
    t8 = (t0 + 18088);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_delta(t8, 10U, 1, 0LL);

LAB2:    t17 = (t0 + 16872);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(392, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (2 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4712U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t11);
    t8 = (t0 + 18152);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_delta(t8, 9U, 1, 0LL);

LAB2:    t17 = (t0 + 16888);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_8(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(393, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (3 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4712U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t11);
    t8 = (t0 + 18216);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_delta(t8, 8U, 1, 0LL);

LAB2:    t17 = (t0 + 16904);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_9(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(394, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (4 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4712U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t11);
    t8 = (t0 + 18280);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_delta(t8, 7U, 1, 0LL);

LAB2:    t17 = (t0 + 16920);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_10(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(395, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (5 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4712U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t11);
    t8 = (t0 + 18344);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_delta(t8, 6U, 1, 0LL);

LAB2:    t17 = (t0 + 16936);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_11(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(396, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (6 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4712U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t11);
    t8 = (t0 + 18408);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_delta(t8, 5U, 1, 0LL);

LAB2:    t17 = (t0 + 16952);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_12(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(397, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (7 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4712U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t11);
    t8 = (t0 + 18472);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_delta(t8, 4U, 1, 0LL);

LAB2:    t17 = (t0 + 16968);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_13(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(398, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (8 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4712U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t11);
    t8 = (t0 + 18536);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_delta(t8, 3U, 1, 0LL);

LAB2:    t17 = (t0 + 16984);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_14(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(399, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (9 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4712U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t11);
    t8 = (t0 + 18600);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_delta(t8, 2U, 1, 0LL);

LAB2:    t17 = (t0 + 17000);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_15(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(400, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (10 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4712U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t11);
    t8 = (t0 + 18664);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_delta(t8, 1U, 1, 0LL);

LAB2:    t17 = (t0 + 17016);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_16(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(401, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (11 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4712U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t11);
    t8 = (t0 + 18728);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_delta(t8, 0U, 1, 0LL);

LAB2:    t17 = (t0 + 17032);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_17(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(403, ng1);

LAB3:    t1 = (t0 + 18792);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 9U, 1, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_18(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(404, ng1);

LAB3:    t1 = (t0 + 18856);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 7U, 1, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_19(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(405, ng1);

LAB3:    t1 = (t0 + 18920);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 4U, 1, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_20(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(406, ng1);

LAB3:    t1 = (t0 + 18984);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_21(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(407, ng1);

LAB3:    t1 = (t0 + 19048);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_22(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    unsigned char t23;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    char *t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned char t38;
    unsigned char t39;
    char *t40;
    char *t41;
    int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned char t46;
    unsigned char t47;
    char *t48;
    char *t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned char t54;
    unsigned char t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;

LAB0:    xsi_set_current_line(410, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (0 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 2952U);
    t9 = *((char **)t8);
    t10 = (1 - 11);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t0 + 2952U);
    t17 = *((char **)t16);
    t18 = (3 - 11);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t15, t22);
    t24 = (t0 + 2952U);
    t25 = *((char **)t24);
    t26 = (5 - 11);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t24 = (t25 + t29);
    t30 = *((unsigned char *)t24);
    t31 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t23, t30);
    t32 = (t0 + 2952U);
    t33 = *((char **)t32);
    t34 = (6 - 11);
    t35 = (t34 * -1);
    t36 = (1U * t35);
    t37 = (0 + t36);
    t32 = (t33 + t37);
    t38 = *((unsigned char *)t32);
    t39 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t31, t38);
    t40 = (t0 + 2952U);
    t41 = *((char **)t40);
    t42 = (9 - 11);
    t43 = (t42 * -1);
    t44 = (1U * t43);
    t45 = (0 + t44);
    t40 = (t41 + t45);
    t46 = *((unsigned char *)t40);
    t47 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t39, t46);
    t48 = (t0 + 2952U);
    t49 = *((char **)t48);
    t50 = (11 - 11);
    t51 = (t50 * -1);
    t52 = (1U * t51);
    t53 = (0 + t52);
    t48 = (t49 + t53);
    t54 = *((unsigned char *)t48);
    t55 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t47, t54);
    t56 = (t0 + 19112);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    *((unsigned char *)t60) = t55;
    xsi_driver_first_trans_fast(t56);

LAB2:    t61 = (t0 + 17048);
    *((int *)t61) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_23(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(411, ng1);

LAB3:    t1 = (t0 + 5352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 19176);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 17064);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_24(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(413, ng1);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 19240);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t9 = (t0 + 17080);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_25(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(416, ng1);

LAB3:    t1 = (t0 + 6312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 19304);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 17096);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_26(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(418, ng1);

LAB3:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t3 = (11 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 19368);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 17112);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_27(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(419, ng1);

LAB3:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 29268U);
    t3 = (t0 + 2952U);
    t4 = *((char **)t3);
    t3 = (t0 + 29220U);
    t5 = work_a_4140485418_3212880686_sub_3504574107_3057020925(t0, t2, t1, t4, t3);
    t6 = (t0 + 5672U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t5, t8);
    t6 = (t0 + 4712U);
    t10 = *((char **)t6);
    t11 = *((unsigned char *)t10);
    t12 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t11);
    t13 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t9, t12);
    t6 = (t0 + 19432);
    t14 = (t6 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t13;
    xsi_driver_first_trans_fast(t6);

LAB2:    t18 = (t0 + 17128);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_28(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(420, ng1);
    t1 = (t0 + 5512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 5832U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t9 = (t0 + 19496);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t11;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t16 = (t0 + 17144);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 19496);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_29(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(422, ng1);

LAB3:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t3 = (11 - 11);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 19560);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 17160);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_30(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(423, ng1);

LAB3:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 29300U);
    t3 = (t0 + 2952U);
    t4 = *((char **)t3);
    t3 = (t0 + 29220U);
    t5 = work_a_4140485418_3212880686_sub_3504574107_3057020925(t0, t2, t1, t4, t3);
    t6 = (t0 + 4392U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t5, t8);
    t6 = (t0 + 4712U);
    t10 = *((char **)t6);
    t11 = *((unsigned char *)t10);
    t12 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t11);
    t13 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t9, t12);
    t6 = (t0 + 19624);
    t14 = (t6 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t13;
    xsi_driver_first_trans_fast(t6);

LAB2:    t18 = (t0 + 17176);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_31(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(425, ng1);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 19688);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t16 = (t0 + 17192);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 4552U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t1 = (t0 + 19688);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_32(char *t0)
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
    char *t11;

LAB0:    xsi_set_current_line(427, ng1);

LAB3:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 29284U);
    t3 = (t0 + 2952U);
    t4 = *((char **)t3);
    t3 = (t0 + 29220U);
    t5 = work_a_4140485418_3212880686_sub_3504574107_3057020925(t0, t2, t1, t4, t3);
    t6 = (t0 + 19752);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t5;
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 17208);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_33(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(430, ng1);

LAB3:    t1 = (t0 + 19816);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_34(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(436, ng1);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 19880);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 17224);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4140485418_3212880686_p_35(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(438, ng1);

LAB3:    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t1 = (t0 + 19944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 17240);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4140485418_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4140485418_3212880686_p_0,(void *)work_a_4140485418_3212880686_p_1,(void *)work_a_4140485418_3212880686_p_2,(void *)work_a_4140485418_3212880686_p_3,(void *)work_a_4140485418_3212880686_p_4,(void *)work_a_4140485418_3212880686_p_5,(void *)work_a_4140485418_3212880686_p_6,(void *)work_a_4140485418_3212880686_p_7,(void *)work_a_4140485418_3212880686_p_8,(void *)work_a_4140485418_3212880686_p_9,(void *)work_a_4140485418_3212880686_p_10,(void *)work_a_4140485418_3212880686_p_11,(void *)work_a_4140485418_3212880686_p_12,(void *)work_a_4140485418_3212880686_p_13,(void *)work_a_4140485418_3212880686_p_14,(void *)work_a_4140485418_3212880686_p_15,(void *)work_a_4140485418_3212880686_p_16,(void *)work_a_4140485418_3212880686_p_17,(void *)work_a_4140485418_3212880686_p_18,(void *)work_a_4140485418_3212880686_p_19,(void *)work_a_4140485418_3212880686_p_20,(void *)work_a_4140485418_3212880686_p_21,(void *)work_a_4140485418_3212880686_p_22,(void *)work_a_4140485418_3212880686_p_23,(void *)work_a_4140485418_3212880686_p_24,(void *)work_a_4140485418_3212880686_p_25,(void *)work_a_4140485418_3212880686_p_26,(void *)work_a_4140485418_3212880686_p_27,(void *)work_a_4140485418_3212880686_p_28,(void *)work_a_4140485418_3212880686_p_29,(void *)work_a_4140485418_3212880686_p_30,(void *)work_a_4140485418_3212880686_p_31,(void *)work_a_4140485418_3212880686_p_32,(void *)work_a_4140485418_3212880686_p_33,(void *)work_a_4140485418_3212880686_p_34,(void *)work_a_4140485418_3212880686_p_35};
	static char *se[] = {(void *)work_a_4140485418_3212880686_sub_3504574107_3057020925};
	xsi_register_didat("work_a_4140485418_3212880686", "isim/testbench_I2CV2_isim_beh.exe.sim/work/a_4140485418_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
