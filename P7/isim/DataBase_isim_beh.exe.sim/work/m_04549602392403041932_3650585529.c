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
static const char *ng0 = "/home/co-eda/P7/D_NPC.v";
static int ng1[] = {4, 0};
static int ng2[] = {16, 0};
static int ng3[] = {2, 0};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {16768U, 0U};
static unsigned int ng7[] = {1U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {2U, 0U};
static unsigned int ng10[] = {3U, 0U};



static void NetDecl_39_0(char *t0)
{
    char t4[8];
    char t5[8];
    char t8[8];
    char t11[8];
    char t20[8];
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 4280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t3, 32, t2, 32);
    t6 = (t0 + 1048U);
    t7 = *((char **)t6);
    t6 = ((char*)((ng2)));
    t9 = (t0 + 1048U);
    t10 = *((char **)t9);
    memset(t11, 0, 8);
    t9 = (t11 + 4);
    t12 = (t10 + 4);
    t13 = *((unsigned int *)t10);
    t14 = (t13 >> 15);
    t15 = (t14 & 1);
    *((unsigned int *)t11) = t15;
    t16 = *((unsigned int *)t12);
    t17 = (t16 >> 15);
    t18 = (t17 & 1);
    *((unsigned int *)t9) = t18;
    xsi_vlog_mul_concat(t8, 16, 1, t6, 1U, t11, 1);
    xsi_vlogtype_concat(t5, 32, 32, 2U, t8, 16, t7, 16);
    t19 = ((char*)((ng3)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_lshift(t20, 32, t5, 32, t19, 32);
    memset(t21, 0, 8);
    xsi_vlog_unsigned_add(t21, 32, t4, 32, t20, 32);
    t22 = (t0 + 5472);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t21, 8);
    xsi_driver_vfirst_trans(t22, 0, 31U);
    t27 = (t0 + 5344);
    *((int *)t27) = 1;

LAB1:    return;
}

static void NetDecl_40_1(char *t0)
{
    char t3[8];
    char t6[8];
    char *t1;
    char *t2;
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
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 4528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1528U);
    t7 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 28);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 28);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 15U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 15U);
    xsi_vlogtype_concat(t3, 32, 32, 3U, t6, 4, t5, 26, t2, 2);
    t15 = (t0 + 5536);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t3, 8);
    xsi_driver_vfirst_trans(t15, 0, 31U);
    t20 = (t0 + 5360);
    *((int *)t20) = 1;

LAB1:    return;
}

static void NetDecl_41_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 4776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 5600);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8);
    xsi_driver_vfirst_trans(t2, 0, 31U);
    t8 = (t0 + 5376);
    *((int *)t8) = 1;

LAB1:    return;
}

static void Cont_42_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t38[8];
    char t39[8];
    char t42[8];
    char t75[8];
    char t76[8];
    char t78[8];
    char t94[8];
    char t108[8];
    char t124[8];
    char t132[8];
    char t164[8];
    char t179[8];
    char t195[8];
    char t209[8];
    char t225[8];
    char t233[8];
    char t265[8];
    char t273[8];
    char t318[8];
    char t319[8];
    char t321[8];
    char t354[8];
    char t355[8];
    char t357[8];
    char t391[8];
    char *t1;
    char *t2;
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
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
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
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t77;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    char *t107;
    char *t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    char *t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    char *t131;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    char *t136;
    char *t137;
    char *t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    char *t146;
    char *t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    int t156;
    int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    char *t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    char *t171;
    char *t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    char *t177;
    char *t178;
    char *t180;
    char *t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    char *t194;
    char *t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    char *t202;
    char *t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    char *t207;
    char *t208;
    char *t210;
    char *t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;
    unsigned int t216;
    unsigned int t217;
    unsigned int t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    char *t224;
    char *t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    unsigned int t231;
    char *t232;
    unsigned int t234;
    unsigned int t235;
    unsigned int t236;
    char *t237;
    char *t238;
    char *t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    unsigned int t243;
    unsigned int t244;
    unsigned int t245;
    unsigned int t246;
    char *t247;
    char *t248;
    unsigned int t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    unsigned int t255;
    unsigned int t256;
    int t257;
    int t258;
    unsigned int t259;
    unsigned int t260;
    unsigned int t261;
    unsigned int t262;
    unsigned int t263;
    unsigned int t264;
    char *t266;
    unsigned int t267;
    unsigned int t268;
    unsigned int t269;
    unsigned int t270;
    unsigned int t271;
    char *t272;
    unsigned int t274;
    unsigned int t275;
    unsigned int t276;
    char *t277;
    char *t278;
    char *t279;
    unsigned int t280;
    unsigned int t281;
    unsigned int t282;
    unsigned int t283;
    unsigned int t284;
    unsigned int t285;
    unsigned int t286;
    char *t287;
    char *t288;
    unsigned int t289;
    unsigned int t290;
    unsigned int t291;
    int t292;
    unsigned int t293;
    unsigned int t294;
    unsigned int t295;
    int t296;
    unsigned int t297;
    unsigned int t298;
    unsigned int t299;
    unsigned int t300;
    char *t301;
    unsigned int t302;
    unsigned int t303;
    unsigned int t304;
    unsigned int t305;
    unsigned int t306;
    char *t307;
    char *t308;
    unsigned int t309;
    unsigned int t310;
    unsigned int t311;
    char *t312;
    char *t313;
    unsigned int t314;
    unsigned int t315;
    unsigned int t316;
    unsigned int t317;
    char *t320;
    char *t322;
    char *t323;
    unsigned int t324;
    unsigned int t325;
    unsigned int t326;
    unsigned int t327;
    unsigned int t328;
    unsigned int t329;
    unsigned int t330;
    unsigned int t331;
    unsigned int t332;
    unsigned int t333;
    unsigned int t334;
    unsigned int t335;
    char *t336;
    char *t337;
    unsigned int t338;
    unsigned int t339;
    unsigned int t340;
    unsigned int t341;
    unsigned int t342;
    char *t343;
    char *t344;
    unsigned int t345;
    unsigned int t346;
    unsigned int t347;
    char *t348;
    char *t349;
    unsigned int t350;
    unsigned int t351;
    unsigned int t352;
    unsigned int t353;
    char *t356;
    char *t358;
    char *t359;
    unsigned int t360;
    unsigned int t361;
    unsigned int t362;
    unsigned int t363;
    unsigned int t364;
    unsigned int t365;
    unsigned int t366;
    unsigned int t367;
    unsigned int t368;
    unsigned int t369;
    unsigned int t370;
    unsigned int t371;
    char *t372;
    char *t373;
    unsigned int t374;
    unsigned int t375;
    unsigned int t376;
    unsigned int t377;
    unsigned int t378;
    char *t379;
    char *t380;
    unsigned int t381;
    unsigned int t382;
    unsigned int t383;
    char *t384;
    char *t385;
    unsigned int t386;
    unsigned int t387;
    unsigned int t388;
    unsigned int t389;
    char *t390;
    char *t392;
    char *t393;
    char *t394;
    char *t395;
    char *t396;
    char *t397;

LAB0:    t1 = (t0 + 5024U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2488U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
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
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t34 = *((unsigned int *)t4);
    t35 = (~(t34));
    t36 = *((unsigned int *)t29);
    t37 = (t35 || t36);
    if (t37 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t38, 8);

LAB20:    t392 = (t0 + 5664);
    t393 = (t392 + 56U);
    t394 = *((char **)t393);
    t395 = (t394 + 56U);
    t396 = *((char **)t395);
    memcpy(t396, t3, 8);
    xsi_driver_vfirst_trans(t392, 0, 31);
    t397 = (t0 + 5392);
    *((int *)t397) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = ((char*)((ng6)));
    goto LAB13;

LAB14:    t40 = (t0 + 2648U);
    t41 = *((char **)t40);
    t40 = ((char*)((ng5)));
    memset(t42, 0, 8);
    t43 = (t41 + 4);
    t44 = (t40 + 4);
    t45 = *((unsigned int *)t41);
    t46 = *((unsigned int *)t40);
    t47 = (t45 ^ t46);
    t48 = *((unsigned int *)t43);
    t49 = *((unsigned int *)t44);
    t50 = (t48 ^ t49);
    t51 = (t47 | t50);
    t52 = *((unsigned int *)t43);
    t53 = *((unsigned int *)t44);
    t54 = (t52 | t53);
    t55 = (~(t54));
    t56 = (t51 & t55);
    if (t56 != 0)
        goto LAB24;

LAB21:    if (t54 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t42) = 1;

LAB24:    memset(t39, 0, 8);
    t58 = (t42 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t42);
    t62 = (t61 & t60);
    t63 = (t62 & 1U);
    if (t63 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t58) != 0)
        goto LAB27;

LAB28:    t65 = (t39 + 4);
    t66 = *((unsigned int *)t39);
    t67 = *((unsigned int *)t65);
    t68 = (t66 || t67);
    if (t68 > 0)
        goto LAB29;

LAB30:    t71 = *((unsigned int *)t39);
    t72 = (~(t71));
    t73 = *((unsigned int *)t65);
    t74 = (t72 || t73);
    if (t74 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t65) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t39) > 0)
        goto LAB35;

LAB36:    memcpy(t38, t75, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t33, 32, t38, 32);
    goto LAB20;

LAB18:    memcpy(t3, t33, 8);
    goto LAB20;

LAB23:    t57 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t39) = 1;
    goto LAB28;

LAB27:    t64 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB28;

LAB29:    t69 = (t0 + 1848U);
    t70 = *((char **)t69);
    goto LAB30;

LAB31:    t69 = (t0 + 2168U);
    t77 = *((char **)t69);
    t69 = ((char*)((ng7)));
    memset(t78, 0, 8);
    t79 = (t77 + 4);
    t80 = (t69 + 4);
    t81 = *((unsigned int *)t77);
    t82 = *((unsigned int *)t69);
    t83 = (t81 ^ t82);
    t84 = *((unsigned int *)t79);
    t85 = *((unsigned int *)t80);
    t86 = (t84 ^ t85);
    t87 = (t83 | t86);
    t88 = *((unsigned int *)t79);
    t89 = *((unsigned int *)t80);
    t90 = (t88 | t89);
    t91 = (~(t90));
    t92 = (t87 & t91);
    if (t92 != 0)
        goto LAB41;

LAB38:    if (t90 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t78) = 1;

LAB41:    memset(t94, 0, 8);
    t95 = (t78 + 4);
    t96 = *((unsigned int *)t95);
    t97 = (~(t96));
    t98 = *((unsigned int *)t78);
    t99 = (t98 & t97);
    t100 = (t99 & 1U);
    if (t100 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t95) != 0)
        goto LAB44;

LAB45:    t102 = (t94 + 4);
    t103 = *((unsigned int *)t94);
    t104 = *((unsigned int *)t102);
    t105 = (t103 || t104);
    if (t105 > 0)
        goto LAB46;

LAB47:    memcpy(t132, t94, 8);

LAB48:    memset(t164, 0, 8);
    t165 = (t132 + 4);
    t166 = *((unsigned int *)t165);
    t167 = (~(t166));
    t168 = *((unsigned int *)t132);
    t169 = (t168 & t167);
    t170 = (t169 & 1U);
    if (t170 != 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t165) != 0)
        goto LAB62;

LAB63:    t172 = (t164 + 4);
    t173 = *((unsigned int *)t164);
    t174 = (!(t173));
    t175 = *((unsigned int *)t172);
    t176 = (t174 || t175);
    if (t176 > 0)
        goto LAB64;

LAB65:    memcpy(t273, t164, 8);

LAB66:    memset(t76, 0, 8);
    t301 = (t273 + 4);
    t302 = *((unsigned int *)t301);
    t303 = (~(t302));
    t304 = *((unsigned int *)t273);
    t305 = (t304 & t303);
    t306 = (t305 & 1U);
    if (t306 != 0)
        goto LAB96;

LAB97:    if (*((unsigned int *)t301) != 0)
        goto LAB98;

LAB99:    t308 = (t76 + 4);
    t309 = *((unsigned int *)t76);
    t310 = *((unsigned int *)t308);
    t311 = (t309 || t310);
    if (t311 > 0)
        goto LAB100;

LAB101:    t314 = *((unsigned int *)t76);
    t315 = (~(t314));
    t316 = *((unsigned int *)t308);
    t317 = (t315 || t316);
    if (t317 > 0)
        goto LAB102;

LAB103:    if (*((unsigned int *)t308) > 0)
        goto LAB104;

LAB105:    if (*((unsigned int *)t76) > 0)
        goto LAB106;

LAB107:    memcpy(t75, t318, 8);

LAB108:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t38, 32, t70, 32, t75, 32);
    goto LAB37;

LAB35:    memcpy(t38, t70, 8);
    goto LAB37;

LAB40:    t93 = (t78 + 4);
    *((unsigned int *)t78) = 1;
    *((unsigned int *)t93) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t94) = 1;
    goto LAB45;

LAB44:    t101 = (t94 + 4);
    *((unsigned int *)t94) = 1;
    *((unsigned int *)t101) = 1;
    goto LAB45;

LAB46:    t106 = (t0 + 2328U);
    t107 = *((char **)t106);
    t106 = ((char*)((ng5)));
    memset(t108, 0, 8);
    t109 = (t107 + 4);
    t110 = (t106 + 4);
    t111 = *((unsigned int *)t107);
    t112 = *((unsigned int *)t106);
    t113 = (t111 ^ t112);
    t114 = *((unsigned int *)t109);
    t115 = *((unsigned int *)t110);
    t116 = (t114 ^ t115);
    t117 = (t113 | t116);
    t118 = *((unsigned int *)t109);
    t119 = *((unsigned int *)t110);
    t120 = (t118 | t119);
    t121 = (~(t120));
    t122 = (t117 & t121);
    if (t122 != 0)
        goto LAB52;

LAB49:    if (t120 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t108) = 1;

LAB52:    memset(t124, 0, 8);
    t125 = (t108 + 4);
    t126 = *((unsigned int *)t125);
    t127 = (~(t126));
    t128 = *((unsigned int *)t108);
    t129 = (t128 & t127);
    t130 = (t129 & 1U);
    if (t130 != 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t125) != 0)
        goto LAB55;

LAB56:    t133 = *((unsigned int *)t94);
    t134 = *((unsigned int *)t124);
    t135 = (t133 & t134);
    *((unsigned int *)t132) = t135;
    t136 = (t94 + 4);
    t137 = (t124 + 4);
    t138 = (t132 + 4);
    t139 = *((unsigned int *)t136);
    t140 = *((unsigned int *)t137);
    t141 = (t139 | t140);
    *((unsigned int *)t138) = t141;
    t142 = *((unsigned int *)t138);
    t143 = (t142 != 0);
    if (t143 == 1)
        goto LAB57;

LAB58:
LAB59:    goto LAB48;

LAB51:    t123 = (t108 + 4);
    *((unsigned int *)t108) = 1;
    *((unsigned int *)t123) = 1;
    goto LAB52;

LAB53:    *((unsigned int *)t124) = 1;
    goto LAB56;

LAB55:    t131 = (t124 + 4);
    *((unsigned int *)t124) = 1;
    *((unsigned int *)t131) = 1;
    goto LAB56;

LAB57:    t144 = *((unsigned int *)t132);
    t145 = *((unsigned int *)t138);
    *((unsigned int *)t132) = (t144 | t145);
    t146 = (t94 + 4);
    t147 = (t124 + 4);
    t148 = *((unsigned int *)t94);
    t149 = (~(t148));
    t150 = *((unsigned int *)t146);
    t151 = (~(t150));
    t152 = *((unsigned int *)t124);
    t153 = (~(t152));
    t154 = *((unsigned int *)t147);
    t155 = (~(t154));
    t156 = (t149 & t151);
    t157 = (t153 & t155);
    t158 = (~(t156));
    t159 = (~(t157));
    t160 = *((unsigned int *)t138);
    *((unsigned int *)t138) = (t160 & t158);
    t161 = *((unsigned int *)t138);
    *((unsigned int *)t138) = (t161 & t159);
    t162 = *((unsigned int *)t132);
    *((unsigned int *)t132) = (t162 & t158);
    t163 = *((unsigned int *)t132);
    *((unsigned int *)t132) = (t163 & t159);
    goto LAB59;

LAB60:    *((unsigned int *)t164) = 1;
    goto LAB63;

LAB62:    t171 = (t164 + 4);
    *((unsigned int *)t164) = 1;
    *((unsigned int *)t171) = 1;
    goto LAB63;

LAB64:    t177 = (t0 + 2168U);
    t178 = *((char **)t177);
    t177 = ((char*)((ng8)));
    memset(t179, 0, 8);
    t180 = (t178 + 4);
    t181 = (t177 + 4);
    t182 = *((unsigned int *)t178);
    t183 = *((unsigned int *)t177);
    t184 = (t182 ^ t183);
    t185 = *((unsigned int *)t180);
    t186 = *((unsigned int *)t181);
    t187 = (t185 ^ t186);
    t188 = (t184 | t187);
    t189 = *((unsigned int *)t180);
    t190 = *((unsigned int *)t181);
    t191 = (t189 | t190);
    t192 = (~(t191));
    t193 = (t188 & t192);
    if (t193 != 0)
        goto LAB70;

LAB67:    if (t191 != 0)
        goto LAB69;

LAB68:    *((unsigned int *)t179) = 1;

LAB70:    memset(t195, 0, 8);
    t196 = (t179 + 4);
    t197 = *((unsigned int *)t196);
    t198 = (~(t197));
    t199 = *((unsigned int *)t179);
    t200 = (t199 & t198);
    t201 = (t200 & 1U);
    if (t201 != 0)
        goto LAB71;

LAB72:    if (*((unsigned int *)t196) != 0)
        goto LAB73;

LAB74:    t203 = (t195 + 4);
    t204 = *((unsigned int *)t195);
    t205 = *((unsigned int *)t203);
    t206 = (t204 || t205);
    if (t206 > 0)
        goto LAB75;

LAB76:    memcpy(t233, t195, 8);

LAB77:    memset(t265, 0, 8);
    t266 = (t233 + 4);
    t267 = *((unsigned int *)t266);
    t268 = (~(t267));
    t269 = *((unsigned int *)t233);
    t270 = (t269 & t268);
    t271 = (t270 & 1U);
    if (t271 != 0)
        goto LAB89;

LAB90:    if (*((unsigned int *)t266) != 0)
        goto LAB91;

LAB92:    t274 = *((unsigned int *)t164);
    t275 = *((unsigned int *)t265);
    t276 = (t274 | t275);
    *((unsigned int *)t273) = t276;
    t277 = (t164 + 4);
    t278 = (t265 + 4);
    t279 = (t273 + 4);
    t280 = *((unsigned int *)t277);
    t281 = *((unsigned int *)t278);
    t282 = (t280 | t281);
    *((unsigned int *)t279) = t282;
    t283 = *((unsigned int *)t279);
    t284 = (t283 != 0);
    if (t284 == 1)
        goto LAB93;

LAB94:
LAB95:    goto LAB66;

LAB69:    t194 = (t179 + 4);
    *((unsigned int *)t179) = 1;
    *((unsigned int *)t194) = 1;
    goto LAB70;

LAB71:    *((unsigned int *)t195) = 1;
    goto LAB74;

LAB73:    t202 = (t195 + 4);
    *((unsigned int *)t195) = 1;
    *((unsigned int *)t202) = 1;
    goto LAB74;

LAB75:    t207 = (t0 + 2328U);
    t208 = *((char **)t207);
    t207 = ((char*)((ng5)));
    memset(t209, 0, 8);
    t210 = (t208 + 4);
    t211 = (t207 + 4);
    t212 = *((unsigned int *)t208);
    t213 = *((unsigned int *)t207);
    t214 = (t212 ^ t213);
    t215 = *((unsigned int *)t210);
    t216 = *((unsigned int *)t211);
    t217 = (t215 ^ t216);
    t218 = (t214 | t217);
    t219 = *((unsigned int *)t210);
    t220 = *((unsigned int *)t211);
    t221 = (t219 | t220);
    t222 = (~(t221));
    t223 = (t218 & t222);
    if (t223 != 0)
        goto LAB79;

LAB78:    if (t221 != 0)
        goto LAB80;

LAB81:    memset(t225, 0, 8);
    t226 = (t209 + 4);
    t227 = *((unsigned int *)t226);
    t228 = (~(t227));
    t229 = *((unsigned int *)t209);
    t230 = (t229 & t228);
    t231 = (t230 & 1U);
    if (t231 != 0)
        goto LAB82;

LAB83:    if (*((unsigned int *)t226) != 0)
        goto LAB84;

LAB85:    t234 = *((unsigned int *)t195);
    t235 = *((unsigned int *)t225);
    t236 = (t234 & t235);
    *((unsigned int *)t233) = t236;
    t237 = (t195 + 4);
    t238 = (t225 + 4);
    t239 = (t233 + 4);
    t240 = *((unsigned int *)t237);
    t241 = *((unsigned int *)t238);
    t242 = (t240 | t241);
    *((unsigned int *)t239) = t242;
    t243 = *((unsigned int *)t239);
    t244 = (t243 != 0);
    if (t244 == 1)
        goto LAB86;

LAB87:
LAB88:    goto LAB77;

LAB79:    *((unsigned int *)t209) = 1;
    goto LAB81;

LAB80:    t224 = (t209 + 4);
    *((unsigned int *)t209) = 1;
    *((unsigned int *)t224) = 1;
    goto LAB81;

LAB82:    *((unsigned int *)t225) = 1;
    goto LAB85;

LAB84:    t232 = (t225 + 4);
    *((unsigned int *)t225) = 1;
    *((unsigned int *)t232) = 1;
    goto LAB85;

LAB86:    t245 = *((unsigned int *)t233);
    t246 = *((unsigned int *)t239);
    *((unsigned int *)t233) = (t245 | t246);
    t247 = (t195 + 4);
    t248 = (t225 + 4);
    t249 = *((unsigned int *)t195);
    t250 = (~(t249));
    t251 = *((unsigned int *)t247);
    t252 = (~(t251));
    t253 = *((unsigned int *)t225);
    t254 = (~(t253));
    t255 = *((unsigned int *)t248);
    t256 = (~(t255));
    t257 = (t250 & t252);
    t258 = (t254 & t256);
    t259 = (~(t257));
    t260 = (~(t258));
    t261 = *((unsigned int *)t239);
    *((unsigned int *)t239) = (t261 & t259);
    t262 = *((unsigned int *)t239);
    *((unsigned int *)t239) = (t262 & t260);
    t263 = *((unsigned int *)t233);
    *((unsigned int *)t233) = (t263 & t259);
    t264 = *((unsigned int *)t233);
    *((unsigned int *)t233) = (t264 & t260);
    goto LAB88;

LAB89:    *((unsigned int *)t265) = 1;
    goto LAB92;

LAB91:    t272 = (t265 + 4);
    *((unsigned int *)t265) = 1;
    *((unsigned int *)t272) = 1;
    goto LAB92;

LAB93:    t285 = *((unsigned int *)t273);
    t286 = *((unsigned int *)t279);
    *((unsigned int *)t273) = (t285 | t286);
    t287 = (t164 + 4);
    t288 = (t265 + 4);
    t289 = *((unsigned int *)t287);
    t290 = (~(t289));
    t291 = *((unsigned int *)t164);
    t292 = (t291 & t290);
    t293 = *((unsigned int *)t288);
    t294 = (~(t293));
    t295 = *((unsigned int *)t265);
    t296 = (t295 & t294);
    t297 = (~(t292));
    t298 = (~(t296));
    t299 = *((unsigned int *)t279);
    *((unsigned int *)t279) = (t299 & t297);
    t300 = *((unsigned int *)t279);
    *((unsigned int *)t279) = (t300 & t298);
    goto LAB95;

LAB96:    *((unsigned int *)t76) = 1;
    goto LAB99;

LAB98:    t307 = (t76 + 4);
    *((unsigned int *)t76) = 1;
    *((unsigned int *)t307) = 1;
    goto LAB99;

LAB100:    t312 = (t0 + 2808U);
    t313 = *((char **)t312);
    goto LAB101;

LAB102:    t312 = (t0 + 2168U);
    t320 = *((char **)t312);
    t312 = ((char*)((ng9)));
    memset(t321, 0, 8);
    t322 = (t320 + 4);
    t323 = (t312 + 4);
    t324 = *((unsigned int *)t320);
    t325 = *((unsigned int *)t312);
    t326 = (t324 ^ t325);
    t327 = *((unsigned int *)t322);
    t328 = *((unsigned int *)t323);
    t329 = (t327 ^ t328);
    t330 = (t326 | t329);
    t331 = *((unsigned int *)t322);
    t332 = *((unsigned int *)t323);
    t333 = (t331 | t332);
    t334 = (~(t333));
    t335 = (t330 & t334);
    if (t335 != 0)
        goto LAB112;

LAB109:    if (t333 != 0)
        goto LAB111;

LAB110:    *((unsigned int *)t321) = 1;

LAB112:    memset(t319, 0, 8);
    t337 = (t321 + 4);
    t338 = *((unsigned int *)t337);
    t339 = (~(t338));
    t340 = *((unsigned int *)t321);
    t341 = (t340 & t339);
    t342 = (t341 & 1U);
    if (t342 != 0)
        goto LAB113;

LAB114:    if (*((unsigned int *)t337) != 0)
        goto LAB115;

LAB116:    t344 = (t319 + 4);
    t345 = *((unsigned int *)t319);
    t346 = *((unsigned int *)t344);
    t347 = (t345 || t346);
    if (t347 > 0)
        goto LAB117;

LAB118:    t350 = *((unsigned int *)t319);
    t351 = (~(t350));
    t352 = *((unsigned int *)t344);
    t353 = (t351 || t352);
    if (t353 > 0)
        goto LAB119;

LAB120:    if (*((unsigned int *)t344) > 0)
        goto LAB121;

LAB122:    if (*((unsigned int *)t319) > 0)
        goto LAB123;

LAB124:    memcpy(t318, t354, 8);

LAB125:    goto LAB103;

LAB104:    xsi_vlog_unsigned_bit_combine(t75, 32, t313, 32, t318, 32);
    goto LAB108;

LAB106:    memcpy(t75, t313, 8);
    goto LAB108;

LAB111:    t336 = (t321 + 4);
    *((unsigned int *)t321) = 1;
    *((unsigned int *)t336) = 1;
    goto LAB112;

LAB113:    *((unsigned int *)t319) = 1;
    goto LAB116;

LAB115:    t343 = (t319 + 4);
    *((unsigned int *)t319) = 1;
    *((unsigned int *)t343) = 1;
    goto LAB116;

LAB117:    t348 = (t0 + 2968U);
    t349 = *((char **)t348);
    goto LAB118;

LAB119:    t348 = (t0 + 2168U);
    t356 = *((char **)t348);
    t348 = ((char*)((ng10)));
    memset(t357, 0, 8);
    t358 = (t356 + 4);
    t359 = (t348 + 4);
    t360 = *((unsigned int *)t356);
    t361 = *((unsigned int *)t348);
    t362 = (t360 ^ t361);
    t363 = *((unsigned int *)t358);
    t364 = *((unsigned int *)t359);
    t365 = (t363 ^ t364);
    t366 = (t362 | t365);
    t367 = *((unsigned int *)t358);
    t368 = *((unsigned int *)t359);
    t369 = (t367 | t368);
    t370 = (~(t369));
    t371 = (t366 & t370);
    if (t371 != 0)
        goto LAB129;

LAB126:    if (t369 != 0)
        goto LAB128;

LAB127:    *((unsigned int *)t357) = 1;

LAB129:    memset(t355, 0, 8);
    t373 = (t357 + 4);
    t374 = *((unsigned int *)t373);
    t375 = (~(t374));
    t376 = *((unsigned int *)t357);
    t377 = (t376 & t375);
    t378 = (t377 & 1U);
    if (t378 != 0)
        goto LAB130;

LAB131:    if (*((unsigned int *)t373) != 0)
        goto LAB132;

LAB133:    t380 = (t355 + 4);
    t381 = *((unsigned int *)t355);
    t382 = *((unsigned int *)t380);
    t383 = (t381 || t382);
    if (t383 > 0)
        goto LAB134;

LAB135:    t386 = *((unsigned int *)t355);
    t387 = (~(t386));
    t388 = *((unsigned int *)t380);
    t389 = (t387 || t388);
    if (t389 > 0)
        goto LAB136;

LAB137:    if (*((unsigned int *)t380) > 0)
        goto LAB138;

LAB139:    if (*((unsigned int *)t355) > 0)
        goto LAB140;

LAB141:    memcpy(t354, t391, 8);

LAB142:    goto LAB120;

LAB121:    xsi_vlog_unsigned_bit_combine(t318, 32, t349, 32, t354, 32);
    goto LAB125;

LAB123:    memcpy(t318, t349, 8);
    goto LAB125;

LAB128:    t372 = (t357 + 4);
    *((unsigned int *)t357) = 1;
    *((unsigned int *)t372) = 1;
    goto LAB129;

LAB130:    *((unsigned int *)t355) = 1;
    goto LAB133;

LAB132:    t379 = (t355 + 4);
    *((unsigned int *)t355) = 1;
    *((unsigned int *)t379) = 1;
    goto LAB133;

LAB134:    t384 = (t0 + 3128U);
    t385 = *((char **)t384);
    goto LAB135;

LAB136:    t384 = (t0 + 1688U);
    t390 = *((char **)t384);
    t384 = ((char*)((ng1)));
    memset(t391, 0, 8);
    xsi_vlog_unsigned_add(t391, 32, t390, 32, t384, 32);
    goto LAB137;

LAB138:    xsi_vlog_unsigned_bit_combine(t354, 32, t385, 32, t391, 32);
    goto LAB142;

LAB140:    memcpy(t354, t385, 8);
    goto LAB142;

}


extern void work_m_04549602392403041932_3650585529_init()
{
	static char *pe[] = {(void *)NetDecl_39_0,(void *)NetDecl_40_1,(void *)NetDecl_41_2,(void *)Cont_42_3};
	xsi_register_didat("work_m_04549602392403041932_3650585529", "isim/DataBase_isim_beh.exe.sim/work/m_04549602392403041932_3650585529.didat");
	xsi_register_executes(pe);
}
