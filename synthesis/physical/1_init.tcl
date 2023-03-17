##############################################################
##         Initial Encounter Configuration                  ##
## Script Generated for Undergrad class of microelectronics ##
## Generated by Matheus Moreira/Fernando Moraes - 2018      ##
##                                                          ##
## Functionalities of this script:                          ##
##  -Load the required standard cell libraries              ##
##  -Load synthesized netlist                               ##
##  -Load design constraints                                ##
##  -Generate a floorplan                                   ##
##############################################################

##Loading std cell libs / netlist / constraints / setting vdd/gnd
set_db init_power_nets {VDD vdd vdd!}
set_db init_ground_nets {VSS GND gnd gnd!}
source innovus/riscv_steel_core.v.invs_init.tcl

##Generating square floorplan (1) with 80% of density (0.8) with 3um margins (3 3 3 3)
create_floorplan -site core -core_density_size 1 0.60 13 13 13 13

##fit screen
gui_fit