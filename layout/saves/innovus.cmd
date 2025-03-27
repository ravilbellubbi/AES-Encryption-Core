#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Mar 23 21:30:42 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v18.10-p002_1 (64bit) 05/29/2018 19:19 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 18.10-p002_1 NR180522-1057/18_10-UB (database version 2.30, 418.7.1) {superthreading v1.46}
#@(#)CDS: AAE 18.10-p004 (64bit) 05/29/2018 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 18.10-p003_1 () May 15 2018 10:23:07 ( )
#@(#)CDS: SYNTECH 18.10-a012_1 () Apr 19 2018 01:27:21 ( )
#@(#)CDS: CPE v18.10-p005
#@(#)CDS: IQRC/TQRC 18.1.1-s118 (64bit) Fri Mar 23 17:23:45 PDT 2018 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_verilog ../../synthesis/netlists/AES.v
set init_top_cell AES
set init_pwr_net VDD
set init_gnd_net GND
create_constraint_mode \
    -name syn_constraints \
    -sdc_files {../../synthesis/netlists/AES.sdc}
set init_mmmc_file ../scripts/mmmc.tcl
set init_lef_file { /apps/design_kits/ibm_kits/IBM_IP/ibm_cmos8hp/std_cell/sc/v.20110613/lef/cmos8hp_7AM_tech.lef  /apps/design_kits/ibm_kits/IBM_IP/ibm_cmos8hp/std_cell/sc/v.20110613/lef/ibm_cmos8hp_sc.lef  }
init_design -setup VIEW_ss_125 -hold VIEW_ff_-55
saveDesign saves/AES_init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CORE -r 0.989711759204 0.25 15.0 15.0 15.0 15.0
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site CORE -r 0.985801217039 0.249972 15.2 15.2 15.2 15.2
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site CORE -r 0.973299748111 0.249877 15.2 15.2 15.2 15.2
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer MQ -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VDD} -type core_rings -follow core -layer {top MQ bottom MQ left M4 right M4} -width {top 5 bottom 5 left 5 right 5} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer MQ -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VDD} -type core_rings -follow core -layer {top MQ bottom MQ left M4 right M4} -width {top 5 bottom 5 left 5 right 5} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer MQ -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {GND VDD} -layer M4 -direction vertical -width 5 -spacing 0.36 -set_to_set_distance 100 -start_from left -start_offset 65 -stop_offset 70 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit MQ -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit MQ -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer MQ -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {GND VDD} -layer M4 -direction vertical -width 5 -spacing 0.36 -set_to_set_distance 100 -start_from top -start_offset 65 -stop_offset 70 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit MQ -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit MQ -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer MQ -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {GND VDD} -layer M4 -direction vertical -width 5 -spacing 0.36 -set_to_set_distance 100 -start_from top -start_offset 65 -stop_offset 70 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit MQ -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit MQ -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
selectWire 85.5600 1.6000 90.5600 801.6000 4 VDD
deselectAll
selectWire 85.5600 1.6000 90.5600 801.6000 4 VDD
deselectAll
selectWire 85.5600 1.6000 90.5600 801.6000 4 VDD
gui_select -rect {62.323 498.463 696.944 468.402}
gui_select -rect {696.944 468.402 678.574 475.082}
deselectAll
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer MQ -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {GND VDD} -layer M4 -direction vertical -width 5 -spacing 0.36 -set_to_set_distance 100 -start_from right -start 65 -stop 70 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit MQ -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit MQ -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
gui_select -rect {42.283 687.179 708.635 586.976}
gui_select -rect {708.635 586.976 72.344 642.087}
selectWire 685.5600 1.6000 690.5600 801.6000 4 VDD
deleteSelectedFromFPlan
selectWire 680.2000 8.4000 685.2000 794.8000 4 GND
deleteSelectedFromFPlan
selectWire 585.5600 1.6000 590.5600 801.6000 4 VDD
deselectAll
selectWire 585.5600 1.6000 590.5600 801.6000 4 VDD
deleteSelectedFromFPlan
selectWire 580.2000 8.4000 585.2000 794.8000 4 GND
deleteSelectedFromFPlan
selectWire 480.2000 8.4000 485.2000 794.8000 4 GND
deleteSelectedFromFPlan
selectWire 485.5600 1.6000 490.5600 801.6000 4 VDD
deleteSelectedFromFPlan
selectWire 385.5600 1.6000 390.5600 801.6000 4 VDD
deleteSelectedFromFPlan
selectWire 380.2000 8.4000 385.2000 794.8000 4 GND
deleteSelectedFromFPlan
selectWire 285.5600 1.6000 290.5600 801.6000 4 VDD
deleteSelectedFromFPlan
selectWire 280.2000 8.4000 285.2000 794.8000 4 GND
deleteSelectedFromFPlan
gui_select -rect {230.999 545.224 100.735 586.976}
selectWire 185.5600 1.6000 190.5600 801.6000 4 VDD
selectWire 185.5600 1.6000 190.5600 801.6000 4 VDD
deleteSelectedFromFPlan
selectWire 180.2000 8.4000 185.2000 794.8000 4 GND
deleteSelectedFromFPlan
selectWire 85.5600 1.6000 90.5600 801.6000 4 VDD
deselectAll
selectWire 85.5600 1.6000 90.5600 801.6000 4 VDD
deleteSelectedFromFPlan
selectWire 80.2000 8.4000 85.2000 794.8000 4 GND
deleteSelectedFromFPlan
selectWire 65.0000 8.4000 70.0000 794.8000 4 GND
deleteSelectedFromFPlan
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer MQ -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {GND VDD} -layer M4 -direction vertical -width 5 -spacing 0.36 -set_to_set_distance 100 -start_from right -start 70 -stop 75 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit MQ -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit MQ -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
selectWire 70.0000 8.4000 75.0000 794.8000 4 GND
deleteSelectedFromFPlan
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer MQ -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {GND VDD} -layer M4 -direction vertical -width 5 -spacing 0.36 -set_to_set_distance 100 -start_from right -start 390 -stop 395 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit MQ -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit MQ -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
selectWire 390.0000 8.4000 395.0000 794.8000 4 GND
deleteSelectedFromFPlan
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer MQ -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {GND VDD} -layer M4 -direction vertical -width 5 -spacing 0.36 -set_to_set_distance 100 -start_from right -start 395 -stop 400 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit MQ -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit MQ -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
selectWire 395.0000 8.4000 400.0000 794.8000 4 GND
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer MQ -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {GND VDD} -layer M4 -direction vertical -width 5 -spacing 0.36 -set_to_set_distance 100 -start_from right -start 400 -stop 405 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit MQ -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit MQ -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
deselectAll
selectWire 395.0000 8.4000 400.0000 794.8000 4 GND
deleteSelectedFromFPlan
selectWire 400.0000 8.4000 405.0000 794.8000 4 GND
deleteSelectedFromFPlan
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer MQ -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {GND VDD} -layer M4 -direction vertical -width 5 -spacing 0.36 -set_to_set_distance 100 -start_from right -start 405 -stop 410 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit MQ -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit MQ -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer MQ -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {GND VDD} -layer M4 -direction vertical -width 5 -spacing 0.36 -set_to_set_distance 100 -start_from right -start 405 -stop 410 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit MQ -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit MQ -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { ring stripe }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { M1(1) MQ(5) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { M1(1) MQ(5) } -nets { GND VDD } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { M1(1) MQ(5) }
setSrouteMode -viaConnectToShape { ring stripe }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { M1(1) MQ(5) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { M1(1) MQ(5) } -nets { GND VDD } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { M1(1) MQ(5) }
zoomIn
zoomIn
fit
fit
gui_select -rect {581.401 573.863 875.397 310.492}
deselectAll
zoomIn
fit
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.5 -pinDepth 0.5 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 2 -spreadType start -spacing 0.4 -start 20.0 0.0 -pin {{ciphertext_out[0]} {ciphertext_out[1]} {ciphertext_out[2]} {ciphertext_out[3]} {ciphertext_out[4]} {ciphertext_out[5]} {ciphertext_out[6]} {ciphertext_out[7]} {ciphertext_out[8]} {ciphertext_out[9]} {ciphertext_out[10]} {ciphertext_out[11]} {ciphertext_out[12]} {ciphertext_out[13]} {ciphertext_out[14]} {ciphertext_out[15]} {ciphertext_out[16]} {ciphertext_out[17]} {ciphertext_out[18]} {ciphertext_out[19]} {ciphertext_out[20]} {ciphertext_out[21]} {ciphertext_out[22]} {ciphertext_out[23]} {ciphertext_out[24]} {ciphertext_out[25]} {ciphertext_out[26]} {ciphertext_out[27]} {ciphertext_out[28]} {ciphertext_out[29]} {ciphertext_out[30]} {ciphertext_out[31]} {ciphertext_out[32]} {ciphertext_out[33]} {ciphertext_out[34]} {ciphertext_out[35]} {ciphertext_out[36]} {ciphertext_out[37]} {ciphertext_out[38]} {ciphertext_out[39]} {ciphertext_out[40]} {ciphertext_out[41]} {ciphertext_out[42]} {ciphertext_out[43]} {ciphertext_out[44]} {ciphertext_out[45]} {ciphertext_out[46]} {ciphertext_out[47]} {ciphertext_out[48]} {ciphertext_out[49]} {ciphertext_out[50]} {ciphertext_out[51]} {ciphertext_out[52]} {ciphertext_out[53]} {ciphertext_out[54]} {ciphertext_out[55]} {ciphertext_out[56]} {ciphertext_out[57]} {ciphertext_out[58]} {ciphertext_out[59]} {ciphertext_out[60]} {ciphertext_out[61]} {ciphertext_out[62]} {ciphertext_out[63]} {ciphertext_out[64]} {ciphertext_out[65]} {ciphertext_out[66]} {ciphertext_out[67]} {ciphertext_out[68]} {ciphertext_out[69]} {ciphertext_out[70]} {ciphertext_out[71]} {ciphertext_out[72]} {ciphertext_out[73]} {ciphertext_out[74]} {ciphertext_out[75]} {ciphertext_out[76]} {ciphertext_out[77]} {ciphertext_out[78]} {ciphertext_out[79]} {ciphertext_out[80]} {ciphertext_out[81]} {ciphertext_out[82]} {ciphertext_out[83]} {ciphertext_out[84]} {ciphertext_out[85]} {ciphertext_out[86]} {ciphertext_out[87]} {ciphertext_out[88]} {ciphertext_out[89]} {ciphertext_out[90]} {ciphertext_out[91]} {ciphertext_out[92]} {ciphertext_out[93]} {ciphertext_out[94]} {ciphertext_out[95]} {ciphertext_out[96]} {ciphertext_out[97]} {ciphertext_out[98]} {ciphertext_out[99]} {ciphertext_out[100]} {ciphertext_out[101]} {ciphertext_out[102]} {ciphertext_out[103]} {ciphertext_out[104]} {ciphertext_out[105]} {ciphertext_out[106]} {ciphertext_out[107]} {ciphertext_out[108]} {ciphertext_out[109]} {ciphertext_out[110]} {ciphertext_out[111]} {ciphertext_out[112]} {ciphertext_out[113]} {ciphertext_out[114]} {ciphertext_out[115]} {ciphertext_out[116]} {ciphertext_out[117]} {ciphertext_out[118]} {ciphertext_out[119]} {ciphertext_out[120]} {ciphertext_out[121]} {ciphertext_out[122]} {ciphertext_out[123]} {ciphertext_out[124]} {ciphertext_out[125]} {ciphertext_out[126]} {ciphertext_out[127]} clk encryption_done {key_in[0]} {key_in[1]} {key_in[2]} {key_in[3]} {key_in[4]} {key_in[5]} {key_in[6]} {key_in[7]} {key_in[8]} {key_in[9]} {key_in[10]} {key_in[11]} {key_in[12]} {key_in[13]} {key_in[14]} {key_in[15]} {key_in[16]} {key_in[17]} {key_in[18]} {key_in[19]} {key_in[20]} {key_in[21]} {key_in[22]} {key_in[23]} {key_in[24]} {key_in[25]} {key_in[26]} {key_in[27]} {key_in[28]} {key_in[29]} {key_in[30]} {key_in[31]} {key_in[32]} {key_in[33]} {key_in[34]} {key_in[35]} {key_in[36]} {key_in[37]} {key_in[38]} {key_in[39]} {key_in[40]} {key_in[41]} {key_in[42]} {key_in[43]} {key_in[44]} {key_in[45]} {key_in[46]} {key_in[47]} {key_in[48]} {key_in[49]} {key_in[50]} {key_in[51]} {key_in[52]} {key_in[53]} {key_in[54]} {key_in[55]} {key_in[56]} {key_in[57]} {key_in[58]} {key_in[59]} {key_in[60]} {key_in[61]} {key_in[62]} {key_in[63]} {key_in[64]} {key_in[65]} {key_in[66]} {key_in[67]} {key_in[68]} {key_in[69]} {key_in[70]} {key_in[71]} {key_in[72]} {key_in[73]} {key_in[74]} {key_in[75]} {key_in[76]} {key_in[77]} {key_in[78]} {key_in[79]} {key_in[80]} {key_in[81]} {key_in[82]} {key_in[83]} {key_in[84]} {key_in[85]} {key_in[86]} {key_in[87]} {key_in[88]} {key_in[89]} {key_in[90]} {key_in[91]} {key_in[92]} {key_in[93]} {key_in[94]} {key_in[95]} {key_in[96]} {key_in[97]} {key_in[98]} {key_in[99]} {key_in[100]} {key_in[101]} {key_in[102]} {key_in[103]} {key_in[104]} {key_in[105]} {key_in[106]} {key_in[107]} {key_in[108]} {key_in[109]} {key_in[110]} {key_in[111]} {key_in[112]} {key_in[113]} {key_in[114]} {key_in[115]} {key_in[116]} {key_in[117]} {key_in[118]} {key_in[119]} {key_in[120]} {key_in[121]} {key_in[122]} {key_in[123]} {key_in[124]} {key_in[125]} {key_in[126]} {key_in[127]} {plaintext_in[0]} {plaintext_in[1]} {plaintext_in[2]} {plaintext_in[3]} {plaintext_in[4]} {plaintext_in[5]} {plaintext_in[6]} {plaintext_in[7]} {plaintext_in[8]} {plaintext_in[9]} {plaintext_in[10]} {plaintext_in[11]} {plaintext_in[12]} {plaintext_in[13]} {plaintext_in[14]} {plaintext_in[15]} {plaintext_in[16]} {plaintext_in[17]} {plaintext_in[18]} {plaintext_in[19]} {plaintext_in[20]} {plaintext_in[21]} {plaintext_in[22]} {plaintext_in[23]} {plaintext_in[24]} {plaintext_in[25]} {plaintext_in[26]} {plaintext_in[27]} {plaintext_in[28]} {plaintext_in[29]} {plaintext_in[30]} {plaintext_in[31]} {plaintext_in[32]} {plaintext_in[33]} {plaintext_in[34]} {plaintext_in[35]} {plaintext_in[36]} {plaintext_in[37]} {plaintext_in[38]} {plaintext_in[39]} {plaintext_in[40]} {plaintext_in[41]} {plaintext_in[42]} {plaintext_in[43]} {plaintext_in[44]} {plaintext_in[45]} {plaintext_in[46]} {plaintext_in[47]} {plaintext_in[48]} {plaintext_in[49]} {plaintext_in[50]} {plaintext_in[51]} {plaintext_in[52]} {plaintext_in[53]} {plaintext_in[54]} {plaintext_in[55]} {plaintext_in[56]} {plaintext_in[57]} {plaintext_in[58]} {plaintext_in[59]} {plaintext_in[60]} {plaintext_in[61]} {plaintext_in[62]} {plaintext_in[63]} {plaintext_in[64]} {plaintext_in[65]} {plaintext_in[66]} {plaintext_in[67]} {plaintext_in[68]} {plaintext_in[69]} {plaintext_in[70]} {plaintext_in[71]} {plaintext_in[72]} {plaintext_in[73]} {plaintext_in[74]} {plaintext_in[75]} {plaintext_in[76]} {plaintext_in[77]} {plaintext_in[78]} {plaintext_in[79]} {plaintext_in[80]} {plaintext_in[81]} {plaintext_in[82]} {plaintext_in[83]} {plaintext_in[84]} {plaintext_in[85]} {plaintext_in[86]} {plaintext_in[87]} {plaintext_in[88]} {plaintext_in[89]} {plaintext_in[90]} {plaintext_in[91]} {plaintext_in[92]} {plaintext_in[93]} {plaintext_in[94]} {plaintext_in[95]} {plaintext_in[96]} {plaintext_in[97]} {plaintext_in[98]} {plaintext_in[99]} {plaintext_in[100]} {plaintext_in[101]} {plaintext_in[102]} {plaintext_in[103]} {plaintext_in[104]} {plaintext_in[105]} {plaintext_in[106]} {plaintext_in[107]} {plaintext_in[108]} {plaintext_in[109]} {plaintext_in[110]} {plaintext_in[111]} {plaintext_in[112]} {plaintext_in[113]} {plaintext_in[114]} {plaintext_in[115]} {plaintext_in[116]} {plaintext_in[117]} {plaintext_in[118]} {plaintext_in[119]} {plaintext_in[120]} {plaintext_in[121]} {plaintext_in[122]} {plaintext_in[123]} {plaintext_in[124]} {plaintext_in[125]} {plaintext_in[126]} {plaintext_in[127]} rst_n start_encryption}
setPinAssignMode -pinEditInBatch false
fit
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.5 -pinDepth 0.5 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 2 -spreadType start -spacing 0.8 -start 20.2 803.2 -pin {{ciphertext_out[0]} {ciphertext_out[1]} {ciphertext_out[2]} {ciphertext_out[3]} {ciphertext_out[4]} {ciphertext_out[5]} {ciphertext_out[6]} {ciphertext_out[7]} {ciphertext_out[8]} {ciphertext_out[9]} {ciphertext_out[10]} {ciphertext_out[11]} {ciphertext_out[12]} {ciphertext_out[13]} {ciphertext_out[14]} {ciphertext_out[15]} {ciphertext_out[16]} {ciphertext_out[17]} {ciphertext_out[18]} {ciphertext_out[19]} {ciphertext_out[20]} {ciphertext_out[21]} {ciphertext_out[22]} {ciphertext_out[23]} {ciphertext_out[24]} {ciphertext_out[25]} {ciphertext_out[26]} {ciphertext_out[27]} {ciphertext_out[28]} {ciphertext_out[29]} {ciphertext_out[30]} {ciphertext_out[31]} {ciphertext_out[32]} {ciphertext_out[33]} {ciphertext_out[34]} {ciphertext_out[35]} {ciphertext_out[36]} {ciphertext_out[37]} {ciphertext_out[38]} {ciphertext_out[39]} {ciphertext_out[40]} {ciphertext_out[41]} {ciphertext_out[42]} {ciphertext_out[43]} {ciphertext_out[44]} {ciphertext_out[45]} {ciphertext_out[46]} {ciphertext_out[47]} {ciphertext_out[48]} {ciphertext_out[49]} {ciphertext_out[50]} {ciphertext_out[51]} {ciphertext_out[52]} {ciphertext_out[53]} {ciphertext_out[54]} {ciphertext_out[55]} {ciphertext_out[56]} {ciphertext_out[57]} {ciphertext_out[58]} {ciphertext_out[59]} {ciphertext_out[60]} {ciphertext_out[61]} {ciphertext_out[62]} {ciphertext_out[63]} {ciphertext_out[64]} {ciphertext_out[65]} {ciphertext_out[66]} {ciphertext_out[67]} {ciphertext_out[68]} {ciphertext_out[69]} {ciphertext_out[70]} {ciphertext_out[71]} {ciphertext_out[72]} {ciphertext_out[73]} {ciphertext_out[74]} {ciphertext_out[75]} {ciphertext_out[76]} {ciphertext_out[77]} {ciphertext_out[78]} {ciphertext_out[79]} {ciphertext_out[80]} {ciphertext_out[81]} {ciphertext_out[82]} {ciphertext_out[83]} {ciphertext_out[84]} {ciphertext_out[85]} {ciphertext_out[86]} {ciphertext_out[87]} {ciphertext_out[88]} {ciphertext_out[89]} {ciphertext_out[90]} {ciphertext_out[91]} {ciphertext_out[92]} {ciphertext_out[93]} {ciphertext_out[94]} {ciphertext_out[95]} {ciphertext_out[96]} {ciphertext_out[97]} {ciphertext_out[98]} {ciphertext_out[99]} {ciphertext_out[100]} {ciphertext_out[101]} {ciphertext_out[102]} {ciphertext_out[103]} {ciphertext_out[104]} {ciphertext_out[105]} {ciphertext_out[106]} {ciphertext_out[107]} {ciphertext_out[108]} {ciphertext_out[109]} {ciphertext_out[110]} {ciphertext_out[111]} {ciphertext_out[112]} {ciphertext_out[113]} {ciphertext_out[114]} {ciphertext_out[115]} {ciphertext_out[116]} {ciphertext_out[117]} {ciphertext_out[118]} {ciphertext_out[119]} {ciphertext_out[120]} {ciphertext_out[121]} {ciphertext_out[122]} {ciphertext_out[123]} {ciphertext_out[124]} {ciphertext_out[125]} {ciphertext_out[126]} {ciphertext_out[127]} clk encryption_done {key_in[0]} {key_in[1]} {key_in[2]} {key_in[3]} {key_in[4]} {key_in[5]} {key_in[6]} {key_in[7]} {key_in[8]} {key_in[9]} {key_in[10]} {key_in[11]} {key_in[12]} {key_in[13]} {key_in[14]} {key_in[15]} {key_in[16]} {key_in[17]} {key_in[18]} {key_in[19]} {key_in[20]} {key_in[21]} {key_in[22]} {key_in[23]} {key_in[24]} {key_in[25]} {key_in[26]} {key_in[27]} {key_in[28]} {key_in[29]} {key_in[30]} {key_in[31]} {key_in[32]} {key_in[33]} {key_in[34]} {key_in[35]} {key_in[36]} {key_in[37]} {key_in[38]} {key_in[39]} {key_in[40]} {key_in[41]} {key_in[42]} {key_in[43]} {key_in[44]} {key_in[45]} {key_in[46]} {key_in[47]} {key_in[48]} {key_in[49]} {key_in[50]} {key_in[51]} {key_in[52]} {key_in[53]} {key_in[54]} {key_in[55]} {key_in[56]} {key_in[57]} {key_in[58]} {key_in[59]} {key_in[60]} {key_in[61]} {key_in[62]} {key_in[63]} {key_in[64]} {key_in[65]} {key_in[66]} {key_in[67]} {key_in[68]} {key_in[69]} {key_in[70]} {key_in[71]} {key_in[72]} {key_in[73]} {key_in[74]} {key_in[75]} {key_in[76]} {key_in[77]} {key_in[78]} {key_in[79]} {key_in[80]} {key_in[81]} {key_in[82]} {key_in[83]} {key_in[84]} {key_in[85]} {key_in[86]} {key_in[87]} {key_in[88]} {key_in[89]} {key_in[90]} {key_in[91]} {key_in[92]} {key_in[93]} {key_in[94]} {key_in[95]} {key_in[96]} {key_in[97]} {key_in[98]} {key_in[99]} {key_in[100]} {key_in[101]} {key_in[102]} {key_in[103]} {key_in[104]} {key_in[105]} {key_in[106]} {key_in[107]} {key_in[108]} {key_in[109]} {key_in[110]} {key_in[111]} {key_in[112]} {key_in[113]} {key_in[114]} {key_in[115]} {key_in[116]} {key_in[117]} {key_in[118]} {key_in[119]} {key_in[120]} {key_in[121]} {key_in[122]} {key_in[123]} {key_in[124]} {key_in[125]} {key_in[126]} {key_in[127]} {plaintext_in[0]} {plaintext_in[1]} {plaintext_in[2]} {plaintext_in[3]} {plaintext_in[4]} {plaintext_in[5]} {plaintext_in[6]} {plaintext_in[7]} {plaintext_in[8]} {plaintext_in[9]} {plaintext_in[10]} {plaintext_in[11]} {plaintext_in[12]} {plaintext_in[13]} {plaintext_in[14]} {plaintext_in[15]} {plaintext_in[16]} {plaintext_in[17]} {plaintext_in[18]} {plaintext_in[19]} {plaintext_in[20]} {plaintext_in[21]} {plaintext_in[22]} {plaintext_in[23]} {plaintext_in[24]} {plaintext_in[25]} {plaintext_in[26]} {plaintext_in[27]} {plaintext_in[28]} {plaintext_in[29]} {plaintext_in[30]} {plaintext_in[31]} {plaintext_in[32]} {plaintext_in[33]} {plaintext_in[34]} {plaintext_in[35]} {plaintext_in[36]} {plaintext_in[37]} {plaintext_in[38]} {plaintext_in[39]} {plaintext_in[40]} {plaintext_in[41]} {plaintext_in[42]} {plaintext_in[43]} {plaintext_in[44]} {plaintext_in[45]} {plaintext_in[46]} {plaintext_in[47]} {plaintext_in[48]} {plaintext_in[49]} {plaintext_in[50]} {plaintext_in[51]} {plaintext_in[52]} {plaintext_in[53]} {plaintext_in[54]} {plaintext_in[55]} {plaintext_in[56]} {plaintext_in[57]} {plaintext_in[58]} {plaintext_in[59]} {plaintext_in[60]} {plaintext_in[61]} {plaintext_in[62]} {plaintext_in[63]} {plaintext_in[64]} {plaintext_in[65]} {plaintext_in[66]} {plaintext_in[67]} {plaintext_in[68]} {plaintext_in[69]} {plaintext_in[70]} {plaintext_in[71]} {plaintext_in[72]} {plaintext_in[73]} {plaintext_in[74]} {plaintext_in[75]} {plaintext_in[76]} {plaintext_in[77]} {plaintext_in[78]} {plaintext_in[79]} {plaintext_in[80]} {plaintext_in[81]} {plaintext_in[82]} {plaintext_in[83]} {plaintext_in[84]} {plaintext_in[85]} {plaintext_in[86]} {plaintext_in[87]} {plaintext_in[88]} {plaintext_in[89]} {plaintext_in[90]} {plaintext_in[91]} {plaintext_in[92]} {plaintext_in[93]} {plaintext_in[94]} {plaintext_in[95]} {plaintext_in[96]} {plaintext_in[97]} {plaintext_in[98]} {plaintext_in[99]} {plaintext_in[100]} {plaintext_in[101]} {plaintext_in[102]} {plaintext_in[103]} {plaintext_in[104]} {plaintext_in[105]} {plaintext_in[106]} {plaintext_in[107]} {plaintext_in[108]} {plaintext_in[109]} {plaintext_in[110]} {plaintext_in[111]} {plaintext_in[112]} {plaintext_in[113]} {plaintext_in[114]} {plaintext_in[115]} {plaintext_in[116]} {plaintext_in[117]} {plaintext_in[118]} {plaintext_in[119]} {plaintext_in[120]} {plaintext_in[121]} {plaintext_in[122]} {plaintext_in[123]} {plaintext_in[124]} {plaintext_in[125]} {plaintext_in[126]} {plaintext_in[127]} rst_n start_encryption}
setPinAssignMode -pinEditInBatch false
setEndCapMode -cells NWSX -leftEdge NWSX -rightEdge NWSX
addEndCap -prefix ENDCAP
addWellTap -cell NWSX -prefix WELLTAP -cellInterval 30.0 -skipRow 1 -inRowOffset 15
addWellTap -cell NWSX -prefix WELLTAP -cellInterval 30.0 -skipRow 1 -startRowNum 2 -inRowOffset 30.0
saveFPlan ../floorplan/AES_floorplan.fp
saveDesign saves/AES_floorplan
setDesignMode -process 130
setPlaceMode -congEffort auto -timingDriven true -ignoreScan true
report_message -start_cmd
getRouteMode -maxRouteLayer -quiet
getRouteMode -user -maxRouteLayer
getPlaceMode -user -maxRouteLayer
getPlaceMode -quiet -adaptiveFlowMode
getPlaceMode -timingDriven -quiet
getPlaceMode -adaptive -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getDesignMode -quiet -siPrevention
getPlaceMode -exp_slack_driven -quiet
um::push_snapshot_stack
getDesignMode -quiet -flowEffort
getDesignMode -highSpeedCore -quiet
getPlaceMode -quiet -adaptive
set spgFlowInInitialPlace 1
getPlaceMode -sdpAlignment -quiet
getPlaceMode -softGuide -quiet
getPlaceMode -useSdpGroup -quiet
getPlaceMode -sdpAlignment -quiet
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -sdpPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -sdpPlace -quiet
getPlaceMode -groupHighLevelClkGate -quiet
setvar spgRptErrorForScanConnection 0
getPlaceMode -place_global_exp_allow_missing_scan_chain -quiet
getPlaceMode -place_check_library -quiet
getPlaceMode -trimView -quiet
getPlaceMode -expTrimOptBeforeTDGP -quiet
getPlaceMode -quiet -useNonTimingDeleteBufferTree
getPlaceMode -congEffort -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -congEffort -quiet
getPlaceMode -fp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -user -timingDriven
getPlaceMode -fastFp -quiet
getPlaceMode -clusterMode -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -ultraCongEffortFlow -quiet
getPlaceMode -forceTiming -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -powerDriven -quiet
getExtractRCMode -quiet -engine
getAnalysisMode -quiet -clkSrcPath
getAnalysisMode -quiet -clockPropagation
getAnalysisMode -quiet -cppr
setExtractRCMode -engine preRoute
setAnalysisMode -clkSrcPath false -clockPropagation forcedIdeal
getPlaceMode -exp_slack_driven -quiet
isAnalysisModeSetup
getPlaceMode -tdgpResetCteTG -quiet
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -enableDistPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -place_global_ignore_spare -quiet
set gpsPrivate::coegIsGbSignedSeedNl 0
getPlaceMode -enableDistPlace -quiet
getPlaceMode -quiet -expNewFastMode
setPlaceMode -expHiddenFastMode 1
setPlaceMode -ignoreScan 1
getPlaceMode -quiet -place_global_exp_auto_finish_floorplan
getPlaceMode -quiet -IOSlackAdjust
getPlaceMode -tdgpCteZeroDelayModeDelBuf -quiet
set_global timing_enable_zero_delay_analysis_mode true
getPlaceMode -quiet -useNonTimingDeleteBufferTree
getPlaceMode -quiet -prePlaceOptSimplifyNetlist
getPlaceMode -quiet -enablePrePlaceOptimizations
getPlaceMode -quiet -prePlaceOptDecloneInv
deleteBufferTree -decloneInv
getPlaceMode -tdgpCteZeroDelayModeDelBuf -quiet
set_global timing_enable_zero_delay_analysis_mode false
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -honorUserPathGroup -quiet
getAnalysisMode -quiet -honorClockDomains
set delaycal_use_default_delay_limit 101
set delaycal_default_net_delay 0
set delaycal_default_net_load 0
set delaycal_default_net_load_ignore_for_ilm 0
getAnalysisMode -clkSrcPath -quiet
getAnalysisMode -clockPropagation -quiet
getAnalysisMode -checkType -quiet
buildTimingGraph
getDelayCalMode -ignoreNetLoad -quiet
getDelayCalMode -ignoreNetLoad -quiet
setDelayCalMode -ignoreNetLoad true -quiet
get_global timing_enable_path_group_priority
get_global timing_constraint_enable_group_path_resetting
set_global timing_enable_path_group_priority false
set_global timing_constraint_enable_group_path_resetting false
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2reg_tmp.142802 -from {0x720 0x723} -to 0x724 -ignore_source_of_trigger_arc
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2out_tmp.142802 -from {0x727 0x72a} -to 0x72b -ignore_source_of_trigger_arc
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2reg_tmp.142802 -from 0x72d -to 0x72e
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2out_tmp.142802 -from 0x731 -to 0x732
setPathGroupOptions reg2reg_tmp.142802 -effortLevel high
reset_path_group -name reg2out_tmp.142802
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2out_tmp.142802
set_global _is_ipo_interactive_path_groups 0
setDelayCalMode -ignoreNetLoad false
set delaycal_use_default_delay_limit 1000
set delaycal_default_net_delay 1000ps
set delaycal_default_net_load 0.5pf
set delaycal_default_net_load_ignore_for_ilm 0
getPlaceMode -place_global_exp_ignore_low_effort_path_groups -quiet
getPlaceMode -exp_slack_driven -quiet
getAnalysisMode -quiet -honorClockDomains
setDelayCalMode -engine feDc
psp::embedded_egr_init_
psp::embedded_egr_term_
psp::embedded_egr_init_
psp::embedded_egr_term_
psp::embedded_egr_init_
psp::embedded_egr_term_
scanReorder
setDelayCalMode -engine aae
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
get_ccopt_clock_trees *
getPlaceMode -exp_insert_guidance_clock_tree -quiet
getPlaceMode -exp_cluster_based_high_fanout_buffering -quiet
getPlaceMode -quiet -cong_repair_commit_clock_net_route_attr
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
setPlaceMode -reset -improveWithPsp
getPlaceMode -quiet -debugGlobalPlace
getPlaceMode -congRepair -quiet
getPlaceMode -fp -quiet
getPlaceMode -congEffort -quiet
getPlaceMode -user -rplaceIncrNPClkGateAwareMode
getPlaceMode -user -congRepairMaxIter
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -rplaceIncrNPClkGateAwareMode 4
getPlaceMode -quiet -congEffort
setPlaceMode -congRepairMaxIter 1
getDesignMode -quiet -congEffort
getPlaceMode -quickCTS -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -congRepairForceTrialRoute -quiet
getPlaceMode -user -congRepairForceTrialRoute
setPlaceMode -congRepairForceTrialRoute true
um::enable_metric
congRepair
um::enable_metric
um::enable_metric
um::enable_metric
setPlaceMode -reset -congRepairForceTrialRoute
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -reset -rplaceIncrNPClkGateAwareMode
setPlaceMode -reset -congRepairMaxIter
getPlaceMode -congRepairCleanupPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -tdgpDumpStageTiming -quiet
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
getPlaceMode -exp_slack_driven -quiet
reset_path_group -name reg2reg_tmp.142802
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2reg_tmp.142802
set_global _is_ipo_interactive_path_groups 0
set_global timing_enable_path_group_priority $gpsPrivate::optSave_ctePGPriority
set_global timing_constraint_enable_group_path_resetting $gpsPrivate::optSave_ctePGResetting
getPlaceMode -trimView -quiet
getOptMode -quiet -viewOptPolishing
getOptMode -quiet -fastViewOpt
spInternalUse deleteViewOptManager
setAnalysisMode -clkSrcPath true -clockPropagation sdcControl
getPlaceMode -exp_slack_driven -quiet
setExtractRCMode -engine preRoute
setPlaceMode -reset -relaxSoftBlockageMode
setPlaceMode -ignoreScan true -quiet
setPlaceMode -reset -repairPlace
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -enableDistPlace -quiet
set gpsPrivate::coegIsGbSignedSeedNl 0
getPlaceMode -place_global_ignore_spare -quiet
getPlaceMode -enableDistPlace -quiet
setPlaceMode -reset -expHiddenFastMode
getPlaceMode -tcg2Pass -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -doRPlace -quiet
getPlaceMode -RTCPlaceDesignFlow -quiet
getPlaceMode -quickCTS -quiet
set spgFlowInInitialPlace 0
getPlaceMode -user -maxRouteLayer
spInternalUse TDGP resetIgnoreNetLoad
getPlaceMode -place_global_exp_balance_pipeline -quiet
getDesignMode -quiet -flowEffort
report_message -end_cmd
um::create_snapshot -name final -auto min
um::pop_snapshot_stack
um::create_snapshot -name place_design
getPlaceMode -exp_slack_driven -quiet
setDrawView place
saveDesign saves/AES_place
setAnalysisMode -analysisType onChipVariation -skew true -clockPropagation sdcControl
timeDesign -preCTS -idealClock -numPaths 10 -prefix preCTS -outDIR ../reports/AES/preCTS
setOptMode -yieldEffort none -effort high -maxDensity 0.95 -fixDRC true -fixFanoutLoad true -optimizeFF true -simplifyNetlist false -holdTargetSlack 0.0 -setupTargetSlack 0.0 -usefulSkew false
optDesign -preCTS -drv -outDir ../reports/AES/preCTS_opt_timing
create_ccopt_clock_tree_spec -file AES.ctstch
set_ccopt_property buffer_cells {CLK_I CLK_K CLK_M CLK_O CLK_Q}
set_ccopt_property inverter_cells {CLKI_I CLKI_K CLKI_M CLKI_O CLKI_Q}
ccopt_design -prefix CTS -outDir ../reports/AES/CTS
saveDesign saves/AES_cts
update_constraint_mode \
    -name syn_constraints \
    -sdc_files {../constraints/program_counter_postcts.sdc}
optDesign -postCTS -hold -outDir ../reports/AES/postCTS_opt_timing
timeDesign -postCTS -numPaths 10 -prefix postCTS -outDIR ../reports/AES/postCTS
timeDesign -postCTS -hold -numPaths 10 -prefix postCTS_hold -outDIR ../reports/AES/postCTS_hold
saveDesign saves/AES_postcts
routeDesign
setExtractRCMode -engine postRoute -effortLevel medium
timeDesign -postCTS -numPaths 10 -prefix postRoute -outDIR ../reports/AES/postRoute
timeDesign -postCTS -hold -numPaths 10 -prefix postRoute_hold -outDIR ../reports/AES/postRoute_hold
optDesign -postRoute -outDir ../reports/AES/postRouteOpt
optDesign -postRoute -hold -outDir ../reports/AES/postRouteOpt_hold
saveDesign saves/AES_route
addDeCapCellCandidates DECAP_C 7.775
addDeCap -totCap 100 -addFixAttr -prefix DECAP -cells DECAP_C
setFillerMode -corePrefix FILLER -core {FILL1 FILL2}
addFiller -cell {FILL1 FILL2} -prefix FILLER -markFixed
globalNetConnect VDD -type pgpin -pin VDD -override -verbose
globalNetConnect GND -type pgpin -pin GND -override -verbose
verify_connectivity
verify_drc
timeDesign -postRoute -numPaths 10 -prefix final -outDIR ../reports/AES/final
timeDesign -postRoute -hold -numPaths 10
fit
setEndCapMode -cells NWSX -leftEdge NWSX -rightEdge NWSX
addEndCap -prefix ENDCAP
addWellTap -cell NWSX -prefix WELLTAP -cellInterval 30.0 -skipRow 1 -inRowOffset 15
addWellTap -cell NWSX -prefix WELLTAP -cellInterval 30.0 -skipRow 1 -startRowNum 2 -inRowOffset 30.0
saveFPlan ../floorplan/AES_floorplan.fp
fit
fit
zoomOut
fit
setDrawView fplan
setDrawView fplan
setDrawView ameba
setDrawView fplan
setDrawView place
loadWorkspace -name Amoeba
loadWorkspace -name Amoeba
loadWorkspace -name Floorplan
loadWorkspace -name Physical
fit
fit
fit
ungroup
ungroup
ungroup
ungroup
ungroup
loadWorkspace -name Amoeba
loadWorkspace -name Floorplan
fit
loadWorkspace -name Amoeba
fit
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
fit
loadWorkspace -name {Design Browser + Physical}
loadWorkspace -name Physical
ui_view_box
ui_view_box
dbquery -area {-349.836 -40.16 1668.061 870.181} -objType inst
dbquery -area {-349.836 -40.16 1668.061 870.181} -objType regular
dbquery -area {-349.836 -40.16 1668.061 870.181} -objType special
loadWorkspace -name Physical
loadWorkspace -name Amoeba
loadWorkspace -name Physical
setDrawView fplan
setDrawView ameba
setDrawView place
ui_view_box
win
uiSetTool select
dbquery -area {1013.309 46.614 401.156 308.515} -objType inst
dbquery -area {1013.309 46.614 401.156 308.515} -objType regular
dbquery -area {1013.309 46.614 401.156 308.515} -objType special
setDrawView ameba
setDrawView place
fit
setDrawView ameba
setDrawView fplan
setDrawView place
setLayerPreference layerBlk -isVisible 1
setLayerPreference layerBlk -isSelectable 1
ctd_win -id ctd_window
setDrawView ameba
fit
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomSelected
fit
zoomSelected
gui_select -rect {-69.372 759.142 174.094 570.801}
setDrawView place
setDrawView fplan
setDrawView ameba
setDrawView place
setDrawView ameba
loadWorkspace -name {Design Browser + Physical}
setDrawView ameba
setDrawView fplan
setDrawView ameba
setDrawView place
fit
ctd_win -id ctd_window -unit_delay
uiSetTool addVia
setDrawView ameba
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia 210.077 579.988
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia 366.262 379.397
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia 233.045 590.707
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia 591.353 339.585
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia 347.888 527.927
fit
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia 40.11 665.737
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia -47.17 645.831
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia 122.797 555.489
getIoFlowFlag
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia 239.17 765.267
setDrawView fplan
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia 911.38 403.897
setDrawView ameba
setDrawView place
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia -47.17 645.831
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deleteSelectedFromFPlan
uiSetTool addVia
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia -39.514 642.769
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia -100.763 475.865
set layerNameNoAbbreviation 0
getEditMode -quiet -via_cut_layer
set layerNameNoAbbreviation 1
editAddVia -158.95 353.366
undo
undo
undo
undo
undo
undo
undo
undo
undo
undo
undo
undo
undo
undo
fit
setDrawView place
ctd_win -id layout_window -unit_delay
ctd_win -id layout_window -unit_delay
setDrawView ameba
setDrawView fplan
setDrawView place
setDrawView ameba
setDrawView fplan
setDrawView ameba
setDrawView place
ctd_win -id layout_window -title work -unit_delay
setLayerPreference node_gird -isVisible 1
setDrawView ameba
setDrawView place
ctd_win -id layout_window -title work -unit_delay
selectObject Net clk
zoomSelected
deselectObject Net clk
selectObject Net clk
zoomSelected
deselectObject Net clk
selectObject Net clk
zoomSelected
deselectObject Net clk
selectObject Net clk
zoomSelected
setDrawView ameba
setDrawView place
setDrawView ameba
setDrawView fplan
redo
redo
redo
redo
redo
redo
redo
redo
redo
redo
redo
undo
undo
undo
undo
undo
undo
undo
undo
undo
undo
undo
fit
setDrawView ameba
setDrawView place
setDrawView place
fit
redo
redo
redo
redo
redo
redo
redo
redo
redo
redo
redo
redo
redo
redo
undo
undo
undo
undo
undo
undo
undo
undo
undo
undo
undo
undo
undo
undo
setDrawView ameba
getIoFlowFlag
loadWorkspace -name Amoeba
ctd_win -id layout_window -title work -unit_delay
deselectObject Net clk
selectObject Net clk
zoomSelected
deselectObject Net clk
selectObject Net clk
zoomSelected
deselectObject Net clk
selectObject Net clk
zoomSelected
deselectObject Net clk
selectObject Net clk
zoomSelected
deselectObject Net clk
selectObject Net clk
zoomSelected
deselectObject Net clk
selectObject Net clk
zoomSelected
getIoFlowFlag
setDrawView place
getIoFlowFlag
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix AES_postCTS -outDir timingReports
ctd_win -id layout_window -title work -unit_delay
