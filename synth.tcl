# --------
# Read in design file dependencies

# Automatically generated with bender
source cva6.f

# Read in sky130A lib typical corner 
read_libs /var/tmp/open_pdks/sky130/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

# Elaborate top level module
elaborate cva6

# Report loaded design
report_design

check_design

# Check if design is loaded
get_db designs

# Create clock 
create_clock -name clk -period 10 [get_ports clk_i]

# Generic synthesis
syn_generic

# Technology mapping to Sky130 cells
syn_map

# Optimize 
syn_opt
