##############################################################
##         Initial Encounter Configuration                  ##
## Script Generated for Undergrad class of microelectronics ##
## Generated by Matheus Moreira/Fernando Moraes - 2018      ##
##                                                          ##
## Functionalities of this script:                          ##
##  -Place standard cells                                   ##
##  -Place core pins                                        ##
##  -Perform initial route of the design                    ##
##############################################################
##Place the design
place_design

##Place pins in the chip sides

edit_pin -side Bottom -layer 4 -spread_type center -spacing 5 -pin {clock reset {{instruction_address[0]} instruction_address[1]} {instruction_address[2]} {instruction_address[3]} {instruction_address[4]} {instruction_address[5]} {instruction_address[6]} {instruction_address[7]} {instruction_address[8]} {instruction_address[9]} {instruction_address[10]} {instruction_address[11]} {instruction_address[12]} {instruction_address[13]} {instruction_address[14]} {instruction_address[15]} {instruction_address[16]} {instruction_address[17]} {instruction_address[18]} {instruction_address[19]} {instruction_address[20]} {instruction_address[21]} {instruction_address[22]} {instruction_address[23]} {instruction_address[24]} {instruction_address[25]} {instruction_address[26]} {instruction_address[27]} {instruction_address[28]} {instruction_address[29]} {instruction_address[30]} {instruction_address[31]}}

edit_pin -side Top -layer 4 -spread_type center -spacing 5 -pin {{data_write_mask[0]} {data_write_mask[1]} {data_write_mask[2]} {data_write_mask[3]}  interrupt_request_external interrupt_request_internal interrupt_request_software {boot_address[0]} {boot_address[1]} {boot_address[2]} {boot_address[3]} {boot_address[4]} {boot_address[5]} {boot_address[6]} {boot_address[7]} {boot_address[8]} {boot_address[9]} {boot_address[10]} {boot_address[11]} {boot_address[12]} {boot_address[13]} {boot_address[14]} {boot_address[15]} {boot_address[16]} {boot_address[17]} {boot_address[18]} {boot_address[19]} {boot_address[20]} {boot_address[21]} {boot_address[22]} {boot_address[23]} {boot_address[24]} {boot_address[25]} {boot_address[26]} {boot_address[27]} {boot_address[28]} {boot_address[29]} {boot_address[30]} {boot_address[31]}}

edit_pin -side Left -layer 3 -spread_type center -spacing 5 -pin {data_write_request {instruction_in[0]} {instruction_in[1]} {instruction_in[2]} {instruction_in[3]} {instruction_in[4]} {instruction_in[5]} {instruction_in[6]} {instruction_in[7]} {instruction_in[8]} {instruction_in[9]} {instruction_in[10]} {instruction_in[11]} {instruction_in[12]} {instruction_in[13]} {instruction_in[14]} {instruction_in[15]} {instruction_in[16]} {instruction_in[17]} {instruction_in[18]} {instruction_in[19]} {instruction_in[20]} {instruction_in[21]} {instruction_in[22]} {instruction_in[23]} {instruction_in[24]} {instruction_in[25]} {instruction_in[26]} {instruction_in[27]} {instruction_in[28]} {instruction_in[29]} {instruction_in[30]} {instruction_in[31]} {data_in[0]} {data_in[1]} {data_in[2]} {data_in[3]} {data_in[4]} {data_in[5]} {data_in[6]} {data_in[7]} {data_in[8]} {data_in[9]} {data_in[10]} {data_in[11]} {data_in[12]} {data_in[13]} {data_in[14]} {data_in[15]} {data_in[16]} {data_in[17]} {data_in[18]} {data_in[19]} {data_in[20]} {data_in[21]} {data_in[22]} {data_in[23]} {data_in[24]} {data_in[25]} {data_in[26]} {data_in[27]} {data_in[28]} {data_in[29]} {data_in[30]} {data_in[31]}}

edit_pin -side Right -layer 3 -spread_type center -spacing 5 -pin {{data_out[0]} {data_out[1]} {data_out[2]} {data_out[3]} {data_out[4]} {data_out[5]} {data_out[6]} {data_out[7]} {data_out[8]} {data_out[9]} {data_out[10]} {data_out[11]} {data_out[12]} {data_out[13]} {data_out[14]} {data_out[15]} {data_out[16]} {data_out[17]} {data_out[18]} {data_out[19]} {data_out[20]} {data_out[21]} {data_out[22]} {data_out[23]} {data_out[24]} {data_out[25]} {data_out[26]} {data_out[27]} {data_out[28]} {data_out[29]} {data_out[30]} {data_out[31]} {data_rw_address[0]} {data_rw_address[1]} {data_rw_address[2]} {data_rw_address[3]} {data_rw_address[4]} {data_rw_address[5]} {data_rw_address[6]} {data_rw_address[7]} {data_rw_address[8]} {data_rw_address[9]} {data_rw_address[10]} {data_rw_address[11]} {data_rw_address[12]} {data_rw_address[13]} {data_rw_address[14]} {data_rw_address[15]} {data_rw_address[16]} {data_rw_address[17]} {data_rw_address[18]} {data_rw_address[19]} {data_rw_address[20]} {data_rw_address[21]} {data_rw_address[22]} {data_rw_address[23]} {data_rw_address[24]} {data_rw_address[25]} {data_rw_address[26]} {data_rw_address[27]} {data_rw_address[28]} {data_rw_address[29]} {data_rw_address[30]} {data_rw_address[31]}}

ccopt_design 

report_timing