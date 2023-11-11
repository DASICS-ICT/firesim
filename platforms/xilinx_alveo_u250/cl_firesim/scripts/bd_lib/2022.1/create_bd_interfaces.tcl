# Create interface ports

set ddr4_sdram_c0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddr4_sdram_c0 ]
set ddr4_sdram_c1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddr4_sdram_c1 ]
set ddr4_sdram_c2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddr4_sdram_c2 ]
set ddr4_sdram_c3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddr4_sdram_c3 ]

set default_300mhz_clk0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 default_300mhz_clk0 ]
set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
] $default_300mhz_clk0

set default_300mhz_clk1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 default_300mhz_clk1 ]
set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
] $default_300mhz_clk1

set default_300mhz_clk2 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 default_300mhz_clk2 ]
set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
] $default_300mhz_clk2

set default_300mhz_clk3 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 default_300mhz_clk3 ]
set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
] $default_300mhz_clk3

set pci_express_x16 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pci_express_x16 ]

set pcie_refclk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 pcie_refclk ]
set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
] $pcie_refclk

# Create ports

set pcie_perstn [ create_bd_port -dir I -type rst pcie_perstn ]
set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
] $pcie_perstn
set resetn [ create_bd_port -dir I -type rst resetn ]
set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
] $resetn
