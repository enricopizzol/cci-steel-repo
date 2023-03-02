// Generated by Cadence Genus(TM) Synthesis Solution GENUS15.22 - 15.20-s024_1
tclmode
set env(RC_VERSION) "GENUS15.22 - 15.20-s024_1"
vpxmode
set dofile abort exit
usage -auto -elapse
set log file logs_Dec15-13:50:22/rtl2intermediate.lec.log -replace
tclmode
set ver [lindex [split [lindex [get_version_info] 0] "-"] 0]
vpxmode
tclmode
set env(CDN_SYNTH_ROOT) /tools/cadence/rhel5/GENUS_15.22/tools.lnx86
set CDN_SYNTH_ROOT /tools/cadence/rhel5/GENUS_15.22/tools.lnx86
vpxmode
tclmode
if {$ver >= 08.10} {
  vpx set naming style rc
}
vpxmode
set naming rule "%s[%d]" -instance_array
set naming rule "%s_reg" -register -golden
set naming rule "%L.%s" "%L[%d].%s" "%s" -instance
set naming rule "%L.%s" "%L[%d].%s" "%s" -variable
set undefined cell black_box -noascend -both
set hdl options -VERILOG_INCLUDE_DIR "incdir:sep:src:cwd"
set undriven signal Z -golden

add search path -library . ./lib /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS5ST /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE 
read library -statetable -liberty -both  \
	/pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST/D_CELLS_MOSST_typ_1_80V_25C.lib \
	/pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS5ST/IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C.lib

delete search path -all
add search path -design . ../rtl
tclmode
if {$ver < 13.10} {
vpx read design   -define SYNTHESIS  -golden -lastmod -noelab -verilog2k \
	../rtl/riscv_steel_core.v
} else {
vpx read design   -define SYNTHESIS  -merge bbox -golden -lastmod -noelab -verilog2k \
	../rtl/riscv_steel_core.v
}
vpxmode

elaborate design -golden -root riscv_steel_core -rootonly

tclmode
if {$ver < 13.10} {
vpx read design -verilog -revised -lastmod -noelab \
	outputs_Dec15-13:50:22/riscv_steel_core_intermediate.v
} else {
vpx read design -verilog95 -revised -lastmod -noelab \
	outputs_Dec15-13:50:22/riscv_steel_core_intermediate.v
}
vpxmode

elaborate design -revised -root riscv_steel_core

tclmode
set ver [lindex [split [lindex [get_version_info] 0] "-"] 0]
if {$ver < 13.10} {
vpx substitute blackbox model -golden
}
vpxmode
report design data
report black box

uniquify -all -nolib
set flatten model -seq_constant -seq_constant_x_to 0
set flatten model -nodff_to_dlat_zero -nodff_to_dlat_feedback
set parallel option -threads 4 -license xl -norelease_license
set flatten model -gated_clock
set analyze option -auto

write hier_compare dofile outputs_Dec15-13:50:22/hier_rtl2intermediate.lec.do \
	-noexact_pin_match -constraint -usage -replace -balanced_extraction -input_output_pin_equivalence \
	-prepend_string "analyze datapath -module -verbose ; usage; analyze datapath  -verbose"
run hier_compare outputs_Dec15-13:50:22/hier_rtl2intermediate.lec.do -dynamic_hierarchy
// report hier_compare result -dynamicflattened
set system mode lec
tclmode
puts "No of diff points    = [get_compare_points -NONequivalent -count]"
if {[get_compare_points -NONequivalent -count] > 0} {
    puts "------------------------------------"
    puts "ERROR: Different Key Points detected"
    puts "------------------------------------"
#     foreach i [get_compare_points -NONequivalent] {
#         vpx report test vector [get_keypoint $i]
#         puts "     ----------------------------"
#     }
}
vpxmode
exit -force
