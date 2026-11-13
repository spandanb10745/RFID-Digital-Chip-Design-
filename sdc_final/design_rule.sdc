# ==============================================================================
# 4. DESIGN RULE CONSTRAINTS & WIRE LOAD (Teman Doc Section 6)
# ==============================================================================
# Synopsys Design Compiler auto-selection directive
set auto_wire_load_selection true

set_max_transition  2.0 [current_design]   ;# Slew limit (10% of period)
set_max_fanout      20  [current_design]   ;# Max fanout limit
set_max_capacitance 1.0 [current_design]   ;# Max capacitance (pF)