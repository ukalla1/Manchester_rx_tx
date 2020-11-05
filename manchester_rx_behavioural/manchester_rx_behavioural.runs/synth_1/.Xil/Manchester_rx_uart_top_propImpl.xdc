set_property SRC_FILE_INFO {cfile:/home/ukallakuri/hardware_design/designs/manchester_tx_rx/manchester_rx_behavioural/manchester_rx_behavioural.srcs/constrs_1/imports/xdcs/timing.xdc rfile:../../../manchester_rx_behavioural.srcs/constrs_1/imports/xdcs/timing.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {rst}]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports {tx_on}];
set_property src_info {type:XDC file:1 line:98 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C17 PULLUP TRUE  IOSTANDARD LVCMOS33 } [get_ports { manch_decode_input }]; #IO_L20N_T3_A19_15 Sch=ja[1]
set_property src_info {type:XDC file:1 line:222 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { tx_serial_data }]; #IO_L11N_T1_SRCC_35 Sch=uart_rxd_out
