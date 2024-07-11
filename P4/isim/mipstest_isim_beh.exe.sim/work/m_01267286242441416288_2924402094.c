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
static const char *ng0 = "/home/co-eda/SingleCPU/DM.v";
static int ng1[] = {0, 0};
static int ng2[] = {3072, 0};
static int ng3[] = {1, 0};
static int ng4[] = {1023, 0};
static const char *ng5 = "@%h: *%h <= %h";
static int ng6[] = {2, 0};
static int ng7[] = {3, 0};



static void Initial_32_0(char *t0)
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

LAB0:    xsi_set_current_line(32, ng0);

LAB2:    xsi_set_current_line(33, ng0);
    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2568);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 2568);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
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
LAB4:    xsi_set_current_line(33, ng0);

LAB6:    xsi_set_current_line(34, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 2408);
    t16 = (t0 + 2408);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 2408);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 2568);
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
        goto LAB7;

LAB8:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 2568);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 2568);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB7:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, *((unsigned int *)t15), t35, 0LL);
    goto LAB8;

}

static void Always_37_1(char *t0)
{
    char t6[8];
    char t30[8];
    char t31[8];
    char t63[8];
    char t64[8];
    char t73[8];
    char t89[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    int t39;
    char *t40;
    int t41;
    int t42;
    int t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
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
    unsigned int t61;
    char *t62;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
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
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;

LAB0:    t1 = (t0 + 3728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 4296);
    *((int *)t2) = 1;
    t3 = (t0 + 3760);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB23;

LAB20:    if (t18 != 0)
        goto LAB22;

LAB21:    *((unsigned int *)t6) = 1;

LAB23:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB33;

LAB30:    if (t18 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t6) = 1;

LAB33:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB61;

LAB58:    if (t18 != 0)
        goto LAB60;

LAB59:    *((unsigned int *)t6) = 1;

LAB61:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB62;

LAB63:
LAB64:
LAB36:
LAB26:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(38, ng0);

LAB13:    xsi_set_current_line(39, ng0);
    xsi_set_current_line(39, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 2568);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 32);

LAB14:    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB15;

LAB16:    goto LAB12;

LAB15:    xsi_set_current_line(39, ng0);

LAB17:    xsi_set_current_line(40, ng0);
    t8 = ((char*)((ng1)));
    t21 = (t0 + 2408);
    t22 = (t0 + 2408);
    t28 = (t22 + 72U);
    t29 = *((char **)t28);
    t32 = (t0 + 2408);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = (t0 + 2568);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    xsi_vlog_generic_convert_array_indices(t30, t31, t29, t34, 2, 1, t37, 32, 1);
    t38 = (t30 + 4);
    t14 = *((unsigned int *)t38);
    t39 = (!(t14));
    t40 = (t31 + 4);
    t15 = *((unsigned int *)t40);
    t41 = (!(t15));
    t42 = (t39 && t41);
    if (t42 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2568);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB14;

LAB18:    t16 = *((unsigned int *)t30);
    t17 = *((unsigned int *)t31);
    t43 = (t16 - t17);
    t44 = (t43 + 1);
    xsi_vlogvar_wait_assign_value(t21, t8, 0, *((unsigned int *)t31), t44, 0LL);
    goto LAB19;

LAB22:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB23;

LAB24:    xsi_set_current_line(43, ng0);

LAB27:    xsi_set_current_line(44, ng0);
    t21 = (t0 + 2008U);
    t22 = *((char **)t21);
    t21 = (t0 + 1048U);
    t28 = *((char **)t21);
    t21 = (t0 + 1208U);
    t29 = *((char **)t21);
    xsi_vlogfile_write(1, 0, 0, ng5, 4, t0, (char)118, t22, 32, (char)118, t28, 32, (char)118, t29, 32);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2408);
    t4 = (t0 + 2408);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 2408);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    memset(t31, 0, 8);
    t28 = (t31 + 4);
    t32 = (t29 + 4);
    t9 = *((unsigned int *)t29);
    t10 = (t9 >> 2);
    *((unsigned int *)t31) = t10;
    t11 = *((unsigned int *)t32);
    t12 = (t11 >> 2);
    *((unsigned int *)t28) = t12;
    t13 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t13 & 524287U);
    t14 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t14 & 524287U);
    xsi_vlog_generic_convert_array_indices(t6, t30, t7, t22, 2, 1, t31, 19, 2);
    t33 = (t6 + 4);
    t15 = *((unsigned int *)t33);
    t39 = (!(t15));
    t34 = (t30 + 4);
    t16 = *((unsigned int *)t34);
    t41 = (!(t16));
    t42 = (t39 && t41);
    if (t42 == 1)
        goto LAB28;

LAB29:    goto LAB26;

LAB28:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t30);
    t43 = (t17 - t18);
    t44 = (t43 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t30), t44, 0LL);
    goto LAB29;

LAB32:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB33;

LAB34:    xsi_set_current_line(47, ng0);

LAB37:    xsi_set_current_line(48, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    t21 = (t0 + 1008U);
    t28 = (t21 + 72U);
    t29 = *((char **)t28);
    t32 = ((char*)((ng3)));
    xsi_vlog_generic_get_index_select_value(t30, 32, t22, t29, 2, t32, 32, 1);
    t33 = ((char*)((ng1)));
    memset(t31, 0, 8);
    t34 = (t30 + 4);
    t35 = (t33 + 4);
    t45 = *((unsigned int *)t30);
    t46 = *((unsigned int *)t33);
    t47 = (t45 ^ t46);
    t48 = *((unsigned int *)t34);
    t49 = *((unsigned int *)t35);
    t50 = (t48 ^ t49);
    t51 = (t47 | t50);
    t52 = *((unsigned int *)t34);
    t53 = *((unsigned int *)t35);
    t54 = (t52 | t53);
    t55 = (~(t54));
    t56 = (t51 & t55);
    if (t56 != 0)
        goto LAB41;

LAB38:    if (t54 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t31) = 1;

LAB41:    t37 = (t31 + 4);
    t57 = *((unsigned int *)t37);
    t58 = (~(t57));
    t59 = *((unsigned int *)t31);
    t60 = (t59 & t58);
    t61 = (t60 != 0);
    if (t61 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1008U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng3)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t3, t5, 2, t7, 32, 1);
    t8 = ((char*)((ng3)));
    memset(t30, 0, 8);
    t21 = (t6 + 4);
    t22 = (t8 + 4);
    t9 = *((unsigned int *)t6);
    t10 = *((unsigned int *)t8);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t21);
    t13 = *((unsigned int *)t22);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t21);
    t17 = *((unsigned int *)t22);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB51;

LAB48:    if (t18 != 0)
        goto LAB50;

LAB49:    *((unsigned int *)t30) = 1;

LAB51:    t29 = (t30 + 4);
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t30);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB52;

LAB53:
LAB54:
LAB44:    goto LAB36;

LAB40:    t36 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB41;

LAB42:    xsi_set_current_line(48, ng0);

LAB45:    xsi_set_current_line(49, ng0);
    t38 = (t0 + 2008U);
    t40 = *((char **)t38);
    t38 = (t0 + 1048U);
    t62 = *((char **)t38);
    t38 = (t0 + 1208U);
    t65 = *((char **)t38);
    memset(t64, 0, 8);
    t38 = (t64 + 4);
    t66 = (t65 + 4);
    t67 = *((unsigned int *)t65);
    t68 = (t67 >> 0);
    *((unsigned int *)t64) = t68;
    t69 = *((unsigned int *)t66);
    t70 = (t69 >> 0);
    *((unsigned int *)t38) = t70;
    t71 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t71 & 65535U);
    t72 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t72 & 65535U);
    t74 = (t0 + 1848U);
    t75 = *((char **)t74);
    memset(t73, 0, 8);
    t74 = (t73 + 4);
    t76 = (t75 + 4);
    t77 = *((unsigned int *)t75);
    t78 = (t77 >> 16);
    *((unsigned int *)t73) = t78;
    t79 = *((unsigned int *)t76);
    t80 = (t79 >> 16);
    *((unsigned int *)t74) = t80;
    t81 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t81 & 65535U);
    t82 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t82 & 65535U);
    xsi_vlogtype_concat(t63, 32, 32, 2U, t73, 16, t64, 16);
    xsi_vlogfile_write(1, 0, 0, ng5, 4, t0, (char)118, t40, 32, (char)118, t62, 32, (char)118, t63, 32);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t30, 0, 8);
    t2 = (t30 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t30) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t13 & 65535U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 65535U);
    t5 = (t0 + 1848U);
    t7 = *((char **)t5);
    memset(t31, 0, 8);
    t5 = (t31 + 4);
    t8 = (t7 + 4);
    t15 = *((unsigned int *)t7);
    t16 = (t15 >> 16);
    *((unsigned int *)t31) = t16;
    t17 = *((unsigned int *)t8);
    t18 = (t17 >> 16);
    *((unsigned int *)t5) = t18;
    t19 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t19 & 65535U);
    t20 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t20 & 65535U);
    xsi_vlogtype_concat(t6, 32, 32, 2U, t31, 16, t30, 16);
    t21 = (t0 + 2408);
    t22 = (t0 + 2408);
    t28 = (t22 + 72U);
    t29 = *((char **)t28);
    t32 = (t0 + 2408);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = (t0 + 1048U);
    t36 = *((char **)t35);
    memset(t73, 0, 8);
    t35 = (t73 + 4);
    t37 = (t36 + 4);
    t23 = *((unsigned int *)t36);
    t24 = (t23 >> 2);
    *((unsigned int *)t73) = t24;
    t25 = *((unsigned int *)t37);
    t26 = (t25 >> 2);
    *((unsigned int *)t35) = t26;
    t27 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t27 & 524287U);
    t45 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t45 & 524287U);
    xsi_vlog_generic_convert_array_indices(t63, t64, t29, t34, 2, 1, t73, 19, 2);
    t38 = (t63 + 4);
    t46 = *((unsigned int *)t38);
    t39 = (!(t46));
    t40 = (t64 + 4);
    t47 = *((unsigned int *)t40);
    t41 = (!(t47));
    t42 = (t39 && t41);
    if (t42 == 1)
        goto LAB46;

LAB47:    goto LAB44;

LAB46:    t48 = *((unsigned int *)t63);
    t49 = *((unsigned int *)t64);
    t43 = (t48 - t49);
    t44 = (t43 + 1);
    xsi_vlogvar_wait_assign_value(t21, t6, 0, *((unsigned int *)t64), t44, 0LL);
    goto LAB47;

LAB50:    t28 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB51;

LAB52:    xsi_set_current_line(52, ng0);

LAB55:    xsi_set_current_line(53, ng0);
    t32 = (t0 + 2008U);
    t33 = *((char **)t32);
    t32 = (t0 + 1048U);
    t34 = *((char **)t32);
    t32 = (t0 + 1848U);
    t35 = *((char **)t32);
    memset(t63, 0, 8);
    t32 = (t63 + 4);
    t36 = (t35 + 4);
    t45 = *((unsigned int *)t35);
    t46 = (t45 >> 16);
    *((unsigned int *)t63) = t46;
    t47 = *((unsigned int *)t36);
    t48 = (t47 >> 16);
    *((unsigned int *)t32) = t48;
    t49 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t49 & 65535U);
    t50 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t50 & 65535U);
    t37 = (t0 + 1208U);
    t38 = *((char **)t37);
    memset(t64, 0, 8);
    t37 = (t64 + 4);
    t40 = (t38 + 4);
    t51 = *((unsigned int *)t38);
    t52 = (t51 >> 0);
    *((unsigned int *)t64) = t52;
    t53 = *((unsigned int *)t40);
    t54 = (t53 >> 0);
    *((unsigned int *)t37) = t54;
    t55 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t55 & 65535U);
    t56 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t56 & 65535U);
    xsi_vlogtype_concat(t31, 32, 32, 2U, t64, 16, t63, 16);
    xsi_vlogfile_write(1, 0, 0, ng5, 4, t0, (char)118, t33, 32, (char)118, t34, 32, (char)118, t31, 32);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t30, 0, 8);
    t2 = (t30 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 16);
    *((unsigned int *)t30) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 16);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t13 & 65535U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 65535U);
    t5 = (t0 + 1208U);
    t7 = *((char **)t5);
    memset(t31, 0, 8);
    t5 = (t31 + 4);
    t8 = (t7 + 4);
    t15 = *((unsigned int *)t7);
    t16 = (t15 >> 0);
    *((unsigned int *)t31) = t16;
    t17 = *((unsigned int *)t8);
    t18 = (t17 >> 0);
    *((unsigned int *)t5) = t18;
    t19 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t19 & 65535U);
    t20 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t20 & 65535U);
    xsi_vlogtype_concat(t6, 32, 32, 2U, t31, 16, t30, 16);
    t21 = (t0 + 2408);
    t22 = (t0 + 2408);
    t28 = (t22 + 72U);
    t29 = *((char **)t28);
    t32 = (t0 + 2408);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = (t0 + 1048U);
    t36 = *((char **)t35);
    memset(t73, 0, 8);
    t35 = (t73 + 4);
    t37 = (t36 + 4);
    t23 = *((unsigned int *)t36);
    t24 = (t23 >> 2);
    *((unsigned int *)t73) = t24;
    t25 = *((unsigned int *)t37);
    t26 = (t25 >> 2);
    *((unsigned int *)t35) = t26;
    t27 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t27 & 524287U);
    t45 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t45 & 524287U);
    xsi_vlog_generic_convert_array_indices(t63, t64, t29, t34, 2, 1, t73, 19, 2);
    t38 = (t63 + 4);
    t46 = *((unsigned int *)t38);
    t39 = (!(t46));
    t40 = (t64 + 4);
    t47 = *((unsigned int *)t40);
    t41 = (!(t47));
    t42 = (t39 && t41);
    if (t42 == 1)
        goto LAB56;

LAB57:    goto LAB54;

LAB56:    t48 = *((unsigned int *)t63);
    t49 = *((unsigned int *)t64);
    t43 = (t48 - t49);
    t44 = (t43 + 1);
    xsi_vlogvar_wait_assign_value(t21, t6, 0, *((unsigned int *)t64), t44, 0LL);
    goto LAB57;

LAB60:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB61;

LAB62:    xsi_set_current_line(57, ng0);

LAB65:    xsi_set_current_line(58, ng0);
    t21 = (t0 + 1048U);
    t22 = *((char **)t21);
    memset(t30, 0, 8);
    t21 = (t30 + 4);
    t28 = (t22 + 4);
    t45 = *((unsigned int *)t22);
    t46 = (t45 >> 0);
    *((unsigned int *)t30) = t46;
    t47 = *((unsigned int *)t28);
    t48 = (t47 >> 0);
    *((unsigned int *)t21) = t48;
    t49 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t49 & 3U);
    t50 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t50 & 3U);
    t29 = ((char*)((ng1)));
    memset(t31, 0, 8);
    t32 = (t30 + 4);
    t33 = (t29 + 4);
    t51 = *((unsigned int *)t30);
    t52 = *((unsigned int *)t29);
    t53 = (t51 ^ t52);
    t54 = *((unsigned int *)t32);
    t55 = *((unsigned int *)t33);
    t56 = (t54 ^ t55);
    t57 = (t53 | t56);
    t58 = *((unsigned int *)t32);
    t59 = *((unsigned int *)t33);
    t60 = (t58 | t59);
    t61 = (~(t60));
    t67 = (t57 & t61);
    if (t67 != 0)
        goto LAB69;

LAB66:    if (t60 != 0)
        goto LAB68;

LAB67:    *((unsigned int *)t31) = 1;

LAB69:    t35 = (t31 + 4);
    t68 = *((unsigned int *)t35);
    t69 = (~(t68));
    t70 = *((unsigned int *)t31);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB70;

LAB71:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);
    t5 = ((char*)((ng3)));
    memset(t30, 0, 8);
    t7 = (t6 + 4);
    t8 = (t5 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t5);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t8);
    t20 = (t18 ^ t19);
    t23 = (t17 | t20);
    t24 = *((unsigned int *)t7);
    t25 = *((unsigned int *)t8);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t45 = (t23 & t27);
    if (t45 != 0)
        goto LAB79;

LAB76:    if (t26 != 0)
        goto LAB78;

LAB77:    *((unsigned int *)t30) = 1;

LAB79:    t22 = (t30 + 4);
    t46 = *((unsigned int *)t22);
    t47 = (~(t46));
    t48 = *((unsigned int *)t30);
    t49 = (t48 & t47);
    t50 = (t49 != 0);
    if (t50 > 0)
        goto LAB80;

LAB81:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);
    t5 = ((char*)((ng6)));
    memset(t30, 0, 8);
    t7 = (t6 + 4);
    t8 = (t5 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t5);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t8);
    t20 = (t18 ^ t19);
    t23 = (t17 | t20);
    t24 = *((unsigned int *)t7);
    t25 = *((unsigned int *)t8);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t45 = (t23 & t27);
    if (t45 != 0)
        goto LAB89;

LAB86:    if (t26 != 0)
        goto LAB88;

LAB87:    *((unsigned int *)t30) = 1;

LAB89:    t22 = (t30 + 4);
    t46 = *((unsigned int *)t22);
    t47 = (~(t46));
    t48 = *((unsigned int *)t30);
    t49 = (t48 & t47);
    t50 = (t49 != 0);
    if (t50 > 0)
        goto LAB90;

LAB91:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);
    t5 = ((char*)((ng7)));
    memset(t30, 0, 8);
    t7 = (t6 + 4);
    t8 = (t5 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t5);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t8);
    t20 = (t18 ^ t19);
    t23 = (t17 | t20);
    t24 = *((unsigned int *)t7);
    t25 = *((unsigned int *)t8);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t45 = (t23 & t27);
    if (t45 != 0)
        goto LAB99;

LAB96:    if (t26 != 0)
        goto LAB98;

LAB97:    *((unsigned int *)t30) = 1;

LAB99:    t22 = (t30 + 4);
    t46 = *((unsigned int *)t22);
    t47 = (~(t46));
    t48 = *((unsigned int *)t30);
    t49 = (t48 & t47);
    t50 = (t49 != 0);
    if (t50 > 0)
        goto LAB100;

LAB101:
LAB102:
LAB92:
LAB82:
LAB72:    goto LAB64;

LAB68:    t34 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB69;

LAB70:    xsi_set_current_line(58, ng0);

LAB73:    xsi_set_current_line(59, ng0);
    t36 = (t0 + 2008U);
    t37 = *((char **)t36);
    t36 = (t0 + 1048U);
    t38 = *((char **)t36);
    t36 = (t0 + 1208U);
    t40 = *((char **)t36);
    memset(t64, 0, 8);
    t36 = (t64 + 4);
    t62 = (t40 + 4);
    t77 = *((unsigned int *)t40);
    t78 = (t77 >> 0);
    *((unsigned int *)t64) = t78;
    t79 = *((unsigned int *)t62);
    t80 = (t79 >> 0);
    *((unsigned int *)t36) = t80;
    t81 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t81 & 255U);
    t82 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t82 & 255U);
    t65 = (t0 + 1848U);
    t66 = *((char **)t65);
    memset(t73, 0, 8);
    t65 = (t73 + 4);
    t74 = (t66 + 4);
    t83 = *((unsigned int *)t66);
    t84 = (t83 >> 8);
    *((unsigned int *)t73) = t84;
    t85 = *((unsigned int *)t74);
    t86 = (t85 >> 8);
    *((unsigned int *)t65) = t86;
    t87 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t87 & 16777215U);
    t88 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t88 & 16777215U);
    xsi_vlogtype_concat(t63, 32, 32, 2U, t73, 24, t64, 8);
    xsi_vlogfile_write(1, 0, 0, ng5, 4, t0, (char)118, t37, 32, (char)118, t38, 32, (char)118, t63, 32);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t30, 0, 8);
    t2 = (t30 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t30) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 1848U);
    t7 = *((char **)t5);
    memset(t31, 0, 8);
    t5 = (t31 + 4);
    t8 = (t7 + 4);
    t15 = *((unsigned int *)t7);
    t16 = (t15 >> 8);
    *((unsigned int *)t31) = t16;
    t17 = *((unsigned int *)t8);
    t18 = (t17 >> 8);
    *((unsigned int *)t5) = t18;
    t19 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t19 & 16777215U);
    t20 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t20 & 16777215U);
    xsi_vlogtype_concat(t6, 32, 32, 2U, t31, 24, t30, 8);
    t21 = (t0 + 2408);
    t22 = (t0 + 2408);
    t28 = (t22 + 72U);
    t29 = *((char **)t28);
    t32 = (t0 + 2408);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = (t0 + 1048U);
    t36 = *((char **)t35);
    memset(t73, 0, 8);
    t35 = (t73 + 4);
    t37 = (t36 + 4);
    t23 = *((unsigned int *)t36);
    t24 = (t23 >> 2);
    *((unsigned int *)t73) = t24;
    t25 = *((unsigned int *)t37);
    t26 = (t25 >> 2);
    *((unsigned int *)t35) = t26;
    t27 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t27 & 524287U);
    t45 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t45 & 524287U);
    xsi_vlog_generic_convert_array_indices(t63, t64, t29, t34, 2, 1, t73, 19, 2);
    t38 = (t63 + 4);
    t46 = *((unsigned int *)t38);
    t39 = (!(t46));
    t40 = (t64 + 4);
    t47 = *((unsigned int *)t40);
    t41 = (!(t47));
    t42 = (t39 && t41);
    if (t42 == 1)
        goto LAB74;

LAB75:    goto LAB72;

LAB74:    t48 = *((unsigned int *)t63);
    t49 = *((unsigned int *)t64);
    t43 = (t48 - t49);
    t44 = (t43 + 1);
    xsi_vlogvar_wait_assign_value(t21, t6, 0, *((unsigned int *)t64), t44, 0LL);
    goto LAB75;

LAB78:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB79;

LAB80:    xsi_set_current_line(62, ng0);

LAB83:    xsi_set_current_line(63, ng0);
    t28 = (t0 + 2008U);
    t29 = *((char **)t28);
    t28 = (t0 + 1048U);
    t32 = *((char **)t28);
    t28 = (t0 + 1848U);
    t33 = *((char **)t28);
    memset(t63, 0, 8);
    t28 = (t63 + 4);
    t34 = (t33 + 4);
    t51 = *((unsigned int *)t33);
    t52 = (t51 >> 0);
    *((unsigned int *)t63) = t52;
    t53 = *((unsigned int *)t34);
    t54 = (t53 >> 0);
    *((unsigned int *)t28) = t54;
    t55 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t55 & 255U);
    t56 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t56 & 255U);
    t35 = (t0 + 1208U);
    t36 = *((char **)t35);
    memset(t64, 0, 8);
    t35 = (t64 + 4);
    t37 = (t36 + 4);
    t57 = *((unsigned int *)t36);
    t58 = (t57 >> 8);
    *((unsigned int *)t64) = t58;
    t59 = *((unsigned int *)t37);
    t60 = (t59 >> 8);
    *((unsigned int *)t35) = t60;
    t61 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t61 & 255U);
    t67 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t67 & 255U);
    t38 = (t0 + 1848U);
    t40 = *((char **)t38);
    memset(t73, 0, 8);
    t38 = (t73 + 4);
    t62 = (t40 + 4);
    t68 = *((unsigned int *)t40);
    t69 = (t68 >> 16);
    *((unsigned int *)t73) = t69;
    t70 = *((unsigned int *)t62);
    t71 = (t70 >> 16);
    *((unsigned int *)t38) = t71;
    t72 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t72 & 65535U);
    t77 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t77 & 65535U);
    xsi_vlogtype_concat(t31, 32, 32, 3U, t73, 16, t64, 8, t63, 8);
    xsi_vlogfile_write(1, 0, 0, ng5, 4, t0, (char)118, t29, 32, (char)118, t32, 32, (char)118, t31, 32);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t30, 0, 8);
    t2 = (t30 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t30) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 1208U);
    t7 = *((char **)t5);
    memset(t31, 0, 8);
    t5 = (t31 + 4);
    t8 = (t7 + 4);
    t15 = *((unsigned int *)t7);
    t16 = (t15 >> 8);
    *((unsigned int *)t31) = t16;
    t17 = *((unsigned int *)t8);
    t18 = (t17 >> 8);
    *((unsigned int *)t5) = t18;
    t19 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t19 & 255U);
    t20 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t20 & 255U);
    t21 = (t0 + 1848U);
    t22 = *((char **)t21);
    memset(t63, 0, 8);
    t21 = (t63 + 4);
    t28 = (t22 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (t23 >> 16);
    *((unsigned int *)t63) = t24;
    t25 = *((unsigned int *)t28);
    t26 = (t25 >> 16);
    *((unsigned int *)t21) = t26;
    t27 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t27 & 65535U);
    t45 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t45 & 65535U);
    xsi_vlogtype_concat(t6, 32, 32, 3U, t63, 16, t31, 8, t30, 8);
    t29 = (t0 + 2408);
    t32 = (t0 + 2408);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = (t0 + 2408);
    t36 = (t35 + 64U);
    t37 = *((char **)t36);
    t38 = (t0 + 1048U);
    t40 = *((char **)t38);
    memset(t89, 0, 8);
    t38 = (t89 + 4);
    t62 = (t40 + 4);
    t46 = *((unsigned int *)t40);
    t47 = (t46 >> 2);
    *((unsigned int *)t89) = t47;
    t48 = *((unsigned int *)t62);
    t49 = (t48 >> 2);
    *((unsigned int *)t38) = t49;
    t50 = *((unsigned int *)t89);
    *((unsigned int *)t89) = (t50 & 524287U);
    t51 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t51 & 524287U);
    xsi_vlog_generic_convert_array_indices(t64, t73, t34, t37, 2, 1, t89, 19, 2);
    t65 = (t64 + 4);
    t52 = *((unsigned int *)t65);
    t39 = (!(t52));
    t66 = (t73 + 4);
    t53 = *((unsigned int *)t66);
    t41 = (!(t53));
    t42 = (t39 && t41);
    if (t42 == 1)
        goto LAB84;

LAB85:    goto LAB82;

LAB84:    t54 = *((unsigned int *)t64);
    t55 = *((unsigned int *)t73);
    t43 = (t54 - t55);
    t44 = (t43 + 1);
    xsi_vlogvar_wait_assign_value(t29, t6, 0, *((unsigned int *)t73), t44, 0LL);
    goto LAB85;

LAB88:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB89;

LAB90:    xsi_set_current_line(66, ng0);

LAB93:    xsi_set_current_line(67, ng0);
    t28 = (t0 + 2008U);
    t29 = *((char **)t28);
    t28 = (t0 + 1048U);
    t32 = *((char **)t28);
    t28 = (t0 + 1848U);
    t33 = *((char **)t28);
    memset(t63, 0, 8);
    t28 = (t63 + 4);
    t34 = (t33 + 4);
    t51 = *((unsigned int *)t33);
    t52 = (t51 >> 0);
    *((unsigned int *)t63) = t52;
    t53 = *((unsigned int *)t34);
    t54 = (t53 >> 0);
    *((unsigned int *)t28) = t54;
    t55 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t55 & 65535U);
    t56 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t56 & 65535U);
    t35 = (t0 + 1208U);
    t36 = *((char **)t35);
    memset(t64, 0, 8);
    t35 = (t64 + 4);
    t37 = (t36 + 4);
    t57 = *((unsigned int *)t36);
    t58 = (t57 >> 16);
    *((unsigned int *)t64) = t58;
    t59 = *((unsigned int *)t37);
    t60 = (t59 >> 16);
    *((unsigned int *)t35) = t60;
    t61 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t61 & 255U);
    t67 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t67 & 255U);
    t38 = (t0 + 1848U);
    t40 = *((char **)t38);
    memset(t73, 0, 8);
    t38 = (t73 + 4);
    t62 = (t40 + 4);
    t68 = *((unsigned int *)t40);
    t69 = (t68 >> 24);
    *((unsigned int *)t73) = t69;
    t70 = *((unsigned int *)t62);
    t71 = (t70 >> 24);
    *((unsigned int *)t38) = t71;
    t72 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t72 & 255U);
    t77 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t77 & 255U);
    xsi_vlogtype_concat(t31, 32, 32, 3U, t73, 8, t64, 8, t63, 16);
    xsi_vlogfile_write(1, 0, 0, ng5, 4, t0, (char)118, t29, 32, (char)118, t32, 32, (char)118, t31, 32);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t30, 0, 8);
    t2 = (t30 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t30) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t13 & 65535U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 65535U);
    t5 = (t0 + 1208U);
    t7 = *((char **)t5);
    memset(t31, 0, 8);
    t5 = (t31 + 4);
    t8 = (t7 + 4);
    t15 = *((unsigned int *)t7);
    t16 = (t15 >> 16);
    *((unsigned int *)t31) = t16;
    t17 = *((unsigned int *)t8);
    t18 = (t17 >> 16);
    *((unsigned int *)t5) = t18;
    t19 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t19 & 255U);
    t20 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t20 & 255U);
    t21 = (t0 + 1848U);
    t22 = *((char **)t21);
    memset(t63, 0, 8);
    t21 = (t63 + 4);
    t28 = (t22 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (t23 >> 24);
    *((unsigned int *)t63) = t24;
    t25 = *((unsigned int *)t28);
    t26 = (t25 >> 24);
    *((unsigned int *)t21) = t26;
    t27 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t27 & 255U);
    t45 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t45 & 255U);
    xsi_vlogtype_concat(t6, 32, 32, 3U, t63, 8, t31, 8, t30, 16);
    t29 = (t0 + 2408);
    t32 = (t0 + 2408);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = (t0 + 2408);
    t36 = (t35 + 64U);
    t37 = *((char **)t36);
    t38 = (t0 + 1048U);
    t40 = *((char **)t38);
    memset(t89, 0, 8);
    t38 = (t89 + 4);
    t62 = (t40 + 4);
    t46 = *((unsigned int *)t40);
    t47 = (t46 >> 2);
    *((unsigned int *)t89) = t47;
    t48 = *((unsigned int *)t62);
    t49 = (t48 >> 2);
    *((unsigned int *)t38) = t49;
    t50 = *((unsigned int *)t89);
    *((unsigned int *)t89) = (t50 & 524287U);
    t51 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t51 & 524287U);
    xsi_vlog_generic_convert_array_indices(t64, t73, t34, t37, 2, 1, t89, 19, 2);
    t65 = (t64 + 4);
    t52 = *((unsigned int *)t65);
    t39 = (!(t52));
    t66 = (t73 + 4);
    t53 = *((unsigned int *)t66);
    t41 = (!(t53));
    t42 = (t39 && t41);
    if (t42 == 1)
        goto LAB94;

LAB95:    goto LAB92;

LAB94:    t54 = *((unsigned int *)t64);
    t55 = *((unsigned int *)t73);
    t43 = (t54 - t55);
    t44 = (t43 + 1);
    xsi_vlogvar_wait_assign_value(t29, t6, 0, *((unsigned int *)t73), t44, 0LL);
    goto LAB95;

LAB98:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB99;

LAB100:    xsi_set_current_line(70, ng0);

LAB103:    xsi_set_current_line(71, ng0);
    t28 = (t0 + 2008U);
    t29 = *((char **)t28);
    t28 = (t0 + 1048U);
    t32 = *((char **)t28);
    t28 = (t0 + 1848U);
    t33 = *((char **)t28);
    memset(t63, 0, 8);
    t28 = (t63 + 4);
    t34 = (t33 + 4);
    t51 = *((unsigned int *)t33);
    t52 = (t51 >> 0);
    *((unsigned int *)t63) = t52;
    t53 = *((unsigned int *)t34);
    t54 = (t53 >> 0);
    *((unsigned int *)t28) = t54;
    t55 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t55 & 16777215U);
    t56 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t56 & 16777215U);
    t35 = (t0 + 1208U);
    t36 = *((char **)t35);
    memset(t64, 0, 8);
    t35 = (t64 + 4);
    t37 = (t36 + 4);
    t57 = *((unsigned int *)t36);
    t58 = (t57 >> 24);
    *((unsigned int *)t64) = t58;
    t59 = *((unsigned int *)t37);
    t60 = (t59 >> 24);
    *((unsigned int *)t35) = t60;
    t61 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t61 & 255U);
    t67 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t67 & 255U);
    xsi_vlogtype_concat(t31, 32, 32, 2U, t64, 8, t63, 24);
    xsi_vlogfile_write(1, 0, 0, ng5, 4, t0, (char)118, t29, 32, (char)118, t32, 32, (char)118, t31, 32);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t30, 0, 8);
    t2 = (t30 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t30) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t13 & 16777215U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 16777215U);
    t5 = (t0 + 1208U);
    t7 = *((char **)t5);
    memset(t31, 0, 8);
    t5 = (t31 + 4);
    t8 = (t7 + 4);
    t15 = *((unsigned int *)t7);
    t16 = (t15 >> 24);
    *((unsigned int *)t31) = t16;
    t17 = *((unsigned int *)t8);
    t18 = (t17 >> 24);
    *((unsigned int *)t5) = t18;
    t19 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t19 & 255U);
    t20 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t20 & 255U);
    xsi_vlogtype_concat(t6, 32, 32, 2U, t31, 8, t30, 24);
    t21 = (t0 + 2408);
    t22 = (t0 + 2408);
    t28 = (t22 + 72U);
    t29 = *((char **)t28);
    t32 = (t0 + 2408);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = (t0 + 1048U);
    t36 = *((char **)t35);
    memset(t73, 0, 8);
    t35 = (t73 + 4);
    t37 = (t36 + 4);
    t23 = *((unsigned int *)t36);
    t24 = (t23 >> 2);
    *((unsigned int *)t73) = t24;
    t25 = *((unsigned int *)t37);
    t26 = (t25 >> 2);
    *((unsigned int *)t35) = t26;
    t27 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t27 & 524287U);
    t45 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t45 & 524287U);
    xsi_vlog_generic_convert_array_indices(t63, t64, t29, t34, 2, 1, t73, 19, 2);
    t38 = (t63 + 4);
    t46 = *((unsigned int *)t38);
    t39 = (!(t46));
    t40 = (t64 + 4);
    t47 = *((unsigned int *)t40);
    t41 = (!(t47));
    t42 = (t39 && t41);
    if (t42 == 1)
        goto LAB104;

LAB105:    goto LAB102;

LAB104:    t48 = *((unsigned int *)t63);
    t49 = *((unsigned int *)t64);
    t43 = (t48 - t49);
    t44 = (t43 + 1);
    xsi_vlogvar_wait_assign_value(t21, t6, 0, *((unsigned int *)t64), t44, 0LL);
    goto LAB105;

}

static void Cont_76_2(char *t0)
{
    char t5[8];
    char t12[8];
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
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 3976U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 2408);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 2408);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t13 = (t0 + 1048U);
    t14 = *((char **)t13);
    memset(t12, 0, 8);
    t13 = (t12 + 4);
    t15 = (t14 + 4);
    t16 = *((unsigned int *)t14);
    t17 = (t16 >> 2);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t15);
    t19 = (t18 >> 2);
    *((unsigned int *)t13) = t19;
    t20 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t20 & 524287U);
    t21 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t21 & 524287U);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t12, 19, 2);
    t22 = (t0 + 4392);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t5, 8);
    xsi_driver_vfirst_trans(t22, 0, 31);
    t27 = (t0 + 4312);
    *((int *)t27) = 1;

LAB1:    return;
}


extern void work_m_01267286242441416288_2924402094_init()
{
	static char *pe[] = {(void *)Initial_32_0,(void *)Always_37_1,(void *)Cont_76_2};
	xsi_register_didat("work_m_01267286242441416288_2924402094", "isim/mipstest_isim_beh.exe.sim/work/m_01267286242441416288_2924402094.didat");
	xsi_register_executes(pe);
}
