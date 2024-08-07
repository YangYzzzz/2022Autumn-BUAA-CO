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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_15897807317177726913_4066630463_init();
    work_m_05721580988168005552_1733832700_init();
    work_m_17822950250544001172_0467708899_init();
    work_m_09513564894330266086_0757879789_init();
    work_m_15327207545138962736_0558981897_init();
    work_m_03817375268560316601_2620361887_init();
    work_m_00180530761835639924_1621229167_init();
    work_m_17078749060101628586_1785967555_init();
    work_m_11309454960926419292_1054493592_init();
    work_m_02989060045089274026_0886308060_init();
    work_m_01267286242441416288_2924402094_init();
    work_m_13288096240549720574_4284247170_init();
    work_m_07245038350157071534_1047085150_init();
    work_m_07649339879999856396_3114753726_init();
    work_m_06207155979363736150_3877310806_init();
    work_m_05916939032839477016_3394146599_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_05916939032839477016_3394146599");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
