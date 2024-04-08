/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
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
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
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
extern int main(int, char**);
IKI_DLLESPEC extern void execute_130(char*, char *);
IKI_DLLESPEC extern void execute_131(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_341(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_137(char*, char *);
IKI_DLLESPEC extern void execute_138(char*, char *);
IKI_DLLESPEC extern void execute_139(char*, char *);
IKI_DLLESPEC extern void execute_140(char*, char *);
IKI_DLLESPEC extern void execute_141(char*, char *);
IKI_DLLESPEC extern void execute_300(char*, char *);
IKI_DLLESPEC extern void execute_301(char*, char *);
IKI_DLLESPEC extern void execute_176(char*, char *);
IKI_DLLESPEC extern void execute_177(char*, char *);
IKI_DLLESPEC extern void execute_178(char*, char *);
IKI_DLLESPEC extern void execute_181(char*, char *);
IKI_DLLESPEC extern void execute_182(char*, char *);
IKI_DLLESPEC extern void execute_183(char*, char *);
IKI_DLLESPEC extern void execute_184(char*, char *);
IKI_DLLESPEC extern void execute_23(char*, char *);
IKI_DLLESPEC extern void execute_24(char*, char *);
IKI_DLLESPEC extern void execute_25(char*, char *);
IKI_DLLESPEC extern void execute_203(char*, char *);
IKI_DLLESPEC extern void execute_204(char*, char *);
IKI_DLLESPEC extern void execute_205(char*, char *);
IKI_DLLESPEC extern void execute_206(char*, char *);
IKI_DLLESPEC extern void execute_133(char*, char *);
IKI_DLLESPEC extern void execute_134(char*, char *);
IKI_DLLESPEC extern void execute_135(char*, char *);
IKI_DLLESPEC extern void execute_136(char*, char *);
IKI_DLLESPEC extern void execute_342(char*, char *);
IKI_DLLESPEC extern void execute_343(char*, char *);
IKI_DLLESPEC extern void execute_344(char*, char *);
IKI_DLLESPEC extern void execute_345(char*, char *);
IKI_DLLESPEC extern void execute_346(char*, char *);
IKI_DLLESPEC extern void execute_347(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_89(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_99(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_114(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_124(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_134(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_139(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_149(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_159(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_164(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_169(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[61] = {(funcp)execute_130, (funcp)execute_131, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_341, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_137, (funcp)execute_138, (funcp)execute_139, (funcp)execute_140, (funcp)execute_141, (funcp)execute_300, (funcp)execute_301, (funcp)execute_176, (funcp)execute_177, (funcp)execute_178, (funcp)execute_181, (funcp)execute_182, (funcp)execute_183, (funcp)execute_184, (funcp)execute_23, (funcp)execute_24, (funcp)execute_25, (funcp)execute_203, (funcp)execute_204, (funcp)execute_205, (funcp)execute_206, (funcp)execute_133, (funcp)execute_134, (funcp)execute_135, (funcp)execute_136, (funcp)execute_342, (funcp)execute_343, (funcp)execute_344, (funcp)execute_345, (funcp)execute_346, (funcp)execute_347, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_54, (funcp)transaction_59, (funcp)transaction_64, (funcp)transaction_69, (funcp)transaction_74, (funcp)transaction_79, (funcp)transaction_84, (funcp)transaction_89, (funcp)transaction_94, (funcp)transaction_99, (funcp)transaction_104, (funcp)transaction_109, (funcp)transaction_114, (funcp)transaction_119, (funcp)transaction_124, (funcp)transaction_129, (funcp)transaction_134, (funcp)transaction_139, (funcp)transaction_144, (funcp)transaction_149, (funcp)transaction_154, (funcp)transaction_159, (funcp)transaction_164, (funcp)transaction_169};
const int NumRelocateId= 61;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/top_tb_func_synth/xsim.reloc",  (void **)funcTab, 61);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/top_tb_func_synth/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/top_tb_func_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_xsimdir_location_if_remapped(argc, argv)  ;
    iki_set_sv_type_file_path_name("xsim.dir/top_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/top_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/top_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
