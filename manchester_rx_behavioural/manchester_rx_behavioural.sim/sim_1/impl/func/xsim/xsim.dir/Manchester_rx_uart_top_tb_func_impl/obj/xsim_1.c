/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_852(char*, char *);
extern void execute_853(char*, char *);
extern void execute_854(char*, char *);
extern void execute_855(char*, char *);
extern void execute_1689(char*, char *);
extern void execute_1690(char*, char *);
extern void execute_1691(char*, char *);
extern void execute_1692(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_860(char*, char *);
extern void execute_861(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_862(char*, char *);
extern void execute_863(char*, char *);
extern void execute_864(char*, char *);
extern void execute_868(char*, char *);
extern void execute_869(char*, char *);
extern void execute_870(char*, char *);
extern void execute_15(char*, char *);
extern void execute_874(char*, char *);
extern void execute_18(char*, char *);
extern void execute_876(char*, char *);
extern void execute_877(char*, char *);
extern void execute_878(char*, char *);
extern void execute_879(char*, char *);
extern void execute_880(char*, char *);
extern void execute_881(char*, char *);
extern void execute_882(char*, char *);
extern void execute_883(char*, char *);
extern void execute_875(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_30(char*, char *);
extern void execute_887(char*, char *);
extern void execute_888(char*, char *);
extern void execute_886(char*, char *);
extern void execute_991(char*, char *);
extern void execute_992(char*, char *);
extern void execute_993(char*, char *);
extern void execute_994(char*, char *);
extern void execute_995(char*, char *);
extern void execute_996(char*, char *);
extern void execute_997(char*, char *);
extern void execute_998(char*, char *);
extern void execute_999(char*, char *);
extern void execute_1000(char*, char *);
extern void execute_1001(char*, char *);
extern void execute_1002(char*, char *);
extern void execute_119(char*, char *);
extern void execute_120(char*, char *);
extern void execute_121(char*, char *);
extern void execute_956(char*, char *);
extern void execute_957(char*, char *);
extern void execute_959(char*, char *);
extern void execute_960(char*, char *);
extern void execute_961(char*, char *);
extern void execute_962(char*, char *);
extern void execute_963(char*, char *);
extern void execute_964(char*, char *);
extern void execute_965(char*, char *);
extern void execute_966(char*, char *);
extern void execute_128(char*, char *);
extern void execute_1004(char*, char *);
extern void execute_1005(char*, char *);
extern void execute_1006(char*, char *);
extern void execute_1007(char*, char *);
extern void execute_1003(char*, char *);
extern void execute_189(char*, char *);
extern void execute_190(char*, char *);
extern void execute_371(char*, char *);
extern void execute_1193(char*, char *);
extern void execute_1194(char*, char *);
extern void execute_1195(char*, char *);
extern void execute_1532(char*, char *);
extern void execute_1534(char*, char *);
extern void execute_1536(char*, char *);
extern void execute_473(char*, char *);
extern void execute_474(char*, char *);
extern void execute_475(char*, char *);
extern void execute_1268(char*, char *);
extern void execute_1269(char*, char *);
extern void execute_1270(char*, char *);
extern void execute_1271(char*, char *);
extern void execute_1272(char*, char *);
extern void execute_1273(char*, char *);
extern void execute_1276(char*, char *);
extern void execute_1277(char*, char *);
extern void execute_1278(char*, char *);
extern void execute_1279(char*, char *);
extern void execute_857(char*, char *);
extern void execute_858(char*, char *);
extern void execute_859(char*, char *);
extern void execute_1693(char*, char *);
extern void execute_1694(char*, char *);
extern void execute_1695(char*, char *);
extern void execute_1696(char*, char *);
extern void execute_1697(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_698(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_699(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_700(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_701(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_702(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_703(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_704(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_705(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_706(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_707(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_708(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_709(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_710(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_711(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_726(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_727(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_728(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_729(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_730(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_731(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_732(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_733(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_734(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_735(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_736(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_737(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_760(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_761(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_97(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_101(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_113(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_139(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_143(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_185(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_189(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_193(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_197(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_201(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_205(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_213(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_264(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_268(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_272(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_352(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_356(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_360(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_391(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_395(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_399(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_403(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_426(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_438(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_478(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_482(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_486(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_490(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_494(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_498(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_502(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_506(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_518(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_522(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_526(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_530(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_534(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_538(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_542(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_546(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_570(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_574(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_578(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_582(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_586(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_671(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_839(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_843(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_873(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_877(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_881(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_893(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_997(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1001(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1005(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1009(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1013(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1017(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1021(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1025(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1029(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1033(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1037(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1041(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1045(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1094(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1098(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1102(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1106(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1114(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1122(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1134(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1214(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1218(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1222(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1226(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1230(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1234(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1238(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1242(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1246(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1250(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1254(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1266(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1270(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1274(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1278(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1282(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1286(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1290(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1294(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1298(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1302(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1306(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1310(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1314(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1318(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1322(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1326(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1330(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1334(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1338(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1342(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1346(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1350(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1354(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1358(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1362(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1366(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1370(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1374(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1378(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1382(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[252] = {(funcp)execute_852, (funcp)execute_853, (funcp)execute_854, (funcp)execute_855, (funcp)execute_1689, (funcp)execute_1690, (funcp)execute_1691, (funcp)execute_1692, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_860, (funcp)execute_861, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_862, (funcp)execute_863, (funcp)execute_864, (funcp)execute_868, (funcp)execute_869, (funcp)execute_870, (funcp)execute_15, (funcp)execute_874, (funcp)execute_18, (funcp)execute_876, (funcp)execute_877, (funcp)execute_878, (funcp)execute_879, (funcp)execute_880, (funcp)execute_881, (funcp)execute_882, (funcp)execute_883, (funcp)execute_875, (funcp)execute_21, (funcp)execute_22, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_26, (funcp)execute_27, (funcp)execute_30, (funcp)execute_887, (funcp)execute_888, (funcp)execute_886, (funcp)execute_991, (funcp)execute_992, (funcp)execute_993, (funcp)execute_994, (funcp)execute_995, (funcp)execute_996, (funcp)execute_997, (funcp)execute_998, (funcp)execute_999, (funcp)execute_1000, (funcp)execute_1001, (funcp)execute_1002, (funcp)execute_119, (funcp)execute_120, (funcp)execute_121, (funcp)execute_956, (funcp)execute_957, (funcp)execute_959, (funcp)execute_960, (funcp)execute_961, (funcp)execute_962, (funcp)execute_963, (funcp)execute_964, (funcp)execute_965, (funcp)execute_966, (funcp)execute_128, (funcp)execute_1004, (funcp)execute_1005, (funcp)execute_1006, (funcp)execute_1007, (funcp)execute_1003, (funcp)execute_189, (funcp)execute_190, (funcp)execute_371, (funcp)execute_1193, (funcp)execute_1194, (funcp)execute_1195, (funcp)execute_1532, (funcp)execute_1534, (funcp)execute_1536, (funcp)execute_473, (funcp)execute_474, (funcp)execute_475, (funcp)execute_1268, (funcp)execute_1269, (funcp)execute_1270, (funcp)execute_1271, (funcp)execute_1272, (funcp)execute_1273, (funcp)execute_1276, (funcp)execute_1277, (funcp)execute_1278, (funcp)execute_1279, (funcp)execute_857, (funcp)execute_858, (funcp)execute_859, (funcp)execute_1693, (funcp)execute_1694, (funcp)execute_1695, (funcp)execute_1696, (funcp)execute_1697, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_698, (funcp)transaction_699, (funcp)transaction_700, (funcp)transaction_701, (funcp)transaction_702, (funcp)transaction_703, (funcp)transaction_704, (funcp)transaction_705, (funcp)transaction_706, (funcp)transaction_707, (funcp)transaction_708, (funcp)transaction_709, (funcp)transaction_710, (funcp)transaction_711, (funcp)transaction_726, (funcp)transaction_727, (funcp)transaction_728, (funcp)transaction_729, (funcp)transaction_730, (funcp)transaction_731, (funcp)transaction_732, (funcp)transaction_733, (funcp)transaction_734, (funcp)transaction_735, (funcp)transaction_736, (funcp)transaction_737, (funcp)transaction_760, (funcp)transaction_761, (funcp)transaction_54, (funcp)transaction_58, (funcp)transaction_97, (funcp)transaction_101, (funcp)transaction_105, (funcp)transaction_109, (funcp)transaction_113, (funcp)transaction_139, (funcp)transaction_143, (funcp)transaction_147, (funcp)transaction_185, (funcp)transaction_189, (funcp)transaction_193, (funcp)transaction_197, (funcp)transaction_201, (funcp)transaction_205, (funcp)transaction_209, (funcp)transaction_213, (funcp)transaction_264, (funcp)transaction_268, (funcp)transaction_272, (funcp)transaction_352, (funcp)transaction_356, (funcp)transaction_360, (funcp)transaction_391, (funcp)transaction_395, (funcp)transaction_399, (funcp)transaction_403, (funcp)transaction_426, (funcp)transaction_438, (funcp)transaction_478, (funcp)transaction_482, (funcp)transaction_486, (funcp)transaction_490, (funcp)transaction_494, (funcp)transaction_498, (funcp)transaction_502, (funcp)transaction_506, (funcp)transaction_518, (funcp)transaction_522, (funcp)transaction_526, (funcp)transaction_530, (funcp)transaction_534, (funcp)transaction_538, (funcp)transaction_542, (funcp)transaction_546, (funcp)transaction_570, (funcp)transaction_574, (funcp)transaction_578, (funcp)transaction_582, (funcp)transaction_586, (funcp)transaction_671, (funcp)transaction_839, (funcp)transaction_843, (funcp)transaction_873, (funcp)transaction_877, (funcp)transaction_881, (funcp)transaction_893, (funcp)transaction_997, (funcp)transaction_1001, (funcp)transaction_1005, (funcp)transaction_1009, (funcp)transaction_1013, (funcp)transaction_1017, (funcp)transaction_1021, (funcp)transaction_1025, (funcp)transaction_1029, (funcp)transaction_1033, (funcp)transaction_1037, (funcp)transaction_1041, (funcp)transaction_1045, (funcp)transaction_1094, (funcp)transaction_1098, (funcp)transaction_1102, (funcp)transaction_1106, (funcp)transaction_1110, (funcp)transaction_1114, (funcp)transaction_1118, (funcp)transaction_1122, (funcp)transaction_1134, (funcp)transaction_1214, (funcp)transaction_1218, (funcp)transaction_1222, (funcp)transaction_1226, (funcp)transaction_1230, (funcp)transaction_1234, (funcp)transaction_1238, (funcp)transaction_1242, (funcp)transaction_1246, (funcp)transaction_1250, (funcp)transaction_1254, (funcp)transaction_1266, (funcp)transaction_1270, (funcp)transaction_1274, (funcp)transaction_1278, (funcp)transaction_1282, (funcp)transaction_1286, (funcp)transaction_1290, (funcp)transaction_1294, (funcp)transaction_1298, (funcp)transaction_1302, (funcp)transaction_1306, (funcp)transaction_1310, (funcp)transaction_1314, (funcp)transaction_1318, (funcp)transaction_1322, (funcp)transaction_1326, (funcp)transaction_1330, (funcp)transaction_1334, (funcp)transaction_1338, (funcp)transaction_1342, (funcp)transaction_1346, (funcp)transaction_1350, (funcp)transaction_1354, (funcp)transaction_1358, (funcp)transaction_1362, (funcp)transaction_1366, (funcp)transaction_1370, (funcp)transaction_1374, (funcp)transaction_1378, (funcp)transaction_1382};
const int NumRelocateId= 252;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Manchester_rx_uart_top_tb_func_impl/xsim.reloc",  (void **)funcTab, 252);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Manchester_rx_uart_top_tb_func_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/Manchester_rx_uart_top_tb_func_impl/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Manchester_rx_uart_top_tb_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Manchester_rx_uart_top_tb_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Manchester_rx_uart_top_tb_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
