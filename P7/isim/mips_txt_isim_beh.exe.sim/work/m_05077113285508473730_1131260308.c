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
static const char *ng0 = "/home/co-eda/P7/mips_txt.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {5120, 0};
static unsigned int ng5[] = {12288U, 0U};
static const char *ng6 = "code.txt";
static int ng7[] = {1119, 0};
static const char *ng8 = "handler.txt";
static int ng9[] = {1120, 0};
static int ng10[] = {4095, 0};
static unsigned int ng11[] = {4294967292U, 0U};
static int ng12[] = {31, 0};
static int ng13[] = {24, 0};
static int ng14[] = {23, 0};
static int ng15[] = {16, 0};
static int ng16[] = {15, 0};
static int ng17[] = {8, 0};
static int ng18[] = {7, 0};
static int ng19[] = {4096, 0};
static const char *ng20 = "%d@%h: *%h <= %h";
static const char *ng21 = "%d@%h: $%d <= %h";
static unsigned int ng22[] = {32544U, 0U};
static unsigned int ng23[] = {12304U, 0U};



static void Initial_76_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 6016U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);

LAB4:    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3824);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3984);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4144);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 5824);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3984);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 5824);
    xsi_process_wait(t2, 2000000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(82, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

}

static void Cont_93_1(char *t0)
{
    char t5[8];
    char t14[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 6264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 4784);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 4784);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 4784);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 1664U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng3)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_rshift(t14, 32, t13, 32, t12, 32);
    t15 = ((char*)((ng4)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_mod(t16, 32, t14, 32, t15, 32);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t16, 32, 2);
    t17 = (t0 + 8992);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t5, 8);
    xsi_driver_vfirst_trans(t17, 0, 31);
    t22 = (t0 + 8816);
    *((int *)t22) = 1;

LAB1:    return;
}

static void Cont_94_2(char *t0)
{
    char t5[8];
    char t14[8];
    char t16[8];
    char t18[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    t1 = (t0 + 6512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4944);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 4944);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 4944);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 1344U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng5)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_minus(t14, 32, t13, 32, t12, 32);
    t15 = ((char*)((ng3)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_rshift(t16, 32, t14, 32, t15, 32);
    t17 = ((char*)((ng4)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_mod(t18, 32, t16, 32, t17, 32);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t18, 32, 2);
    t19 = (t0 + 9056);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t5, 8);
    xsi_driver_vfirst_trans(t19, 0, 31);
    t24 = (t0 + 8832);
    *((int *)t24) = 1;

LAB1:    return;
}

static void Initial_96_3(char *t0)
{
    char t5[8];
    char t14[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    int t27;
    char *t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    int t34;
    int t35;

LAB0:    xsi_set_current_line(96, ng0);

LAB2:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 4944);
    t2 = ((char*)((ng1)));
    t3 = ((char*)((ng7)));
    xsi_vlogfile_readmemh(ng6, 0, t1, 1, *((unsigned int *)t2), 1, *((unsigned int *)t3));
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 4944);
    t2 = ((char*)((ng9)));
    t3 = ((char*)((ng10)));
    xsi_vlogfile_readmemh(ng8, 0, t1, 1, *((unsigned int *)t2), 1, *((unsigned int *)t3));
    xsi_set_current_line(99, ng0);
    xsi_set_current_line(99, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4304);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 4304);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng4)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    xsi_set_current_line(99, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 4784);
    t16 = (t0 + 4784);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 4784);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 4304);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_generic_convert_array_indices(t14, t15, t18, t21, 2, 1, t24, 32, 1);
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t15 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t27 && t30);
    if (t31 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 4304);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 4304);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB6:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, *((unsigned int *)t15), t35, 0LL);
    goto LAB7;

}

static void Always_104_4(char *t0)
{
    char t7[8];
    char t16[8];
    char t18[8];
    char t51[8];
    char t52[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    int t42;
    int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    int t53;
    int t54;
    int t55;
    int t56;
    int t57;
    int t58;

LAB0:    t1 = (t0 + 7008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 8848);
    *((int *)t2) = 1;
    t3 = (t0 + 7040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(104, ng0);

LAB5:    xsi_set_current_line(105, ng0);
    t4 = (t0 + 4784);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t0 + 4784);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = (t0 + 4784);
    t12 = (t11 + 64U);
    t13 = *((char **)t12);
    t14 = (t0 + 1664U);
    t15 = *((char **)t14);
    t14 = ((char*)((ng3)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_rshift(t16, 32, t15, 32, t14, 32);
    t17 = ((char*)((ng10)));
    t19 = *((unsigned int *)t16);
    t20 = *((unsigned int *)t17);
    t21 = (t19 & t20);
    *((unsigned int *)t18) = t21;
    t22 = (t16 + 4);
    t23 = (t17 + 4);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t22);
    t26 = *((unsigned int *)t23);
    t27 = (t25 | t26);
    *((unsigned int *)t24) = t27;
    t28 = *((unsigned int *)t24);
    t29 = (t28 != 0);
    if (t29 == 1)
        goto LAB6;

LAB7:
LAB8:    xsi_vlog_generic_get_array_select_value(t7, 32, t6, t10, t13, 2, 1, t18, 32, 2);
    t50 = (t0 + 4624);
    xsi_vlogvar_assign_value(t50, t7, 0, 0, 32);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 1664U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t2);
    t21 = (t19 & t20);
    *((unsigned int *)t7) = t21;
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = (t7 + 4);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 | t26);
    *((unsigned int *)t6) = t27;
    t28 = *((unsigned int *)t6);
    t29 = (t28 != 0);
    if (t29 == 1)
        goto LAB9;

LAB10:
LAB11:    t10 = (t0 + 4464);
    xsi_vlogvar_assign_value(t10, t7, 0, 0, 32);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 2144U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t19 = *((unsigned int *)t3);
    t20 = (t19 >> 3);
    t21 = (t20 & 1);
    *((unsigned int *)t7) = t21;
    t25 = *((unsigned int *)t4);
    t26 = (t25 >> 3);
    t27 = (t26 & 1);
    *((unsigned int *)t2) = t27;
    t5 = (t7 + 4);
    t28 = *((unsigned int *)t5);
    t29 = (~(t28));
    t30 = *((unsigned int *)t7);
    t31 = (t30 & t29);
    t34 = (t31 != 0);
    if (t34 > 0)
        goto LAB12;

LAB13:
LAB14:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 2144U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t19 = *((unsigned int *)t3);
    t20 = (t19 >> 2);
    t21 = (t20 & 1);
    *((unsigned int *)t7) = t21;
    t25 = *((unsigned int *)t4);
    t26 = (t25 >> 2);
    t27 = (t26 & 1);
    *((unsigned int *)t2) = t27;
    t5 = (t7 + 4);
    t28 = *((unsigned int *)t5);
    t29 = (~(t28));
    t30 = *((unsigned int *)t7);
    t31 = (t30 & t29);
    t34 = (t31 != 0);
    if (t34 > 0)
        goto LAB17;

LAB18:
LAB19:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2144U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t19 = *((unsigned int *)t3);
    t20 = (t19 >> 1);
    t21 = (t20 & 1);
    *((unsigned int *)t7) = t21;
    t25 = *((unsigned int *)t4);
    t26 = (t25 >> 1);
    t27 = (t26 & 1);
    *((unsigned int *)t2) = t27;
    t5 = (t7 + 4);
    t28 = *((unsigned int *)t5);
    t29 = (~(t28));
    t30 = *((unsigned int *)t7);
    t31 = (t30 & t29);
    t34 = (t31 != 0);
    if (t34 > 0)
        goto LAB22;

LAB23:
LAB24:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 2144U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t19 = *((unsigned int *)t3);
    t20 = (t19 >> 0);
    t21 = (t20 & 1);
    *((unsigned int *)t7) = t21;
    t25 = *((unsigned int *)t4);
    t26 = (t25 >> 0);
    t27 = (t26 & 1);
    *((unsigned int *)t2) = t27;
    t5 = (t7 + 4);
    t28 = *((unsigned int *)t5);
    t29 = (~(t28));
    t30 = *((unsigned int *)t7);
    t31 = (t30 & t29);
    t34 = (t31 != 0);
    if (t34 > 0)
        goto LAB27;

LAB28:
LAB29:    goto LAB2;

LAB6:    t30 = *((unsigned int *)t18);
    t31 = *((unsigned int *)t24);
    *((unsigned int *)t18) = (t30 | t31);
    t32 = (t16 + 4);
    t33 = (t17 + 4);
    t34 = *((unsigned int *)t16);
    t35 = (~(t34));
    t36 = *((unsigned int *)t32);
    t37 = (~(t36));
    t38 = *((unsigned int *)t17);
    t39 = (~(t38));
    t40 = *((unsigned int *)t33);
    t41 = (~(t40));
    t42 = (t35 & t37);
    t43 = (t39 & t41);
    t44 = (~(t42));
    t45 = (~(t43));
    t46 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t46 & t44);
    t47 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t47 & t45);
    t48 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t48 & t44);
    t49 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t49 & t45);
    goto LAB8;

LAB9:    t30 = *((unsigned int *)t7);
    t31 = *((unsigned int *)t6);
    *((unsigned int *)t7) = (t30 | t31);
    t8 = (t3 + 4);
    t9 = (t2 + 4);
    t34 = *((unsigned int *)t3);
    t35 = (~(t34));
    t36 = *((unsigned int *)t8);
    t37 = (~(t36));
    t38 = *((unsigned int *)t2);
    t39 = (~(t38));
    t40 = *((unsigned int *)t9);
    t41 = (~(t40));
    t42 = (t35 & t37);
    t43 = (t39 & t41);
    t44 = (~(t42));
    t45 = (~(t43));
    t46 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t46 & t44);
    t47 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t47 & t45);
    t48 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t48 & t44);
    t49 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t49 & t45);
    goto LAB11;

LAB12:    xsi_set_current_line(107, ng0);
    t6 = (t0 + 1984U);
    t8 = *((char **)t6);
    memset(t16, 0, 8);
    t6 = (t16 + 4);
    t9 = (t8 + 4);
    t35 = *((unsigned int *)t8);
    t36 = (t35 >> 24);
    *((unsigned int *)t16) = t36;
    t37 = *((unsigned int *)t9);
    t38 = (t37 >> 24);
    *((unsigned int *)t6) = t38;
    t39 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t39 & 255U);
    t40 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t40 & 255U);
    t10 = (t0 + 4624);
    t11 = (t0 + 4624);
    t12 = (t11 + 72U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng12)));
    t15 = ((char*)((ng13)));
    xsi_vlog_convert_partindices(t18, t51, t52, ((int*)(t13)), 2, t14, 32, 1, t15, 32, 1);
    t17 = (t18 + 4);
    t41 = *((unsigned int *)t17);
    t42 = (!(t41));
    t22 = (t51 + 4);
    t44 = *((unsigned int *)t22);
    t43 = (!(t44));
    t53 = (t42 && t43);
    t23 = (t52 + 4);
    t45 = *((unsigned int *)t23);
    t54 = (!(t45));
    t55 = (t53 && t54);
    if (t55 == 1)
        goto LAB15;

LAB16:    goto LAB14;

LAB15:    t46 = *((unsigned int *)t52);
    t56 = (t46 + 0);
    t47 = *((unsigned int *)t18);
    t48 = *((unsigned int *)t51);
    t57 = (t47 - t48);
    t58 = (t57 + 1);
    xsi_vlogvar_assign_value(t10, t16, t56, *((unsigned int *)t51), t58);
    goto LAB16;

LAB17:    xsi_set_current_line(108, ng0);
    t6 = (t0 + 1984U);
    t8 = *((char **)t6);
    memset(t16, 0, 8);
    t6 = (t16 + 4);
    t9 = (t8 + 4);
    t35 = *((unsigned int *)t8);
    t36 = (t35 >> 16);
    *((unsigned int *)t16) = t36;
    t37 = *((unsigned int *)t9);
    t38 = (t37 >> 16);
    *((unsigned int *)t6) = t38;
    t39 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t39 & 255U);
    t40 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t40 & 255U);
    t10 = (t0 + 4624);
    t11 = (t0 + 4624);
    t12 = (t11 + 72U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng14)));
    t15 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t18, t51, t52, ((int*)(t13)), 2, t14, 32, 1, t15, 32, 1);
    t17 = (t18 + 4);
    t41 = *((unsigned int *)t17);
    t42 = (!(t41));
    t22 = (t51 + 4);
    t44 = *((unsigned int *)t22);
    t43 = (!(t44));
    t53 = (t42 && t43);
    t23 = (t52 + 4);
    t45 = *((unsigned int *)t23);
    t54 = (!(t45));
    t55 = (t53 && t54);
    if (t55 == 1)
        goto LAB20;

LAB21:    goto LAB19;

LAB20:    t46 = *((unsigned int *)t52);
    t56 = (t46 + 0);
    t47 = *((unsigned int *)t18);
    t48 = *((unsigned int *)t51);
    t57 = (t47 - t48);
    t58 = (t57 + 1);
    xsi_vlogvar_assign_value(t10, t16, t56, *((unsigned int *)t51), t58);
    goto LAB21;

LAB22:    xsi_set_current_line(109, ng0);
    t6 = (t0 + 1984U);
    t8 = *((char **)t6);
    memset(t16, 0, 8);
    t6 = (t16 + 4);
    t9 = (t8 + 4);
    t35 = *((unsigned int *)t8);
    t36 = (t35 >> 8);
    *((unsigned int *)t16) = t36;
    t37 = *((unsigned int *)t9);
    t38 = (t37 >> 8);
    *((unsigned int *)t6) = t38;
    t39 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t39 & 255U);
    t40 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t40 & 255U);
    t10 = (t0 + 4624);
    t11 = (t0 + 4624);
    t12 = (t11 + 72U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng16)));
    t15 = ((char*)((ng17)));
    xsi_vlog_convert_partindices(t18, t51, t52, ((int*)(t13)), 2, t14, 32, 1, t15, 32, 1);
    t17 = (t18 + 4);
    t41 = *((unsigned int *)t17);
    t42 = (!(t41));
    t22 = (t51 + 4);
    t44 = *((unsigned int *)t22);
    t43 = (!(t44));
    t53 = (t42 && t43);
    t23 = (t52 + 4);
    t45 = *((unsigned int *)t23);
    t54 = (!(t45));
    t55 = (t53 && t54);
    if (t55 == 1)
        goto LAB25;

LAB26:    goto LAB24;

LAB25:    t46 = *((unsigned int *)t52);
    t56 = (t46 + 0);
    t47 = *((unsigned int *)t18);
    t48 = *((unsigned int *)t51);
    t57 = (t47 - t48);
    t58 = (t57 + 1);
    xsi_vlogvar_assign_value(t10, t16, t56, *((unsigned int *)t51), t58);
    goto LAB26;

LAB27:    xsi_set_current_line(110, ng0);
    t6 = (t0 + 1984U);
    t8 = *((char **)t6);
    memset(t16, 0, 8);
    t6 = (t16 + 4);
    t9 = (t8 + 4);
    t35 = *((unsigned int *)t8);
    t36 = (t35 >> 0);
    *((unsigned int *)t16) = t36;
    t37 = *((unsigned int *)t9);
    t38 = (t37 >> 0);
    *((unsigned int *)t6) = t38;
    t39 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t39 & 255U);
    t40 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t40 & 255U);
    t10 = (t0 + 4624);
    t11 = (t0 + 4624);
    t12 = (t11 + 72U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng18)));
    t15 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t18, t51, t52, ((int*)(t13)), 2, t14, 32, 1, t15, 32, 1);
    t17 = (t18 + 4);
    t41 = *((unsigned int *)t17);
    t42 = (!(t41));
    t22 = (t51 + 4);
    t44 = *((unsigned int *)t22);
    t43 = (!(t44));
    t53 = (t42 && t43);
    t23 = (t52 + 4);
    t45 = *((unsigned int *)t23);
    t54 = (!(t45));
    t55 = (t53 && t54);
    if (t55 == 1)
        goto LAB30;

LAB31:    goto LAB29;

LAB30:    t46 = *((unsigned int *)t52);
    t56 = (t46 + 0);
    t47 = *((unsigned int *)t18);
    t48 = *((unsigned int *)t51);
    t57 = (t47 - t48);
    t58 = (t57 + 1);
    xsi_vlogvar_assign_value(t10, t16, t56, *((unsigned int *)t51), t58);
    goto LAB31;

}

static void Always_113_5(char *t0)
{
    char t15[8];
    char t16[8];
    char t17[8];
    char t41[8];
    char t42[8];
    char t48[8];
    char t86[8];
    char t87[8];
    char t98[8];
    char t107[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
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
    int t28;
    char *t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    char *t99;
    unsigned int t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    int t105;
    int t106;

LAB0:    t1 = (t0 + 7256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 8864);
    *((int *)t2) = 1;
    t3 = (t0 + 7288);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(113, ng0);

LAB5:    xsi_set_current_line(114, ng0);
    t4 = (t0 + 3984);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 2144U);
    t3 = *((char **)t2);
    memset(t15, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 & 15U);
    if (t12 != 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t2) != 0)
        goto LAB16;

LAB17:    memset(t16, 0, 8);
    t5 = (t15 + 4);
    t27 = *((unsigned int *)t5);
    t30 = (~(t27));
    t33 = *((unsigned int *)t15);
    t34 = (t33 & t30);
    t37 = (t34 & 1U);
    if (t37 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t5) != 0)
        goto LAB20;

LAB21:    t7 = (t16 + 4);
    t38 = *((unsigned int *)t16);
    t39 = *((unsigned int *)t7);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB22;

LAB23:    memcpy(t48, t16, 8);

LAB24:    t76 = (t48 + 4);
    t77 = *((unsigned int *)t76);
    t78 = (~(t77));
    t79 = *((unsigned int *)t48);
    t80 = (t79 & t78);
    t81 = (t80 != 0);
    if (t81 > 0)
        goto LAB37;

LAB38:
LAB39:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(114, ng0);
    xsi_set_current_line(114, ng0);
    t13 = ((char*)((ng1)));
    t14 = (t0 + 4304);
    xsi_vlogvar_assign_value(t14, t13, 0, 0, 32);

LAB9:    t2 = (t0 + 4304);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng19)));
    memset(t15, 0, 8);
    xsi_vlog_signed_less(t15, 32, t4, 32, t5, 32);
    t6 = (t15 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t15);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB10;

LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(114, ng0);
    t7 = ((char*)((ng1)));
    t13 = (t0 + 4784);
    t14 = (t0 + 4784);
    t18 = (t14 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 4784);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 4304);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t16, t17, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t16 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t17 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB12;

LAB13:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 4304);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t15, 0, 8);
    xsi_vlog_signed_add(t15, 32, t4, 32, t5, 32);
    t6 = (t0 + 4304);
    xsi_vlogvar_assign_value(t6, t15, 0, 0, 32);
    goto LAB9;

LAB12:    t33 = *((unsigned int *)t16);
    t34 = *((unsigned int *)t17);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t13, t7, 0, *((unsigned int *)t17), t36, 0LL);
    goto LAB13;

LAB14:    *((unsigned int *)t15) = 1;
    goto LAB17;

LAB16:    t4 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB17;

LAB18:    *((unsigned int *)t16) = 1;
    goto LAB21;

LAB20:    t6 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB21;

LAB22:    t13 = (t0 + 4464);
    t14 = (t13 + 56U);
    t18 = *((char **)t14);
    t19 = ((char*)((ng3)));
    memset(t17, 0, 8);
    xsi_vlog_unsigned_rshift(t17, 32, t18, 32, t19, 32);
    t20 = ((char*)((ng19)));
    memset(t41, 0, 8);
    t21 = (t17 + 4);
    if (*((unsigned int *)t21) != 0)
        goto LAB26;

LAB25:    t22 = (t20 + 4);
    if (*((unsigned int *)t22) != 0)
        goto LAB26;

LAB29:    if (*((unsigned int *)t17) < *((unsigned int *)t20))
        goto LAB27;

LAB28:    memset(t42, 0, 8);
    t24 = (t41 + 4);
    t43 = *((unsigned int *)t24);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (t45 & t44);
    t47 = (t46 & 1U);
    if (t47 != 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t24) != 0)
        goto LAB32;

LAB33:    t49 = *((unsigned int *)t16);
    t50 = *((unsigned int *)t42);
    t51 = (t49 & t50);
    *((unsigned int *)t48) = t51;
    t26 = (t16 + 4);
    t29 = (t42 + 4);
    t52 = (t48 + 4);
    t53 = *((unsigned int *)t26);
    t54 = *((unsigned int *)t29);
    t55 = (t53 | t54);
    *((unsigned int *)t52) = t55;
    t56 = *((unsigned int *)t52);
    t57 = (t56 != 0);
    if (t57 == 1)
        goto LAB34;

LAB35:
LAB36:    goto LAB24;

LAB26:    t23 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB28;

LAB27:    *((unsigned int *)t41) = 1;
    goto LAB28;

LAB30:    *((unsigned int *)t42) = 1;
    goto LAB33;

LAB32:    t25 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB33;

LAB34:    t58 = *((unsigned int *)t48);
    t59 = *((unsigned int *)t52);
    *((unsigned int *)t48) = (t58 | t59);
    t60 = (t16 + 4);
    t61 = (t42 + 4);
    t62 = *((unsigned int *)t16);
    t63 = (~(t62));
    t64 = *((unsigned int *)t60);
    t65 = (~(t64));
    t66 = *((unsigned int *)t42);
    t67 = (~(t66));
    t68 = *((unsigned int *)t61);
    t69 = (~(t68));
    t28 = (t63 & t65);
    t31 = (t67 & t69);
    t70 = (~(t28));
    t71 = (~(t31));
    t72 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t72 & t70);
    t73 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t73 & t71);
    t74 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t74 & t70);
    t75 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t75 & t71);
    goto LAB36;

LAB37:    xsi_set_current_line(115, ng0);

LAB40:    xsi_set_current_line(116, ng0);
    t82 = (t0 + 4624);
    t83 = (t82 + 56U);
    t84 = *((char **)t83);
    t85 = (t0 + 4784);
    t88 = (t0 + 4784);
    t89 = (t88 + 72U);
    t90 = *((char **)t89);
    t91 = (t0 + 4784);
    t92 = (t91 + 64U);
    t93 = *((char **)t92);
    t94 = (t0 + 4464);
    t95 = (t94 + 56U);
    t96 = *((char **)t95);
    t97 = ((char*)((ng3)));
    memset(t98, 0, 8);
    xsi_vlog_unsigned_rshift(t98, 32, t96, 32, t97, 32);
    xsi_vlog_generic_convert_array_indices(t86, t87, t90, t93, 2, 1, t98, 32, 2);
    t99 = (t86 + 4);
    t100 = *((unsigned int *)t99);
    t32 = (!(t100));
    t101 = (t87 + 4);
    t102 = *((unsigned int *)t101);
    t35 = (!(t102));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB41;

LAB42:    xsi_set_current_line(117, ng0);
    t2 = xsi_vlog_time(t107, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 2624U);
    t4 = *((char **)t3);
    t3 = (t0 + 4464);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 4624);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    xsi_vlogfile_write(1, 0, 0, ng20, 5, t0, (char)118, t107, 64, (char)118, t4, 32, (char)118, t6, 32, (char)118, t14, 32);
    goto LAB39;

LAB41:    t103 = *((unsigned int *)t86);
    t104 = *((unsigned int *)t87);
    t105 = (t103 - t104);
    t106 = (t105 + 1);
    xsi_vlogvar_wait_assign_value(t85, t84, 0, *((unsigned int *)t87), t106, 0LL);
    goto LAB42;

}

static void Always_123_6(char *t0)
{
    char t4[8];
    char t33[8];
    char t46[8];
    char t62[8];
    char t70[8];
    char t108[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    int t94;
    int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;

LAB0:    t1 = (t0 + 7504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 8880);
    *((int *)t2) = 1;
    t3 = (t0 + 7536);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(123, ng0);

LAB5:    xsi_set_current_line(124, ng0);
    t5 = (t0 + 3984);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t8) == 0)
        goto LAB6;

LAB8:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;

LAB9:    t15 = (t4 + 4);
    t16 = (t7 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    *((unsigned int *)t4) = t18;
    *((unsigned int *)t15) = 0;
    if (*((unsigned int *)t16) != 0)
        goto LAB11;

LAB10:    t23 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t23 & 1U);
    t24 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t24 & 1U);
    t25 = (t4 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t4);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB12;

LAB13:
LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t16);
    *((unsigned int *)t4) = (t19 | t20);
    t21 = *((unsigned int *)t15);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t15) = (t21 | t22);
    goto LAB10;

LAB12:    xsi_set_current_line(124, ng0);

LAB15:    xsi_set_current_line(125, ng0);
    t31 = (t0 + 2784U);
    t32 = *((char **)t31);
    memset(t33, 0, 8);
    t31 = (t32 + 4);
    t34 = *((unsigned int *)t31);
    t35 = (~(t34));
    t36 = *((unsigned int *)t32);
    t37 = (t36 & t35);
    t38 = (t37 & 1U);
    if (t38 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t31) != 0)
        goto LAB18;

LAB19:    t40 = (t33 + 4);
    t41 = *((unsigned int *)t33);
    t42 = *((unsigned int *)t40);
    t43 = (t41 || t42);
    if (t43 > 0)
        goto LAB20;

LAB21:    memcpy(t70, t33, 8);

LAB22:    t102 = (t70 + 4);
    t103 = *((unsigned int *)t102);
    t104 = (~(t103));
    t105 = *((unsigned int *)t70);
    t106 = (t105 & t104);
    t107 = (t106 != 0);
    if (t107 > 0)
        goto LAB34;

LAB35:
LAB36:    goto LAB14;

LAB16:    *((unsigned int *)t33) = 1;
    goto LAB19;

LAB18:    t39 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB19;

LAB20:    t44 = (t0 + 2944U);
    t45 = *((char **)t44);
    t44 = ((char*)((ng1)));
    memset(t46, 0, 8);
    t47 = (t45 + 4);
    t48 = (t44 + 4);
    t49 = *((unsigned int *)t45);
    t50 = *((unsigned int *)t44);
    t51 = (t49 ^ t50);
    t52 = *((unsigned int *)t47);
    t53 = *((unsigned int *)t48);
    t54 = (t52 ^ t53);
    t55 = (t51 | t54);
    t56 = *((unsigned int *)t47);
    t57 = *((unsigned int *)t48);
    t58 = (t56 | t57);
    t59 = (~(t58));
    t60 = (t55 & t59);
    if (t60 != 0)
        goto LAB24;

LAB23:    if (t58 != 0)
        goto LAB25;

LAB26:    memset(t62, 0, 8);
    t63 = (t46 + 4);
    t64 = *((unsigned int *)t63);
    t65 = (~(t64));
    t66 = *((unsigned int *)t46);
    t67 = (t66 & t65);
    t68 = (t67 & 1U);
    if (t68 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t63) != 0)
        goto LAB29;

LAB30:    t71 = *((unsigned int *)t33);
    t72 = *((unsigned int *)t62);
    t73 = (t71 & t72);
    *((unsigned int *)t70) = t73;
    t74 = (t33 + 4);
    t75 = (t62 + 4);
    t76 = (t70 + 4);
    t77 = *((unsigned int *)t74);
    t78 = *((unsigned int *)t75);
    t79 = (t77 | t78);
    *((unsigned int *)t76) = t79;
    t80 = *((unsigned int *)t76);
    t81 = (t80 != 0);
    if (t81 == 1)
        goto LAB31;

LAB32:
LAB33:    goto LAB22;

LAB24:    *((unsigned int *)t46) = 1;
    goto LAB26;

LAB25:    t61 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB26;

LAB27:    *((unsigned int *)t62) = 1;
    goto LAB30;

LAB29:    t69 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t69) = 1;
    goto LAB30;

LAB31:    t82 = *((unsigned int *)t70);
    t83 = *((unsigned int *)t76);
    *((unsigned int *)t70) = (t82 | t83);
    t84 = (t33 + 4);
    t85 = (t62 + 4);
    t86 = *((unsigned int *)t33);
    t87 = (~(t86));
    t88 = *((unsigned int *)t84);
    t89 = (~(t88));
    t90 = *((unsigned int *)t62);
    t91 = (~(t90));
    t92 = *((unsigned int *)t85);
    t93 = (~(t92));
    t94 = (t87 & t89);
    t95 = (t91 & t93);
    t96 = (~(t94));
    t97 = (~(t95));
    t98 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t98 & t96);
    t99 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t99 & t97);
    t100 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t100 & t96);
    t101 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t101 & t97);
    goto LAB33;

LAB34:    xsi_set_current_line(125, ng0);

LAB37:    xsi_set_current_line(126, ng0);
    t109 = xsi_vlog_time(t108, 1000.0000000000000, 1000.0000000000000);
    t110 = (t0 + 3264U);
    t111 = *((char **)t110);
    t110 = (t0 + 2944U);
    t112 = *((char **)t110);
    t110 = (t0 + 3104U);
    t113 = *((char **)t110);
    xsi_vlogfile_write(1, 0, 0, ng21, 5, t0, (char)118, t108, 64, (char)118, t111, 32, (char)118, t112, 5, (char)118, t113, 32);
    goto LAB36;

}

static void Cont_135_7(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    t1 = (t0 + 7752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    t5 = *((unsigned int *)t3);
    t6 = *((unsigned int *)t2);
    t7 = (t5 & t6);
    *((unsigned int *)t4) = t7;
    t8 = (t3 + 4);
    t9 = (t2 + 4);
    t10 = (t4 + 4);
    t11 = *((unsigned int *)t8);
    t12 = *((unsigned int *)t9);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t10);
    t15 = (t14 != 0);
    if (t15 == 1)
        goto LAB4;

LAB5:
LAB6:    t36 = (t0 + 9120);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t4, 8);
    xsi_driver_vfirst_trans(t36, 0, 31);
    t41 = (t0 + 8896);
    *((int *)t41) = 1;

LAB1:    return;
LAB4:    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t4) = (t16 | t17);
    t18 = (t3 + 4);
    t19 = (t2 + 4);
    t20 = *((unsigned int *)t3);
    t21 = (~(t20));
    t22 = *((unsigned int *)t18);
    t23 = (~(t22));
    t24 = *((unsigned int *)t2);
    t25 = (~(t24));
    t26 = *((unsigned int *)t19);
    t27 = (~(t26));
    t28 = (t21 & t23);
    t29 = (t25 & t27);
    t30 = (~(t28));
    t31 = (~(t29));
    t32 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t32 & t30);
    t33 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t33 & t31);
    t34 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t34 & t30);
    t35 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t35 & t31);
    goto LAB6;

}

static void Initial_141_8(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(141, ng0);

LAB2:    xsi_set_current_line(142, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 5104);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Always_145_9(char *t0)
{
    char t15[8];
    char t21[8];
    char t34[8];
    char t67[8];
    char t83[8];
    char t91[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    int t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    int t115;
    int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    char *t129;
    char *t130;

LAB0:    t1 = (t0 + 8248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 8912);
    *((int *)t2) = 1;
    t3 = (t0 + 8280);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(145, ng0);

LAB5:    xsi_set_current_line(146, ng0);
    t4 = (t0 + 3984);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(149, ng0);

LAB10:    xsi_set_current_line(150, ng0);
    t2 = (t0 + 4144);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    t10 = *((unsigned int *)t4);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(155, ng0);
    t2 = (t0 + 3424U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng23)));
    memset(t15, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t16 = (t11 ^ t12);
    t17 = (t10 | t16);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t5);
    t20 = (t18 | t19);
    t22 = (~(t20));
    t23 = (t17 & t22);
    if (t23 != 0)
        goto LAB47;

LAB44:    if (t20 != 0)
        goto LAB46;

LAB45:    *((unsigned int *)t15) = 1;

LAB47:    t7 = (t15 + 4);
    t24 = *((unsigned int *)t7);
    t25 = (~(t24));
    t26 = *((unsigned int *)t15);
    t29 = (t26 & t25);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB48;

LAB49:
LAB50:
LAB13:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(146, ng0);

LAB9:    xsi_set_current_line(147, ng0);
    t13 = ((char*)((ng1)));
    t14 = (t0 + 4144);
    xsi_vlogvar_assign_value(t14, t13, 0, 0, 1);
    goto LAB8;

LAB11:    xsi_set_current_line(150, ng0);

LAB14:    xsi_set_current_line(151, ng0);
    t6 = (t0 + 2464U);
    t7 = *((char **)t6);
    memset(t15, 0, 8);
    t6 = (t7 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    t18 = *((unsigned int *)t7);
    t19 = (t18 & t17);
    t20 = (t19 & 15U);
    if (t20 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t6) != 0)
        goto LAB17;

LAB18:    memset(t21, 0, 8);
    t14 = (t15 + 4);
    t22 = *((unsigned int *)t14);
    t23 = (~(t22));
    t24 = *((unsigned int *)t15);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t14) != 0)
        goto LAB21;

LAB22:    t28 = (t21 + 4);
    t29 = *((unsigned int *)t21);
    t30 = *((unsigned int *)t28);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB23;

LAB24:    memcpy(t91, t21, 8);

LAB25:    t123 = (t91 + 4);
    t124 = *((unsigned int *)t123);
    t125 = (~(t124));
    t126 = *((unsigned int *)t91);
    t127 = (t126 & t125);
    t128 = (t127 != 0);
    if (t128 > 0)
        goto LAB40;

LAB41:
LAB42:    goto LAB13;

LAB15:    *((unsigned int *)t15) = 1;
    goto LAB18;

LAB17:    t13 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t21) = 1;
    goto LAB22;

LAB21:    t27 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB22;

LAB23:    t32 = (t0 + 2304U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng11)));
    t35 = *((unsigned int *)t33);
    t36 = *((unsigned int *)t32);
    t37 = (t35 & t36);
    *((unsigned int *)t34) = t37;
    t38 = (t33 + 4);
    t39 = (t32 + 4);
    t40 = (t34 + 4);
    t41 = *((unsigned int *)t38);
    t42 = *((unsigned int *)t39);
    t43 = (t41 | t42);
    *((unsigned int *)t40) = t43;
    t44 = *((unsigned int *)t40);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB26;

LAB27:
LAB28:    t66 = ((char*)((ng22)));
    memset(t67, 0, 8);
    t68 = (t34 + 4);
    t69 = (t66 + 4);
    t70 = *((unsigned int *)t34);
    t71 = *((unsigned int *)t66);
    t72 = (t70 ^ t71);
    t73 = *((unsigned int *)t68);
    t74 = *((unsigned int *)t69);
    t75 = (t73 ^ t74);
    t76 = (t72 | t75);
    t77 = *((unsigned int *)t68);
    t78 = *((unsigned int *)t69);
    t79 = (t77 | t78);
    t80 = (~(t79));
    t81 = (t76 & t80);
    if (t81 != 0)
        goto LAB32;

LAB29:    if (t79 != 0)
        goto LAB31;

LAB30:    *((unsigned int *)t67) = 1;

LAB32:    memset(t83, 0, 8);
    t84 = (t67 + 4);
    t85 = *((unsigned int *)t84);
    t86 = (~(t85));
    t87 = *((unsigned int *)t67);
    t88 = (t87 & t86);
    t89 = (t88 & 1U);
    if (t89 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t84) != 0)
        goto LAB35;

LAB36:    t92 = *((unsigned int *)t21);
    t93 = *((unsigned int *)t83);
    t94 = (t92 & t93);
    *((unsigned int *)t91) = t94;
    t95 = (t21 + 4);
    t96 = (t83 + 4);
    t97 = (t91 + 4);
    t98 = *((unsigned int *)t95);
    t99 = *((unsigned int *)t96);
    t100 = (t98 | t99);
    *((unsigned int *)t97) = t100;
    t101 = *((unsigned int *)t97);
    t102 = (t101 != 0);
    if (t102 == 1)
        goto LAB37;

LAB38:
LAB39:    goto LAB25;

LAB26:    t46 = *((unsigned int *)t34);
    t47 = *((unsigned int *)t40);
    *((unsigned int *)t34) = (t46 | t47);
    t48 = (t33 + 4);
    t49 = (t32 + 4);
    t50 = *((unsigned int *)t33);
    t51 = (~(t50));
    t52 = *((unsigned int *)t48);
    t53 = (~(t52));
    t54 = *((unsigned int *)t32);
    t55 = (~(t54));
    t56 = *((unsigned int *)t49);
    t57 = (~(t56));
    t58 = (t51 & t53);
    t59 = (t55 & t57);
    t60 = (~(t58));
    t61 = (~(t59));
    t62 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t62 & t60);
    t63 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t63 & t61);
    t64 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t64 & t60);
    t65 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t65 & t61);
    goto LAB28;

LAB31:    t82 = (t67 + 4);
    *((unsigned int *)t67) = 1;
    *((unsigned int *)t82) = 1;
    goto LAB32;

LAB33:    *((unsigned int *)t83) = 1;
    goto LAB36;

LAB35:    t90 = (t83 + 4);
    *((unsigned int *)t83) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB36;

LAB37:    t103 = *((unsigned int *)t91);
    t104 = *((unsigned int *)t97);
    *((unsigned int *)t91) = (t103 | t104);
    t105 = (t21 + 4);
    t106 = (t83 + 4);
    t107 = *((unsigned int *)t21);
    t108 = (~(t107));
    t109 = *((unsigned int *)t105);
    t110 = (~(t109));
    t111 = *((unsigned int *)t83);
    t112 = (~(t111));
    t113 = *((unsigned int *)t106);
    t114 = (~(t113));
    t115 = (t108 & t110);
    t116 = (t112 & t114);
    t117 = (~(t115));
    t118 = (~(t116));
    t119 = *((unsigned int *)t97);
    *((unsigned int *)t97) = (t119 & t117);
    t120 = *((unsigned int *)t97);
    *((unsigned int *)t97) = (t120 & t118);
    t121 = *((unsigned int *)t91);
    *((unsigned int *)t91) = (t121 & t117);
    t122 = *((unsigned int *)t91);
    *((unsigned int *)t91) = (t122 & t118);
    goto LAB39;

LAB40:    xsi_set_current_line(151, ng0);

LAB43:    xsi_set_current_line(152, ng0);
    t129 = ((char*)((ng1)));
    t130 = (t0 + 4144);
    xsi_vlogvar_assign_value(t130, t129, 0, 0, 1);
    goto LAB42;

LAB46:    t6 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB47;

LAB48:    xsi_set_current_line(155, ng0);

LAB51:    xsi_set_current_line(156, ng0);
    t13 = (t0 + 5104);
    t14 = (t13 + 56U);
    t27 = *((char **)t14);
    t28 = ((char*)((ng1)));
    memset(t21, 0, 8);
    xsi_vlog_signed_equal(t21, 32, t27, 32, t28, 32);
    t32 = (t21 + 4);
    t31 = *((unsigned int *)t32);
    t35 = (~(t31));
    t36 = *((unsigned int *)t21);
    t37 = (t36 & t35);
    t41 = (t37 != 0);
    if (t41 > 0)
        goto LAB52;

LAB53:
LAB54:    goto LAB50;

LAB52:    xsi_set_current_line(156, ng0);

LAB55:    xsi_set_current_line(157, ng0);
    t33 = ((char*)((ng2)));
    t38 = (t0 + 5104);
    xsi_vlogvar_assign_value(t38, t33, 0, 0, 32);
    xsi_set_current_line(158, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4144);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB54;

}

static void Always_164_10(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 8496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(164, ng0);
    t2 = (t0 + 8304);
    xsi_process_wait(t2, 2000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(164, ng0);
    t4 = (t0 + 3824);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 3824);
    xsi_vlogvar_wait_assign_value(t24, t3, 0, 0, 1, 0LL);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}


extern void work_m_05077113285508473730_1131260308_init()
{
	static char *pe[] = {(void *)Initial_76_0,(void *)Cont_93_1,(void *)Cont_94_2,(void *)Initial_96_3,(void *)Always_104_4,(void *)Always_113_5,(void *)Always_123_6,(void *)Cont_135_7,(void *)Initial_141_8,(void *)Always_145_9,(void *)Always_164_10};
	xsi_register_didat("work_m_05077113285508473730_1131260308", "isim/mips_txt_isim_beh.exe.sim/work/m_05077113285508473730_1131260308.didat");
	xsi_register_executes(pe);
}
