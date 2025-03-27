if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name LIB_ff_-55\
   -timing\
    [list ${::IMEX::libVar}/mmmc/IBM_CMOS8HP_FF55.lib]
create_library_set -name LIB_ss_125\
   -timing\
    [list ${::IMEX::libVar}/mmmc/IBM_CMOS8HP_SS125.lib]
create_op_cond -name OP_ff_-55 -library_file ${::IMEX::libVar}/mmmc/IBM_CMOS8HP_FF55.lib -P 1 -V 1.6 -T -55
create_op_cond -name OP_ss_125 -library_file ${::IMEX::libVar}/mmmc/IBM_CMOS8HP_SS125.lib -P 1 -V 1.35 -T 125
create_rc_corner -name RC_min\
   -cap_table ${::IMEX::libVar}/mmmc/cmos8hp_7AM_41_FuncCmin.CapTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -qx_tech_file ${::IMEX::libVar}/mmmc/RC_min/cmos8hp_7AM_41_FuncCmax.tch
create_rc_corner -name RC_max\
   -cap_table ${::IMEX::libVar}/mmmc/cmos8hp_7AM_41_FuncCmax.CapTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -qx_tech_file ${::IMEX::libVar}/mmmc/RC_min/cmos8hp_7AM_41_FuncCmax.tch
create_delay_corner -name CORNER_ff_-55\
   -library_set LIB_ff_-55\
   -rc_corner RC_min
create_delay_corner -name CORNER_ss_125\
   -library_set LIB_ss_125\
   -rc_corner RC_max
create_constraint_mode -name syn_constraints\
   -sdc_files\
    [list ${::IMEX::libVar}/mmmc/AES.sdc]
create_analysis_view -name VIEW_ff_-55 -constraint_mode syn_constraints -delay_corner CORNER_ff_-55
create_analysis_view -name VIEW_ss_125 -constraint_mode syn_constraints -delay_corner CORNER_ss_125
set_analysis_view -setup [list VIEW_ss_125] -hold [list VIEW_ff_-55]
