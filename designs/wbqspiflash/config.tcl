
# Design

# User config
set ::env(DESIGN_NAME) wbqspiflash

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(OPENLANE_ROOT)/designs/wbqspiflash/src/*.v]

# Fill this
set ::env(CLOCK_PERIOD) "1.5"
set ::env(CLOCK_PORT) "i_clk"

set ::env(CLOCK_NET) $::env(CLOCK_PORT)


set filename $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(PDK_VARIANT)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}