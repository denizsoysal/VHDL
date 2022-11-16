##set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLOCK_OUT_0_IBUF]
##start btn
set_property PACKAGE_PIN L15 [get_ports start_btnn_0]
set_property IOSTANDARD LVCMOS33 [get_ports start_btnn_0]

##rstn
set_property IOSTANDARD LVCMOS33 [get_ports rstn]
set_property PACKAGE_PIN AA18 [get_ports rstn]

##clk
set_property PACKAGE_PIN C18 [get_ports clk_ref]
set_property IOSTANDARD LVCMOS33 [get_ports clk_ref]




##led enable
set_property PACKAGE_PIN M17 [get_ports en_led0]
set_property IOSTANDARD LVCMOS33 [get_ports en_led0]
set_property PACKAGE_PIN L14 [get_ports en_led1]
set_property IOSTANDARD LVCMOS33 [get_ports en_led1]

#power management
##Enable power of DUT
set_property PACKAGE_PIN E14 [get_ports EN_PWR_5V]
set_property IOSTANDARD LVCMOS33 [get_ports EN_PWR_5V]
set_property PACKAGE_PIN E13 [get_ports PG_PWR_5V_0]
set_property IOSTANDARD LVCMOS33 [get_ports PG_PWR_5V_0]
set_property PACKAGE_PIN F13 [get_ports IOV_VMECPU_0]
set_property IOSTANDARD LVCMOS33 [get_ports IOV_VMECPU_0]
set_property PACKAGE_PIN F14 [get_ports IOV_rst_0]
set_property IOSTANDARD LVCMOS33 [get_ports IOV_rst_0]
set_property PULLUP true [get_ports IOV_rst_0]
set_property PULLUP true [get_ports IOV_VMECPU_0]


##SPI interface for first IO expander (U16 on schematics)
set_property PACKAGE_PIN L21 [get_ports spi_clk]
set_property IOSTANDARD LVCMOS33 [get_ports spi_clk]
set_property PACKAGE_PIN M21 [get_ports spi_csn]
set_property IOSTANDARD LVCMOS33 [get_ports spi_csn]
set_property PACKAGE_PIN H19 [get_ports spi_mosi]
set_property IOSTANDARD LVCMOS33 [get_ports spi_mosi]
set_property PACKAGE_PIN J19 [get_ports spi_miso]
set_property IOSTANDARD LVCMOS33 [get_ports spi_miso]


##SPI interface for second IO expander (U11 on schematics)
set_property PACKAGE_PIN L13 [get_ports spi_clk_1]
set_property IOSTANDARD LVCMOS33 [get_ports spi_clk_1]
set_property PACKAGE_PIN N22 [get_ports spi_csn_1]
set_property IOSTANDARD LVCMOS33 [get_ports spi_csn_1]
set_property PACKAGE_PIN M20 [get_ports spi_mosi_1]
set_property IOSTANDARD LVCMOS33 [get_ports spi_mosi_1]
set_property PACKAGE_PIN N20 [get_ports spi_miso_1]
set_property IOSTANDARD LVCMOS33 [get_ports spi_miso_1]

##SPI interface for ADC (U7 on schematics)
set_property PACKAGE_PIN J22 [get_ports spi_clk_0]
set_property IOSTANDARD LVCMOS33 [get_ports spi_clk_0]
set_property PACKAGE_PIN L20 [get_ports spi_csn_0]
set_property IOSTANDARD LVCMOS33 [get_ports spi_csn_0]
set_property PACKAGE_PIN K19 [get_ports spi_mosi_0]
set_property IOSTANDARD LVCMOS33 [get_ports spi_mosi_0]
set_property PACKAGE_PIN L19 [get_ports spi_miso_0]
set_property IOSTANDARD LVCMOS33 [get_ports spi_miso_0]

set_property PACKAGE_PIN H22 [get_ports ADC_eoc]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_eoc]



##Power Sequence signals
set_property PACKAGE_PIN H17 [get_ports en_5v]
set_property IOSTANDARD LVCMOS33 [get_ports en_5v]
set_property PACKAGE_PIN H18 [get_ports pg_5v]
set_property IOSTANDARD LVCMOS33 [get_ports pg_5v]
set_property PACKAGE_PIN K17 [get_ports pg_1V0]
set_property IOSTANDARD LVCMOS33 [get_ports pg_1V0]
set_property PACKAGE_PIN A14 [get_ports pg_3V3]
set_property IOSTANDARD LVCMOS33 [get_ports pg_3V3]
set_property PACKAGE_PIN J14 [get_ports pg_1V8]
set_property IOSTANDARD LVCMOS33 [get_ports pg_1V8]
set_property PACKAGE_PIN L16 [get_ports pg_1V2]
set_property IOSTANDARD LVCMOS33 [get_ports pg_1V2]
set_property PACKAGE_PIN B18 [get_ports pg_vcore]
set_property IOSTANDARD LVCMOS33 [get_ports pg_vcore]
set_property PACKAGE_PIN AA13 [get_ports pg_vdimm]
set_property IOSTANDARD LVCMOS33 [get_ports pg_vdimm]
set_property PACKAGE_PIN N18 [get_ports pg_poreset]
set_property IOSTANDARD LVCMOS33 [get_ports pg_poreset]

##clock measurements
set_property PACKAGE_PIN F18 [get_ports XTAL_RTC_OE_0]
set_property IOSTANDARD LVCMOS33 [get_ports XTAL_RTC_OE_0]
set_property PACKAGE_PIN Y11 [get_ports TST_CLK_S0_0]
set_property IOSTANDARD LVCMOS33 [get_ports TST_CLK_S0_0]
set_property PACKAGE_PIN Y12 [get_ports TST_CLK_S1_0]
set_property IOSTANDARD LVCMOS33 [get_ports TST_CLK_S1_0]
set_property PACKAGE_PIN AB13 [get_ports TST_CLK_S2_0]
set_property IOSTANDARD LVCMOS33 [get_ports TST_CLK_S2_0]
set_property PACKAGE_PIN D21 [get_ports CLOCK_OUT_0]
set_property IOSTANDARD LVCMOS33 [get_ports CLOCK_OUT_0]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLOCK_OUT_0_IBUF] 

set_property PULLUP true [get_ports en_led0]
set_property PULLUP true [get_ports en_led1]
set_property PULLUP true [get_ports EN_PWR_5V]
set_property PULLUP true [get_ports TST_CLK_S0_0]
set_property PULLUP true [get_ports TST_CLK_S1_0]
set_property PULLUP true [get_ports TST_CLK_S2_0]
set_property PULLUP true [get_ports XTAL_RTC_OE_0]

##reset seq 
set_property PACKAGE_PIN J21 [get_ports btn_rst_t_0]
set_property IOSTANDARD LVCMOS33 [get_ports btn_rst_t_0]



set_property PACKAGE_PIN K13 [get_ports led_rst_0]
set_property IOSTANDARD LVCMOS33 [get_ports led_rst_0]
set_property PACKAGE_PIN K14 [get_ports led_usr_0]
set_property IOSTANDARD LVCMOS33 [get_ports led_usr_0]
set_property PACKAGE_PIN K16 [get_ports led_wtd_0]
set_property IOSTANDARD LVCMOS33 [get_ports led_wtd_0]
set_property PACKAGE_PIN H14 [get_ports sw_not_programmed_0]
set_property IOSTANDARD LVCMOS33 [get_ports sw_not_programmed_0]
set_property PACKAGE_PIN M18 [get_ports hreset_0]
set_property IOSTANDARD LVCMOS33 [get_ports hreset_0]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_ref_IBUF_BUFG]
