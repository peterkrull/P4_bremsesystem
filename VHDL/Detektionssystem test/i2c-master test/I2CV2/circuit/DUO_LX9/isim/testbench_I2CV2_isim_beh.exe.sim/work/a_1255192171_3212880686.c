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
static const char *ng0 = "C:/Users/bosto/Documents/DeltMedVm/Projekt/I2CV2/circuit/I2C_SendOneByte.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_1255192171_3212880686_p_0(char *t0)
{
    char t23[16];
    char t24[16];
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
    int t25;
    unsigned int t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    char *t31;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;

LAB0:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5744);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 2792U);
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

LAB10:    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t1 = (unsigned char)0;

LAB21:    if (t1 != 0)
        goto LAB17;

LAB18:    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t6 = *((unsigned char *)t4);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB50;

LAB51:    t3 = (unsigned char)0;

LAB52:    if (t3 == 1)
        goto LAB47;

LAB48:    t1 = (unsigned char)0;

LAB49:    if (t1 != 0)
        goto LAB45;

LAB46:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 5888);
    t19 = (t4 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 5952);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t2 = (t0 + 9728U);
    t5 = (t0 + 9792);
    t13 = (t24 + 0U);
    t16 = (t13 + 0U);
    *((int *)t16) = 0;
    t16 = (t13 + 4U);
    *((int *)t16) = 2;
    t16 = (t13 + 8U);
    *((int *)t16) = 1;
    t25 = (2 - 0);
    t26 = (t25 * 1);
    t26 = (t26 + 1);
    t16 = (t13 + 12U);
    *((unsigned int *)t16) = t26;
    t16 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t23, t4, t2, t5, t24);
    t19 = (t0 + 6016);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t27 = *((char **)t22);
    memcpy(t27, t16, 3U);
    xsi_driver_first_trans_fast(t19);
    goto LAB9;

LAB11:    t4 = (t0 + 2632U);
    t16 = *((char **)t4);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)2);
    t8 = t18;
    goto LAB13;

LAB14:    t4 = (t0 + 1352U);
    t13 = *((char **)t4);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)3);
    t9 = t15;
    goto LAB16;

LAB17:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2952U);
    t10 = *((char **)t2);
    t2 = (t0 + 9795);
    t25 = xsi_mem_cmp(t2, t10, 2U);
    if (t25 == 1)
        goto LAB23;

LAB28:    t16 = (t0 + 9797);
    t28 = xsi_mem_cmp(t16, t10, 2U);
    if (t28 == 1)
        goto LAB24;

LAB29:    t20 = (t0 + 9799);
    t29 = xsi_mem_cmp(t20, t10, 2U);
    if (t29 == 1)
        goto LAB25;

LAB30:    t22 = (t0 + 9801);
    t30 = xsi_mem_cmp(t22, t10, 2U);
    if (t30 == 1)
        goto LAB26;

LAB31:
LAB27:    xsi_set_current_line(89, ng0);

LAB22:    goto LAB9;

LAB19:    t2 = (t0 + 2632U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB21;

LAB23:    xsi_set_current_line(70, ng0);
    t31 = (t0 + 9803);
    t33 = (t0 + 6080);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memcpy(t37, t31, 2U);
    xsi_driver_first_trans_fast(t33);
    goto LAB22;

LAB24:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 9805);
    t5 = (t0 + 6080);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    memcpy(t19, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB22;

LAB25:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 9807);
    t5 = (t0 + 6080);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    memcpy(t19, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB22;

LAB26:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t2 = (t0 + 9809);
    t3 = 1;
    if (3U == 3U)
        goto LAB39;

LAB40:    t3 = 0;

LAB41:    if (t3 == 1)
        goto LAB36;

LAB37:    t1 = (unsigned char)0;

LAB38:    if (t1 != 0)
        goto LAB33;

LAB35:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t2 = (t0 + 9728U);
    t5 = (t0 + 9812);
    t13 = (t24 + 0U);
    t16 = (t13 + 0U);
    *((int *)t16) = 0;
    t16 = (t13 + 4U);
    *((int *)t16) = 2;
    t16 = (t13 + 8U);
    *((int *)t16) = 1;
    t25 = (2 - 0);
    t26 = (t25 * 1);
    t26 = (t26 + 1);
    t16 = (t13 + 12U);
    *((unsigned int *)t16) = t26;
    t16 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t23, t4, t2, t5, t24);
    t19 = (t0 + 6016);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t27 = *((char **)t22);
    memcpy(t27, t16, 3U);
    xsi_driver_first_trans_fast(t19);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 6208);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 9815);
    t5 = (t0 + 6080);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    memcpy(t19, t2, 2U);
    xsi_driver_first_trans_fast(t5);

LAB34:    goto LAB22;

LAB32:;
LAB33:    xsi_set_current_line(80, ng0);
    t16 = (t0 + 6144);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t27 = *((char **)t22);
    *((unsigned char *)t27) = (unsigned char)3;
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 5952);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 6208);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB34;

LAB36:    t16 = (t0 + 3272U);
    t19 = *((char **)t16);
    t6 = *((unsigned char *)t19);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB38;

LAB39:    t26 = 0;

LAB42:    if (t26 < 3U)
        goto LAB43;
    else
        goto LAB41;

LAB43:    t10 = (t4 + t26);
    t13 = (t2 + t26);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB40;

LAB44:    t26 = (t26 + 1);
    goto LAB42;

LAB45:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 9817);
    t16 = (t0 + 6016);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t2, 3U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 6144);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 5888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 9820);
    t5 = (t0 + 6080);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t19 = *((char **)t16);
    memcpy(t19, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB47:    t2 = (t0 + 1512U);
    t10 = *((char **)t2);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    t1 = t12;
    goto LAB49;

LAB50:    t2 = (t0 + 2632U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB52;

}

static void work_a_1255192171_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(105, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 9728U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t5 = (t4 - 7);
    t6 = (t5 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t4);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = *((unsigned char *)t9);
    t11 = (t0 + 2472U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t10, t13);
    t11 = (t0 + 6272);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t14;
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t19 = (t0 + 5760);
    *((int *)t19) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1255192171_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(107, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6336);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5776);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1255192171_3212880686_p_3(char *t0)
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
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(109, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 2952U);
    t9 = *((char **)t8);
    t10 = (0 - 1);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t0 + 6400);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t15;
    xsi_driver_first_trans_fast_port(t16);

LAB2:    t21 = (t0 + 5792);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1255192171_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(110, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 6464);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5808);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1255192171_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1255192171_3212880686_p_0,(void *)work_a_1255192171_3212880686_p_1,(void *)work_a_1255192171_3212880686_p_2,(void *)work_a_1255192171_3212880686_p_3,(void *)work_a_1255192171_3212880686_p_4};
	xsi_register_didat("work_a_1255192171_3212880686", "isim/testbench_I2CV2_isim_beh.exe.sim/work/a_1255192171_3212880686.didat");
	xsi_register_executes(pe);
}
