# CVA6 Synthesis Script for Cadence Genus
# Adapted from Design Compiler script
# Copyright 2021 Thales DIS design services SAS

# Set design parameters
set DESIGN_NAME "cva6"
set ROOT "/var/tmp/designs/cva6"

puts "=========================================="
puts "TIMESTAMP-BASED VARIANT"
puts "=========================================="

set timestamp [clock format [clock seconds] -format "%Y%m%d_%H%M%S"]

puts "=========================================="
puts "Synthesis Run: ${timestamp}"
puts "=========================================="

# Enable multi-threading
set_db max_cpus_per_server 16
set_db super_thread_servers localhost           

puts "=========================================="
puts "Optimization Settings"
puts "=========================================="

#set_db syn_generic_effort high
#set_db syn_map_effort high
set_db syn_opt_effort high

# Clock and timing parameters (adjust as needed)
set PERIOD 50.0           
set INPUT_DELAY 1.0      
set OUTPUT_DELAY 1.0      

set clk_name main_clk
set clk_port clk_i
set clk_period $PERIOD
set input_delay $INPUT_DELAY
set output_delay $OUTPUT_DELAY

# Prevent ungrouping of hierarchical modules
set_db auto_ungroup none

# Output file names with timestamp
set REPORTS_DIR "reports_${timestamp}"
set RESULTS_DIR "results_${timestamp}"

puts "Reports Directory: ${REPORTS_DIR}"
puts "Results Directory: ${RESULTS_DIR}"

# Create output directories
sh mkdir -p ${REPORTS_DIR}
sh mkdir -p ${RESULTS_DIR}

puts "=========================================="
puts "Reading Technology Library"
puts "=========================================="

# Read Sky130 technology library
read_libs ${ROOT}/../../open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

puts "=========================================="
puts "Reading RTL Files"
puts "=========================================="
source cva6.f

puts "=========================================="
puts "Elaborating Design"
puts "=========================================="

elaborate cva6

# Check the top-level design name
set top_design [get_db designs]
puts "Top design elaborated: $top_design"

report_hierarchy > ${REPORTS_DIR}/hierarchy.rpt
# Set the current design
# set_db design:${DESIGN_NAME} 

# puts "=========================================="
# puts "Removing RVFI Verification Ports"
# puts "=========================================="

# # Remove rvfi_probes_o interface (contributes ~4k-8k ports)
# set rvfi_ports [get_ports -quiet rvfi_probes_o*]
# if {[sizeof_collection $rvfi_ports] > 0} {
#     puts "Found [sizeof_collection $rvfi_ports] RVFI ports - removing them"
#     delete_obj $rvfi_ports
#     puts "RVFI ports removed successfully"
# } else {
#     puts "No RVFI ports found"
# }

# # Verify port count after removal
# set remaining_ports [get_ports *]
# puts "Remaining top-level ports: [sizeof_collection $remaining_ports]"
puts "=========================================="
puts "Check Port Count"
puts "=========================================="

set all_ports [get_ports *]
puts "Total ports: [sizeof_collection $all_ports]"

# Search specifically for rvfi ports (should return 0)
set rvfi_ports [get_ports -quiet rvfi*]
puts "RVFI ports found: [sizeof_collection $rvfi_ports]"

puts "=========================================="
puts "Setting Design Constraints"
puts "=========================================="

# Create main clock
create_clock [get_ports ${clk_port}] -name ${clk_name} -period ${clk_period}

# Set don't touch on SRAM black boxes to keep them as is
set_db [get_cells -hier *i_tag_sram] .dont_touch true
set_db [get_cells -hier *i_data_sram] .dont_touch true
set_db [get_cells -hier *data_sram] .dont_touch true
set_db [get_cells -hier *tag_sram] .dont_touch true

# Constraint timing to/from SRAM black boxes
# Input delays from SRAMs
set sram_outputs [get_pins -hier -filter "name=~*sram*/rdata_o*"]
if {[sizeof_collection $sram_outputs] > 0} {
    set_input_delay -clock ${clk_name} -max ${input_delay} $sram_outputs
}

# Output delays to SRAMs
set sram_inputs [get_pins -hier -filter "name=~*sram*/addr_i*"]
if {[sizeof_collection $sram_inputs] > 0} {
    set_output_delay ${output_delay} -max -clock ${clk_name} $sram_inputs
}

# Set false path on RVFI probes (verification interface, not critical)
set rvfi_ports [get_ports -quiet rvfi_probes_o*]
if {[sizeof_collection $rvfi_ports] > 0} {
    set_false_path -to $rvfi_ports
}

# Set input/output delays for top-level ports
set all_in [all_inputs]
set all_out [all_outputs]
set clk_ports [get_ports ${clk_port}]

set input_ports [remove_from_collection $all_in $clk_ports]
set output_ports $all_out

if {[sizeof_collection $input_ports] > 0} {
    set_input_delay -clock ${clk_name} -max ${input_delay} $input_ports
}

if {[sizeof_collection $output_ports] > 0} {
    set_output_delay -clock ${clk_name} -max ${output_delay} $output_ports
}

# Set load on outputs (approximate standard cell load)
set_load 0.05 [all_outputs]

puts "=========================================="
puts "Checking Design"
puts "=========================================="

# Check design for issues
check_design -all  > ${REPORTS_DIR}/check_design.rpt

puts "=========================================="
puts "Running Generic Synthesis..."
puts "=========================================="
syn_generic

puts "=========================================="
puts "Cleaning Up Parameterized Module Names"
puts "=========================================="

# Find all designs with CVA6Cfg in the name
# set bad_modules [get_db designs -if {.name =~ "*CVA6Cfg*"}]

# if {[sizeof_collection $bad_modules] > 0} {
#     puts "Found [sizeof_collection $bad_modules] parameterized modules:"
#     foreach mod $bad_modules {
#         set mod_name [get_db $mod .name]
#         puts "  Module: $mod_name"
#     }
    
#     puts "\nUngrouping parameterized modules..."
#     foreach mod $bad_modules {
#         set mod_name [get_db $mod .name]
#         puts "  Ungrouping: $mod_name"
#         ungroup $mod_name -flatten
#     }
#     puts "Parameterized modules ungrouped successfully"
# } else {
#     puts "No parameterized modules found"
# }

report_timing > ${REPORTS_DIR}/timing_generic.rpt
report_area > ${REPORTS_DIR}/area_generic.rpt
report_qor > ${REPORTS_DIR}/qor_generic.rpt

# Technology mapping
puts "=========================================="
puts "Running Technology Mapping..."
puts "=========================================="
syn_map
report_timing > ${REPORTS_DIR}/timing_mapped.rpt
report_area > ${REPORTS_DIR}/area_mapped.rpt
report_qor > ${REPORTS_DIR}/qor_mapped.rpt

# Optimization
puts "=========================================="
puts "Running Optimization..."
puts "=========================================="
syn_opt

puts "=========================================="
puts "Final Reports"
puts "=========================================="

# Generate final reports
report_timing -nworst 10 > ${REPORTS_DIR}/timing_final.rpt
report_area  > ${REPORTS_DIR}/area_final.rpt
report_power > ${REPORTS_DIR}/power_final.rpt
report_gates > ${REPORTS_DIR}/gates_final.rpt
report_qor > ${REPORTS_DIR}/qor_final.rpt

# Detailed SRAM timing reports
# report_timing -through [get_pins -hier -filter "name=~*tag_sram*/rdata_o*"] >> ${REPORTS_DIR}/timing_final.rpt
# report_timing -through [get_pins -hier -filter "name=~*data_sram*/rdata_o*"] >> ${REPORTS_DIR}/timing_final.rpt

puts "=========================================="
puts "Writing Outputs"
puts "=========================================="

# Write outputs
write_hdl > ${RESULTS_DIR}/${DESIGN_NAME}_synth.v
write_sdc > ${RESULTS_DIR}/${DESIGN_NAME}_synth.sdc
write_sdf > ${RESULTS_DIR}/${DESIGN_NAME}_synth.sdf

# Write design database
write_design -innovus ${RESULTS_DIR}/${DESIGN_NAME}_synth.genus

puts "=========================================="
puts "Synthesis Complete!"
puts "=========================================="
puts "Timestamp: ${timestamp}"
puts "Reports saved to: ${REPORTS_DIR}"
puts "Results saved to: ${RESULTS_DIR}"
puts "=========================================="
