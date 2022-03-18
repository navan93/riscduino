module user_project_wrapper (user_clock2,
    vccd1,
    vccd2,
    vdda1,
    vdda2,
    vssa1,
    vssa2,
    vssd1,
    vssd2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input vccd1;
 input vccd2;
 input vdda1;
 input vdda2;
 input vssa1;
 input vssa2;
 input vssd1;
 input vssd2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire \cfg_clk_ctrl1[0] ;
 wire \cfg_clk_ctrl1[10] ;
 wire \cfg_clk_ctrl1[11] ;
 wire \cfg_clk_ctrl1[12] ;
 wire \cfg_clk_ctrl1[13] ;
 wire \cfg_clk_ctrl1[14] ;
 wire \cfg_clk_ctrl1[15] ;
 wire \cfg_clk_ctrl1[16] ;
 wire \cfg_clk_ctrl1[17] ;
 wire \cfg_clk_ctrl1[18] ;
 wire \cfg_clk_ctrl1[19] ;
 wire \cfg_clk_ctrl1[1] ;
 wire \cfg_clk_ctrl1[20] ;
 wire \cfg_clk_ctrl1[21] ;
 wire \cfg_clk_ctrl1[22] ;
 wire \cfg_clk_ctrl1[23] ;
 wire \cfg_clk_ctrl1[24] ;
 wire \cfg_clk_ctrl1[25] ;
 wire \cfg_clk_ctrl1[26] ;
 wire \cfg_clk_ctrl1[27] ;
 wire \cfg_clk_ctrl1[28] ;
 wire \cfg_clk_ctrl1[29] ;
 wire \cfg_clk_ctrl1[2] ;
 wire \cfg_clk_ctrl1[30] ;
 wire \cfg_clk_ctrl1[31] ;
 wire \cfg_clk_ctrl1[3] ;
 wire \cfg_clk_ctrl1[4] ;
 wire \cfg_clk_ctrl1[5] ;
 wire \cfg_clk_ctrl1[6] ;
 wire \cfg_clk_ctrl1[7] ;
 wire \cfg_clk_ctrl1[8] ;
 wire \cfg_clk_ctrl1[9] ;
 wire \cfg_clk_ctrl2[0] ;
 wire \cfg_clk_ctrl2[10] ;
 wire \cfg_clk_ctrl2[11] ;
 wire \cfg_clk_ctrl2[12] ;
 wire \cfg_clk_ctrl2[13] ;
 wire \cfg_clk_ctrl2[14] ;
 wire \cfg_clk_ctrl2[15] ;
 wire \cfg_clk_ctrl2[16] ;
 wire \cfg_clk_ctrl2[17] ;
 wire \cfg_clk_ctrl2[18] ;
 wire \cfg_clk_ctrl2[19] ;
 wire \cfg_clk_ctrl2[1] ;
 wire \cfg_clk_ctrl2[20] ;
 wire \cfg_clk_ctrl2[21] ;
 wire \cfg_clk_ctrl2[22] ;
 wire \cfg_clk_ctrl2[23] ;
 wire \cfg_clk_ctrl2[24] ;
 wire \cfg_clk_ctrl2[25] ;
 wire \cfg_clk_ctrl2[26] ;
 wire \cfg_clk_ctrl2[27] ;
 wire \cfg_clk_ctrl2[28] ;
 wire \cfg_clk_ctrl2[29] ;
 wire \cfg_clk_ctrl2[2] ;
 wire \cfg_clk_ctrl2[30] ;
 wire \cfg_clk_ctrl2[31] ;
 wire \cfg_clk_ctrl2[3] ;
 wire \cfg_clk_ctrl2[4] ;
 wire \cfg_clk_ctrl2[5] ;
 wire \cfg_clk_ctrl2[6] ;
 wire \cfg_clk_ctrl2[7] ;
 wire \cfg_clk_ctrl2[8] ;
 wire \cfg_clk_ctrl2[9] ;
 wire \cfg_cska_pinmux_rp[0] ;
 wire \cfg_cska_pinmux_rp[1] ;
 wire \cfg_cska_pinmux_rp[2] ;
 wire \cfg_cska_pinmux_rp[3] ;
 wire \cfg_cska_qspi_co_rp[0] ;
 wire \cfg_cska_qspi_co_rp[1] ;
 wire \cfg_cska_qspi_co_rp[2] ;
 wire \cfg_cska_qspi_co_rp[3] ;
 wire \cfg_cska_qspi_rp[0] ;
 wire \cfg_cska_qspi_rp[1] ;
 wire \cfg_cska_qspi_rp[2] ;
 wire \cfg_cska_qspi_rp[3] ;
 wire \cfg_cska_riscv_rp[0] ;
 wire \cfg_cska_riscv_rp[1] ;
 wire \cfg_cska_riscv_rp[2] ;
 wire \cfg_cska_riscv_rp[3] ;
 wire \cfg_cska_uart_rp[0] ;
 wire \cfg_cska_uart_rp[1] ;
 wire \cfg_cska_uart_rp[2] ;
 wire \cfg_cska_uart_rp[3] ;
 wire cpu_clk;
 wire \cpu_core_rst_n[0] ;
 wire \cpu_core_rst_n[1] ;
 wire cpu_intf_rst_n;
 wire \dcache_dffram_addr0[0] ;
 wire \dcache_dffram_addr0[1] ;
 wire \dcache_dffram_addr0[2] ;
 wire \dcache_dffram_addr0[3] ;
 wire \dcache_dffram_addr0[4] ;
 wire \dcache_dffram_addr0[5] ;
 wire \dcache_dffram_addr0[6] ;
 wire \dcache_dffram_addr0[7] ;
 wire \dcache_dffram_addr1[0] ;
 wire \dcache_dffram_addr1[1] ;
 wire \dcache_dffram_addr1[2] ;
 wire \dcache_dffram_addr1[3] ;
 wire \dcache_dffram_addr1[4] ;
 wire \dcache_dffram_addr1[5] ;
 wire \dcache_dffram_addr1[6] ;
 wire \dcache_dffram_addr1[7] ;
 wire dcache_dffram_clk0;
 wire dcache_dffram_clk1;
 wire dcache_dffram_cs0;
 wire dcache_dffram_cs1;
 wire \dcache_dffram_din0[0] ;
 wire \dcache_dffram_din0[10] ;
 wire \dcache_dffram_din0[11] ;
 wire \dcache_dffram_din0[12] ;
 wire \dcache_dffram_din0[13] ;
 wire \dcache_dffram_din0[14] ;
 wire \dcache_dffram_din0[15] ;
 wire \dcache_dffram_din0[16] ;
 wire \dcache_dffram_din0[17] ;
 wire \dcache_dffram_din0[18] ;
 wire \dcache_dffram_din0[19] ;
 wire \dcache_dffram_din0[1] ;
 wire \dcache_dffram_din0[20] ;
 wire \dcache_dffram_din0[21] ;
 wire \dcache_dffram_din0[22] ;
 wire \dcache_dffram_din0[23] ;
 wire \dcache_dffram_din0[24] ;
 wire \dcache_dffram_din0[25] ;
 wire \dcache_dffram_din0[26] ;
 wire \dcache_dffram_din0[27] ;
 wire \dcache_dffram_din0[28] ;
 wire \dcache_dffram_din0[29] ;
 wire \dcache_dffram_din0[2] ;
 wire \dcache_dffram_din0[30] ;
 wire \dcache_dffram_din0[31] ;
 wire \dcache_dffram_din0[3] ;
 wire \dcache_dffram_din0[4] ;
 wire \dcache_dffram_din0[5] ;
 wire \dcache_dffram_din0[6] ;
 wire \dcache_dffram_din0[7] ;
 wire \dcache_dffram_din0[8] ;
 wire \dcache_dffram_din0[9] ;
 wire \dcache_dffram_din1[0] ;
 wire \dcache_dffram_din1[10] ;
 wire \dcache_dffram_din1[11] ;
 wire \dcache_dffram_din1[12] ;
 wire \dcache_dffram_din1[13] ;
 wire \dcache_dffram_din1[14] ;
 wire \dcache_dffram_din1[15] ;
 wire \dcache_dffram_din1[16] ;
 wire \dcache_dffram_din1[17] ;
 wire \dcache_dffram_din1[18] ;
 wire \dcache_dffram_din1[19] ;
 wire \dcache_dffram_din1[1] ;
 wire \dcache_dffram_din1[20] ;
 wire \dcache_dffram_din1[21] ;
 wire \dcache_dffram_din1[22] ;
 wire \dcache_dffram_din1[23] ;
 wire \dcache_dffram_din1[24] ;
 wire \dcache_dffram_din1[25] ;
 wire \dcache_dffram_din1[26] ;
 wire \dcache_dffram_din1[27] ;
 wire \dcache_dffram_din1[28] ;
 wire \dcache_dffram_din1[29] ;
 wire \dcache_dffram_din1[2] ;
 wire \dcache_dffram_din1[30] ;
 wire \dcache_dffram_din1[31] ;
 wire \dcache_dffram_din1[3] ;
 wire \dcache_dffram_din1[4] ;
 wire \dcache_dffram_din1[5] ;
 wire \dcache_dffram_din1[6] ;
 wire \dcache_dffram_din1[7] ;
 wire \dcache_dffram_din1[8] ;
 wire \dcache_dffram_din1[9] ;
 wire \dcache_dffram_dout0[0] ;
 wire \dcache_dffram_dout0[10] ;
 wire \dcache_dffram_dout0[11] ;
 wire \dcache_dffram_dout0[12] ;
 wire \dcache_dffram_dout0[13] ;
 wire \dcache_dffram_dout0[14] ;
 wire \dcache_dffram_dout0[15] ;
 wire \dcache_dffram_dout0[16] ;
 wire \dcache_dffram_dout0[17] ;
 wire \dcache_dffram_dout0[18] ;
 wire \dcache_dffram_dout0[19] ;
 wire \dcache_dffram_dout0[1] ;
 wire \dcache_dffram_dout0[20] ;
 wire \dcache_dffram_dout0[21] ;
 wire \dcache_dffram_dout0[22] ;
 wire \dcache_dffram_dout0[23] ;
 wire \dcache_dffram_dout0[24] ;
 wire \dcache_dffram_dout0[25] ;
 wire \dcache_dffram_dout0[26] ;
 wire \dcache_dffram_dout0[27] ;
 wire \dcache_dffram_dout0[28] ;
 wire \dcache_dffram_dout0[29] ;
 wire \dcache_dffram_dout0[2] ;
 wire \dcache_dffram_dout0[30] ;
 wire \dcache_dffram_dout0[31] ;
 wire \dcache_dffram_dout0[3] ;
 wire \dcache_dffram_dout0[4] ;
 wire \dcache_dffram_dout0[5] ;
 wire \dcache_dffram_dout0[6] ;
 wire \dcache_dffram_dout0[7] ;
 wire \dcache_dffram_dout0[8] ;
 wire \dcache_dffram_dout0[9] ;
 wire \dcache_dffram_dout1[0] ;
 wire \dcache_dffram_dout1[10] ;
 wire \dcache_dffram_dout1[11] ;
 wire \dcache_dffram_dout1[12] ;
 wire \dcache_dffram_dout1[13] ;
 wire \dcache_dffram_dout1[14] ;
 wire \dcache_dffram_dout1[15] ;
 wire \dcache_dffram_dout1[16] ;
 wire \dcache_dffram_dout1[17] ;
 wire \dcache_dffram_dout1[18] ;
 wire \dcache_dffram_dout1[19] ;
 wire \dcache_dffram_dout1[1] ;
 wire \dcache_dffram_dout1[20] ;
 wire \dcache_dffram_dout1[21] ;
 wire \dcache_dffram_dout1[22] ;
 wire \dcache_dffram_dout1[23] ;
 wire \dcache_dffram_dout1[24] ;
 wire \dcache_dffram_dout1[25] ;
 wire \dcache_dffram_dout1[26] ;
 wire \dcache_dffram_dout1[27] ;
 wire \dcache_dffram_dout1[28] ;
 wire \dcache_dffram_dout1[29] ;
 wire \dcache_dffram_dout1[2] ;
 wire \dcache_dffram_dout1[30] ;
 wire \dcache_dffram_dout1[31] ;
 wire \dcache_dffram_dout1[3] ;
 wire \dcache_dffram_dout1[4] ;
 wire \dcache_dffram_dout1[5] ;
 wire \dcache_dffram_dout1[6] ;
 wire \dcache_dffram_dout1[7] ;
 wire \dcache_dffram_dout1[8] ;
 wire \dcache_dffram_dout1[9] ;
 wire \dcache_dffram_wmask0[0] ;
 wire \dcache_dffram_wmask0[1] ;
 wire \dcache_dffram_wmask0[2] ;
 wire \dcache_dffram_wmask0[3] ;
 wire \dcache_dffram_wmask1[0] ;
 wire \dcache_dffram_wmask1[1] ;
 wire \dcache_dffram_wmask1[2] ;
 wire \dcache_dffram_wmask1[3] ;
 wire i2c_rst_n;
 wire i2cm_clk_i;
 wire i2cm_clk_o;
 wire i2cm_clk_oen;
 wire i2cm_data_i;
 wire i2cm_data_o;
 wire i2cm_data_oen;
 wire i2cm_intr_o;
 wire \icache_dffram_addr0[0] ;
 wire \icache_dffram_addr0[1] ;
 wire \icache_dffram_addr0[2] ;
 wire \icache_dffram_addr0[3] ;
 wire \icache_dffram_addr0[4] ;
 wire \icache_dffram_addr0[5] ;
 wire \icache_dffram_addr0[6] ;
 wire \icache_dffram_addr0[7] ;
 wire \icache_dffram_addr1[0] ;
 wire \icache_dffram_addr1[1] ;
 wire \icache_dffram_addr1[2] ;
 wire \icache_dffram_addr1[3] ;
 wire \icache_dffram_addr1[4] ;
 wire \icache_dffram_addr1[5] ;
 wire \icache_dffram_addr1[6] ;
 wire \icache_dffram_addr1[7] ;
 wire icache_dffram_clk0;
 wire icache_dffram_clk1;
 wire icache_dffram_cs0;
 wire icache_dffram_cs1;
 wire \icache_dffram_din0[0] ;
 wire \icache_dffram_din0[10] ;
 wire \icache_dffram_din0[11] ;
 wire \icache_dffram_din0[12] ;
 wire \icache_dffram_din0[13] ;
 wire \icache_dffram_din0[14] ;
 wire \icache_dffram_din0[15] ;
 wire \icache_dffram_din0[16] ;
 wire \icache_dffram_din0[17] ;
 wire \icache_dffram_din0[18] ;
 wire \icache_dffram_din0[19] ;
 wire \icache_dffram_din0[1] ;
 wire \icache_dffram_din0[20] ;
 wire \icache_dffram_din0[21] ;
 wire \icache_dffram_din0[22] ;
 wire \icache_dffram_din0[23] ;
 wire \icache_dffram_din0[24] ;
 wire \icache_dffram_din0[25] ;
 wire \icache_dffram_din0[26] ;
 wire \icache_dffram_din0[27] ;
 wire \icache_dffram_din0[28] ;
 wire \icache_dffram_din0[29] ;
 wire \icache_dffram_din0[2] ;
 wire \icache_dffram_din0[30] ;
 wire \icache_dffram_din0[31] ;
 wire \icache_dffram_din0[3] ;
 wire \icache_dffram_din0[4] ;
 wire \icache_dffram_din0[5] ;
 wire \icache_dffram_din0[6] ;
 wire \icache_dffram_din0[7] ;
 wire \icache_dffram_din0[8] ;
 wire \icache_dffram_din0[9] ;
 wire \icache_dffram_din1[0] ;
 wire \icache_dffram_din1[10] ;
 wire \icache_dffram_din1[11] ;
 wire \icache_dffram_din1[12] ;
 wire \icache_dffram_din1[13] ;
 wire \icache_dffram_din1[14] ;
 wire \icache_dffram_din1[15] ;
 wire \icache_dffram_din1[16] ;
 wire \icache_dffram_din1[17] ;
 wire \icache_dffram_din1[18] ;
 wire \icache_dffram_din1[19] ;
 wire \icache_dffram_din1[1] ;
 wire \icache_dffram_din1[20] ;
 wire \icache_dffram_din1[21] ;
 wire \icache_dffram_din1[22] ;
 wire \icache_dffram_din1[23] ;
 wire \icache_dffram_din1[24] ;
 wire \icache_dffram_din1[25] ;
 wire \icache_dffram_din1[26] ;
 wire \icache_dffram_din1[27] ;
 wire \icache_dffram_din1[28] ;
 wire \icache_dffram_din1[29] ;
 wire \icache_dffram_din1[2] ;
 wire \icache_dffram_din1[30] ;
 wire \icache_dffram_din1[31] ;
 wire \icache_dffram_din1[3] ;
 wire \icache_dffram_din1[4] ;
 wire \icache_dffram_din1[5] ;
 wire \icache_dffram_din1[6] ;
 wire \icache_dffram_din1[7] ;
 wire \icache_dffram_din1[8] ;
 wire \icache_dffram_din1[9] ;
 wire \icache_dffram_dout0[0] ;
 wire \icache_dffram_dout0[10] ;
 wire \icache_dffram_dout0[11] ;
 wire \icache_dffram_dout0[12] ;
 wire \icache_dffram_dout0[13] ;
 wire \icache_dffram_dout0[14] ;
 wire \icache_dffram_dout0[15] ;
 wire \icache_dffram_dout0[16] ;
 wire \icache_dffram_dout0[17] ;
 wire \icache_dffram_dout0[18] ;
 wire \icache_dffram_dout0[19] ;
 wire \icache_dffram_dout0[1] ;
 wire \icache_dffram_dout0[20] ;
 wire \icache_dffram_dout0[21] ;
 wire \icache_dffram_dout0[22] ;
 wire \icache_dffram_dout0[23] ;
 wire \icache_dffram_dout0[24] ;
 wire \icache_dffram_dout0[25] ;
 wire \icache_dffram_dout0[26] ;
 wire \icache_dffram_dout0[27] ;
 wire \icache_dffram_dout0[28] ;
 wire \icache_dffram_dout0[29] ;
 wire \icache_dffram_dout0[2] ;
 wire \icache_dffram_dout0[30] ;
 wire \icache_dffram_dout0[31] ;
 wire \icache_dffram_dout0[3] ;
 wire \icache_dffram_dout0[4] ;
 wire \icache_dffram_dout0[5] ;
 wire \icache_dffram_dout0[6] ;
 wire \icache_dffram_dout0[7] ;
 wire \icache_dffram_dout0[8] ;
 wire \icache_dffram_dout0[9] ;
 wire \icache_dffram_dout1[0] ;
 wire \icache_dffram_dout1[10] ;
 wire \icache_dffram_dout1[11] ;
 wire \icache_dffram_dout1[12] ;
 wire \icache_dffram_dout1[13] ;
 wire \icache_dffram_dout1[14] ;
 wire \icache_dffram_dout1[15] ;
 wire \icache_dffram_dout1[16] ;
 wire \icache_dffram_dout1[17] ;
 wire \icache_dffram_dout1[18] ;
 wire \icache_dffram_dout1[19] ;
 wire \icache_dffram_dout1[1] ;
 wire \icache_dffram_dout1[20] ;
 wire \icache_dffram_dout1[21] ;
 wire \icache_dffram_dout1[22] ;
 wire \icache_dffram_dout1[23] ;
 wire \icache_dffram_dout1[24] ;
 wire \icache_dffram_dout1[25] ;
 wire \icache_dffram_dout1[26] ;
 wire \icache_dffram_dout1[27] ;
 wire \icache_dffram_dout1[28] ;
 wire \icache_dffram_dout1[29] ;
 wire \icache_dffram_dout1[2] ;
 wire \icache_dffram_dout1[30] ;
 wire \icache_dffram_dout1[31] ;
 wire \icache_dffram_dout1[3] ;
 wire \icache_dffram_dout1[4] ;
 wire \icache_dffram_dout1[5] ;
 wire \icache_dffram_dout1[6] ;
 wire \icache_dffram_dout1[7] ;
 wire \icache_dffram_dout1[8] ;
 wire \icache_dffram_dout1[9] ;
 wire \icache_dffram_wmask0[0] ;
 wire \icache_dffram_wmask0[1] ;
 wire \icache_dffram_wmask0[2] ;
 wire \icache_dffram_wmask0[3] ;
 wire \icache_dffram_wmask1[0] ;
 wire \icache_dffram_wmask1[1] ;
 wire \icache_dffram_wmask1[2] ;
 wire \icache_dffram_wmask1[3] ;
 wire \irq_lines[0] ;
 wire \irq_lines[10] ;
 wire \irq_lines[11] ;
 wire \irq_lines[12] ;
 wire \irq_lines[13] ;
 wire \irq_lines[14] ;
 wire \irq_lines[15] ;
 wire \irq_lines[1] ;
 wire \irq_lines[2] ;
 wire \irq_lines[3] ;
 wire \irq_lines[4] ;
 wire \irq_lines[5] ;
 wire \irq_lines[6] ;
 wire \irq_lines[7] ;
 wire \irq_lines[8] ;
 wire \irq_lines[9] ;
 wire \irq_lines_rp[0] ;
 wire \irq_lines_rp[10] ;
 wire \irq_lines_rp[11] ;
 wire \irq_lines_rp[12] ;
 wire \irq_lines_rp[13] ;
 wire \irq_lines_rp[14] ;
 wire \irq_lines_rp[15] ;
 wire \irq_lines_rp[1] ;
 wire \irq_lines_rp[2] ;
 wire \irq_lines_rp[3] ;
 wire \irq_lines_rp[4] ;
 wire \irq_lines_rp[5] ;
 wire \irq_lines_rp[6] ;
 wire \irq_lines_rp[7] ;
 wire \irq_lines_rp[8] ;
 wire \irq_lines_rp[9] ;
 wire pulse1m_mclk;
 wire qspim_rst_n;
 wire rtc_clk;
 wire \sflash_di[0] ;
 wire \sflash_di[1] ;
 wire \sflash_di[2] ;
 wire \sflash_di[3] ;
 wire \sflash_do[0] ;
 wire \sflash_do[1] ;
 wire \sflash_do[2] ;
 wire \sflash_do[3] ;
 wire \sflash_oen[0] ;
 wire \sflash_oen[1] ;
 wire \sflash_oen[2] ;
 wire \sflash_oen[3] ;
 wire sflash_sck;
 wire soft_irq;
 wire soft_irq_rp;
 wire \spi_csn[0] ;
 wire \spi_csn[1] ;
 wire \spi_csn[2] ;
 wire \spi_csn[3] ;
 wire sspim_rst_n;
 wire sspim_sck;
 wire sspim_si;
 wire sspim_so;
 wire sspim_ssn;
 wire \tcm_dffram_addr0[0] ;
 wire \tcm_dffram_addr0[1] ;
 wire \tcm_dffram_addr0[2] ;
 wire \tcm_dffram_addr0[3] ;
 wire \tcm_dffram_addr0[4] ;
 wire \tcm_dffram_addr0[5] ;
 wire \tcm_dffram_addr0[6] ;
 wire \tcm_dffram_addr0[7] ;
 wire \tcm_dffram_addr1[0] ;
 wire \tcm_dffram_addr1[1] ;
 wire \tcm_dffram_addr1[2] ;
 wire \tcm_dffram_addr1[3] ;
 wire \tcm_dffram_addr1[4] ;
 wire \tcm_dffram_addr1[5] ;
 wire \tcm_dffram_addr1[6] ;
 wire \tcm_dffram_addr1[7] ;
 wire tcm_dffram_clk0;
 wire tcm_dffram_clk1;
 wire tcm_dffram_cs0;
 wire tcm_dffram_cs1;
 wire \tcm_dffram_din0[0] ;
 wire \tcm_dffram_din0[10] ;
 wire \tcm_dffram_din0[11] ;
 wire \tcm_dffram_din0[12] ;
 wire \tcm_dffram_din0[13] ;
 wire \tcm_dffram_din0[14] ;
 wire \tcm_dffram_din0[15] ;
 wire \tcm_dffram_din0[16] ;
 wire \tcm_dffram_din0[17] ;
 wire \tcm_dffram_din0[18] ;
 wire \tcm_dffram_din0[19] ;
 wire \tcm_dffram_din0[1] ;
 wire \tcm_dffram_din0[20] ;
 wire \tcm_dffram_din0[21] ;
 wire \tcm_dffram_din0[22] ;
 wire \tcm_dffram_din0[23] ;
 wire \tcm_dffram_din0[24] ;
 wire \tcm_dffram_din0[25] ;
 wire \tcm_dffram_din0[26] ;
 wire \tcm_dffram_din0[27] ;
 wire \tcm_dffram_din0[28] ;
 wire \tcm_dffram_din0[29] ;
 wire \tcm_dffram_din0[2] ;
 wire \tcm_dffram_din0[30] ;
 wire \tcm_dffram_din0[31] ;
 wire \tcm_dffram_din0[3] ;
 wire \tcm_dffram_din0[4] ;
 wire \tcm_dffram_din0[5] ;
 wire \tcm_dffram_din0[6] ;
 wire \tcm_dffram_din0[7] ;
 wire \tcm_dffram_din0[8] ;
 wire \tcm_dffram_din0[9] ;
 wire \tcm_dffram_din1[0] ;
 wire \tcm_dffram_din1[10] ;
 wire \tcm_dffram_din1[11] ;
 wire \tcm_dffram_din1[12] ;
 wire \tcm_dffram_din1[13] ;
 wire \tcm_dffram_din1[14] ;
 wire \tcm_dffram_din1[15] ;
 wire \tcm_dffram_din1[16] ;
 wire \tcm_dffram_din1[17] ;
 wire \tcm_dffram_din1[18] ;
 wire \tcm_dffram_din1[19] ;
 wire \tcm_dffram_din1[1] ;
 wire \tcm_dffram_din1[20] ;
 wire \tcm_dffram_din1[21] ;
 wire \tcm_dffram_din1[22] ;
 wire \tcm_dffram_din1[23] ;
 wire \tcm_dffram_din1[24] ;
 wire \tcm_dffram_din1[25] ;
 wire \tcm_dffram_din1[26] ;
 wire \tcm_dffram_din1[27] ;
 wire \tcm_dffram_din1[28] ;
 wire \tcm_dffram_din1[29] ;
 wire \tcm_dffram_din1[2] ;
 wire \tcm_dffram_din1[30] ;
 wire \tcm_dffram_din1[31] ;
 wire \tcm_dffram_din1[3] ;
 wire \tcm_dffram_din1[4] ;
 wire \tcm_dffram_din1[5] ;
 wire \tcm_dffram_din1[6] ;
 wire \tcm_dffram_din1[7] ;
 wire \tcm_dffram_din1[8] ;
 wire \tcm_dffram_din1[9] ;
 wire \tcm_dffram_dout0[0] ;
 wire \tcm_dffram_dout0[10] ;
 wire \tcm_dffram_dout0[11] ;
 wire \tcm_dffram_dout0[12] ;
 wire \tcm_dffram_dout0[13] ;
 wire \tcm_dffram_dout0[14] ;
 wire \tcm_dffram_dout0[15] ;
 wire \tcm_dffram_dout0[16] ;
 wire \tcm_dffram_dout0[17] ;
 wire \tcm_dffram_dout0[18] ;
 wire \tcm_dffram_dout0[19] ;
 wire \tcm_dffram_dout0[1] ;
 wire \tcm_dffram_dout0[20] ;
 wire \tcm_dffram_dout0[21] ;
 wire \tcm_dffram_dout0[22] ;
 wire \tcm_dffram_dout0[23] ;
 wire \tcm_dffram_dout0[24] ;
 wire \tcm_dffram_dout0[25] ;
 wire \tcm_dffram_dout0[26] ;
 wire \tcm_dffram_dout0[27] ;
 wire \tcm_dffram_dout0[28] ;
 wire \tcm_dffram_dout0[29] ;
 wire \tcm_dffram_dout0[2] ;
 wire \tcm_dffram_dout0[30] ;
 wire \tcm_dffram_dout0[31] ;
 wire \tcm_dffram_dout0[3] ;
 wire \tcm_dffram_dout0[4] ;
 wire \tcm_dffram_dout0[5] ;
 wire \tcm_dffram_dout0[6] ;
 wire \tcm_dffram_dout0[7] ;
 wire \tcm_dffram_dout0[8] ;
 wire \tcm_dffram_dout0[9] ;
 wire \tcm_dffram_dout1[0] ;
 wire \tcm_dffram_dout1[10] ;
 wire \tcm_dffram_dout1[11] ;
 wire \tcm_dffram_dout1[12] ;
 wire \tcm_dffram_dout1[13] ;
 wire \tcm_dffram_dout1[14] ;
 wire \tcm_dffram_dout1[15] ;
 wire \tcm_dffram_dout1[16] ;
 wire \tcm_dffram_dout1[17] ;
 wire \tcm_dffram_dout1[18] ;
 wire \tcm_dffram_dout1[19] ;
 wire \tcm_dffram_dout1[1] ;
 wire \tcm_dffram_dout1[20] ;
 wire \tcm_dffram_dout1[21] ;
 wire \tcm_dffram_dout1[22] ;
 wire \tcm_dffram_dout1[23] ;
 wire \tcm_dffram_dout1[24] ;
 wire \tcm_dffram_dout1[25] ;
 wire \tcm_dffram_dout1[26] ;
 wire \tcm_dffram_dout1[27] ;
 wire \tcm_dffram_dout1[28] ;
 wire \tcm_dffram_dout1[29] ;
 wire \tcm_dffram_dout1[2] ;
 wire \tcm_dffram_dout1[30] ;
 wire \tcm_dffram_dout1[31] ;
 wire \tcm_dffram_dout1[3] ;
 wire \tcm_dffram_dout1[4] ;
 wire \tcm_dffram_dout1[5] ;
 wire \tcm_dffram_dout1[6] ;
 wire \tcm_dffram_dout1[7] ;
 wire \tcm_dffram_dout1[8] ;
 wire \tcm_dffram_dout1[9] ;
 wire \tcm_dffram_wmask0[0] ;
 wire \tcm_dffram_wmask0[1] ;
 wire \tcm_dffram_wmask0[2] ;
 wire \tcm_dffram_wmask0[3] ;
 wire \tcm_dffram_wmask1[0] ;
 wire \tcm_dffram_wmask1[1] ;
 wire \tcm_dffram_wmask1[2] ;
 wire \tcm_dffram_wmask1[3] ;
 wire uart_rst_n;
 wire uart_rxd;
 wire uart_txd;
 wire uartm_rxd;
 wire uartm_txd;
 wire usb_clk;
 wire usb_dn_i;
 wire usb_dn_o;
 wire usb_dp_i;
 wire usb_dp_o;
 wire usb_intr_o;
 wire usb_oen;
 wire usb_rst_n;
 wire wbd_clk_int;
 wire wbd_clk_pinmux_rp;
 wire wbd_clk_pinmux_skew;
 wire wbd_clk_qspi_rp;
 wire wbd_clk_risc_rp;
 wire wbd_clk_riscv_skew;
 wire wbd_clk_spi;
 wire wbd_clk_uart_rp;
 wire wbd_clk_uart_skew;
 wire wbd_clk_wh;
 wire wbd_clk_wi_skew;
 wire wbd_glbl_ack_i;
 wire \wbd_glbl_adr_o[0] ;
 wire \wbd_glbl_adr_o[1] ;
 wire \wbd_glbl_adr_o[2] ;
 wire \wbd_glbl_adr_o[3] ;
 wire \wbd_glbl_adr_o[4] ;
 wire \wbd_glbl_adr_o[5] ;
 wire \wbd_glbl_adr_o[6] ;
 wire \wbd_glbl_adr_o[7] ;
 wire wbd_glbl_cyc_o;
 wire \wbd_glbl_dat_i[0] ;
 wire \wbd_glbl_dat_i[10] ;
 wire \wbd_glbl_dat_i[11] ;
 wire \wbd_glbl_dat_i[12] ;
 wire \wbd_glbl_dat_i[13] ;
 wire \wbd_glbl_dat_i[14] ;
 wire \wbd_glbl_dat_i[15] ;
 wire \wbd_glbl_dat_i[16] ;
 wire \wbd_glbl_dat_i[17] ;
 wire \wbd_glbl_dat_i[18] ;
 wire \wbd_glbl_dat_i[19] ;
 wire \wbd_glbl_dat_i[1] ;
 wire \wbd_glbl_dat_i[20] ;
 wire \wbd_glbl_dat_i[21] ;
 wire \wbd_glbl_dat_i[22] ;
 wire \wbd_glbl_dat_i[23] ;
 wire \wbd_glbl_dat_i[24] ;
 wire \wbd_glbl_dat_i[25] ;
 wire \wbd_glbl_dat_i[26] ;
 wire \wbd_glbl_dat_i[27] ;
 wire \wbd_glbl_dat_i[28] ;
 wire \wbd_glbl_dat_i[29] ;
 wire \wbd_glbl_dat_i[2] ;
 wire \wbd_glbl_dat_i[30] ;
 wire \wbd_glbl_dat_i[31] ;
 wire \wbd_glbl_dat_i[3] ;
 wire \wbd_glbl_dat_i[4] ;
 wire \wbd_glbl_dat_i[5] ;
 wire \wbd_glbl_dat_i[6] ;
 wire \wbd_glbl_dat_i[7] ;
 wire \wbd_glbl_dat_i[8] ;
 wire \wbd_glbl_dat_i[9] ;
 wire \wbd_glbl_dat_o[0] ;
 wire \wbd_glbl_dat_o[10] ;
 wire \wbd_glbl_dat_o[11] ;
 wire \wbd_glbl_dat_o[12] ;
 wire \wbd_glbl_dat_o[13] ;
 wire \wbd_glbl_dat_o[14] ;
 wire \wbd_glbl_dat_o[15] ;
 wire \wbd_glbl_dat_o[16] ;
 wire \wbd_glbl_dat_o[17] ;
 wire \wbd_glbl_dat_o[18] ;
 wire \wbd_glbl_dat_o[19] ;
 wire \wbd_glbl_dat_o[1] ;
 wire \wbd_glbl_dat_o[20] ;
 wire \wbd_glbl_dat_o[21] ;
 wire \wbd_glbl_dat_o[22] ;
 wire \wbd_glbl_dat_o[23] ;
 wire \wbd_glbl_dat_o[24] ;
 wire \wbd_glbl_dat_o[25] ;
 wire \wbd_glbl_dat_o[26] ;
 wire \wbd_glbl_dat_o[27] ;
 wire \wbd_glbl_dat_o[28] ;
 wire \wbd_glbl_dat_o[29] ;
 wire \wbd_glbl_dat_o[2] ;
 wire \wbd_glbl_dat_o[30] ;
 wire \wbd_glbl_dat_o[31] ;
 wire \wbd_glbl_dat_o[3] ;
 wire \wbd_glbl_dat_o[4] ;
 wire \wbd_glbl_dat_o[5] ;
 wire \wbd_glbl_dat_o[6] ;
 wire \wbd_glbl_dat_o[7] ;
 wire \wbd_glbl_dat_o[8] ;
 wire \wbd_glbl_dat_o[9] ;
 wire \wbd_glbl_sel_o[0] ;
 wire \wbd_glbl_sel_o[1] ;
 wire \wbd_glbl_sel_o[2] ;
 wire \wbd_glbl_sel_o[3] ;
 wire wbd_glbl_stb_o;
 wire wbd_glbl_we_o;
 wire wbd_int_ack_o;
 wire \wbd_int_adr_i[0] ;
 wire \wbd_int_adr_i[10] ;
 wire \wbd_int_adr_i[11] ;
 wire \wbd_int_adr_i[12] ;
 wire \wbd_int_adr_i[13] ;
 wire \wbd_int_adr_i[14] ;
 wire \wbd_int_adr_i[15] ;
 wire \wbd_int_adr_i[16] ;
 wire \wbd_int_adr_i[17] ;
 wire \wbd_int_adr_i[18] ;
 wire \wbd_int_adr_i[19] ;
 wire \wbd_int_adr_i[1] ;
 wire \wbd_int_adr_i[20] ;
 wire \wbd_int_adr_i[21] ;
 wire \wbd_int_adr_i[22] ;
 wire \wbd_int_adr_i[23] ;
 wire \wbd_int_adr_i[24] ;
 wire \wbd_int_adr_i[25] ;
 wire \wbd_int_adr_i[26] ;
 wire \wbd_int_adr_i[27] ;
 wire \wbd_int_adr_i[28] ;
 wire \wbd_int_adr_i[29] ;
 wire \wbd_int_adr_i[2] ;
 wire \wbd_int_adr_i[30] ;
 wire \wbd_int_adr_i[31] ;
 wire \wbd_int_adr_i[3] ;
 wire \wbd_int_adr_i[4] ;
 wire \wbd_int_adr_i[5] ;
 wire \wbd_int_adr_i[6] ;
 wire \wbd_int_adr_i[7] ;
 wire \wbd_int_adr_i[8] ;
 wire \wbd_int_adr_i[9] ;
 wire wbd_int_cyc_i;
 wire \wbd_int_dat_i[0] ;
 wire \wbd_int_dat_i[10] ;
 wire \wbd_int_dat_i[11] ;
 wire \wbd_int_dat_i[12] ;
 wire \wbd_int_dat_i[13] ;
 wire \wbd_int_dat_i[14] ;
 wire \wbd_int_dat_i[15] ;
 wire \wbd_int_dat_i[16] ;
 wire \wbd_int_dat_i[17] ;
 wire \wbd_int_dat_i[18] ;
 wire \wbd_int_dat_i[19] ;
 wire \wbd_int_dat_i[1] ;
 wire \wbd_int_dat_i[20] ;
 wire \wbd_int_dat_i[21] ;
 wire \wbd_int_dat_i[22] ;
 wire \wbd_int_dat_i[23] ;
 wire \wbd_int_dat_i[24] ;
 wire \wbd_int_dat_i[25] ;
 wire \wbd_int_dat_i[26] ;
 wire \wbd_int_dat_i[27] ;
 wire \wbd_int_dat_i[28] ;
 wire \wbd_int_dat_i[29] ;
 wire \wbd_int_dat_i[2] ;
 wire \wbd_int_dat_i[30] ;
 wire \wbd_int_dat_i[31] ;
 wire \wbd_int_dat_i[3] ;
 wire \wbd_int_dat_i[4] ;
 wire \wbd_int_dat_i[5] ;
 wire \wbd_int_dat_i[6] ;
 wire \wbd_int_dat_i[7] ;
 wire \wbd_int_dat_i[8] ;
 wire \wbd_int_dat_i[9] ;
 wire \wbd_int_dat_o[0] ;
 wire \wbd_int_dat_o[10] ;
 wire \wbd_int_dat_o[11] ;
 wire \wbd_int_dat_o[12] ;
 wire \wbd_int_dat_o[13] ;
 wire \wbd_int_dat_o[14] ;
 wire \wbd_int_dat_o[15] ;
 wire \wbd_int_dat_o[16] ;
 wire \wbd_int_dat_o[17] ;
 wire \wbd_int_dat_o[18] ;
 wire \wbd_int_dat_o[19] ;
 wire \wbd_int_dat_o[1] ;
 wire \wbd_int_dat_o[20] ;
 wire \wbd_int_dat_o[21] ;
 wire \wbd_int_dat_o[22] ;
 wire \wbd_int_dat_o[23] ;
 wire \wbd_int_dat_o[24] ;
 wire \wbd_int_dat_o[25] ;
 wire \wbd_int_dat_o[26] ;
 wire \wbd_int_dat_o[27] ;
 wire \wbd_int_dat_o[28] ;
 wire \wbd_int_dat_o[29] ;
 wire \wbd_int_dat_o[2] ;
 wire \wbd_int_dat_o[30] ;
 wire \wbd_int_dat_o[31] ;
 wire \wbd_int_dat_o[3] ;
 wire \wbd_int_dat_o[4] ;
 wire \wbd_int_dat_o[5] ;
 wire \wbd_int_dat_o[6] ;
 wire \wbd_int_dat_o[7] ;
 wire \wbd_int_dat_o[8] ;
 wire \wbd_int_dat_o[9] ;
 wire wbd_int_err_o;
 wire wbd_int_rst_n;
 wire \wbd_int_sel_i[0] ;
 wire \wbd_int_sel_i[1] ;
 wire \wbd_int_sel_i[2] ;
 wire \wbd_int_sel_i[3] ;
 wire wbd_int_stb_i;
 wire wbd_int_we_i;
 wire wbd_riscv_dcache_ack_o;
 wire \wbd_riscv_dcache_adr_i[0] ;
 wire \wbd_riscv_dcache_adr_i[10] ;
 wire \wbd_riscv_dcache_adr_i[11] ;
 wire \wbd_riscv_dcache_adr_i[12] ;
 wire \wbd_riscv_dcache_adr_i[13] ;
 wire \wbd_riscv_dcache_adr_i[14] ;
 wire \wbd_riscv_dcache_adr_i[15] ;
 wire \wbd_riscv_dcache_adr_i[16] ;
 wire \wbd_riscv_dcache_adr_i[17] ;
 wire \wbd_riscv_dcache_adr_i[18] ;
 wire \wbd_riscv_dcache_adr_i[19] ;
 wire \wbd_riscv_dcache_adr_i[1] ;
 wire \wbd_riscv_dcache_adr_i[20] ;
 wire \wbd_riscv_dcache_adr_i[21] ;
 wire \wbd_riscv_dcache_adr_i[22] ;
 wire \wbd_riscv_dcache_adr_i[23] ;
 wire \wbd_riscv_dcache_adr_i[24] ;
 wire \wbd_riscv_dcache_adr_i[25] ;
 wire \wbd_riscv_dcache_adr_i[26] ;
 wire \wbd_riscv_dcache_adr_i[27] ;
 wire \wbd_riscv_dcache_adr_i[28] ;
 wire \wbd_riscv_dcache_adr_i[29] ;
 wire \wbd_riscv_dcache_adr_i[2] ;
 wire \wbd_riscv_dcache_adr_i[30] ;
 wire \wbd_riscv_dcache_adr_i[31] ;
 wire \wbd_riscv_dcache_adr_i[3] ;
 wire \wbd_riscv_dcache_adr_i[4] ;
 wire \wbd_riscv_dcache_adr_i[5] ;
 wire \wbd_riscv_dcache_adr_i[6] ;
 wire \wbd_riscv_dcache_adr_i[7] ;
 wire \wbd_riscv_dcache_adr_i[8] ;
 wire \wbd_riscv_dcache_adr_i[9] ;
 wire \wbd_riscv_dcache_bl_i[0] ;
 wire \wbd_riscv_dcache_bl_i[1] ;
 wire \wbd_riscv_dcache_bl_i[2] ;
 wire \wbd_riscv_dcache_bl_i[3] ;
 wire \wbd_riscv_dcache_bl_i[4] ;
 wire \wbd_riscv_dcache_bl_i[5] ;
 wire \wbd_riscv_dcache_bl_i[6] ;
 wire \wbd_riscv_dcache_bl_i[7] ;
 wire \wbd_riscv_dcache_bl_i[8] ;
 wire \wbd_riscv_dcache_bl_i[9] ;
 wire wbd_riscv_dcache_bry_i;
 wire \wbd_riscv_dcache_dat_i[0] ;
 wire \wbd_riscv_dcache_dat_i[10] ;
 wire \wbd_riscv_dcache_dat_i[11] ;
 wire \wbd_riscv_dcache_dat_i[12] ;
 wire \wbd_riscv_dcache_dat_i[13] ;
 wire \wbd_riscv_dcache_dat_i[14] ;
 wire \wbd_riscv_dcache_dat_i[15] ;
 wire \wbd_riscv_dcache_dat_i[16] ;
 wire \wbd_riscv_dcache_dat_i[17] ;
 wire \wbd_riscv_dcache_dat_i[18] ;
 wire \wbd_riscv_dcache_dat_i[19] ;
 wire \wbd_riscv_dcache_dat_i[1] ;
 wire \wbd_riscv_dcache_dat_i[20] ;
 wire \wbd_riscv_dcache_dat_i[21] ;
 wire \wbd_riscv_dcache_dat_i[22] ;
 wire \wbd_riscv_dcache_dat_i[23] ;
 wire \wbd_riscv_dcache_dat_i[24] ;
 wire \wbd_riscv_dcache_dat_i[25] ;
 wire \wbd_riscv_dcache_dat_i[26] ;
 wire \wbd_riscv_dcache_dat_i[27] ;
 wire \wbd_riscv_dcache_dat_i[28] ;
 wire \wbd_riscv_dcache_dat_i[29] ;
 wire \wbd_riscv_dcache_dat_i[2] ;
 wire \wbd_riscv_dcache_dat_i[30] ;
 wire \wbd_riscv_dcache_dat_i[31] ;
 wire \wbd_riscv_dcache_dat_i[3] ;
 wire \wbd_riscv_dcache_dat_i[4] ;
 wire \wbd_riscv_dcache_dat_i[5] ;
 wire \wbd_riscv_dcache_dat_i[6] ;
 wire \wbd_riscv_dcache_dat_i[7] ;
 wire \wbd_riscv_dcache_dat_i[8] ;
 wire \wbd_riscv_dcache_dat_i[9] ;
 wire \wbd_riscv_dcache_dat_o[0] ;
 wire \wbd_riscv_dcache_dat_o[10] ;
 wire \wbd_riscv_dcache_dat_o[11] ;
 wire \wbd_riscv_dcache_dat_o[12] ;
 wire \wbd_riscv_dcache_dat_o[13] ;
 wire \wbd_riscv_dcache_dat_o[14] ;
 wire \wbd_riscv_dcache_dat_o[15] ;
 wire \wbd_riscv_dcache_dat_o[16] ;
 wire \wbd_riscv_dcache_dat_o[17] ;
 wire \wbd_riscv_dcache_dat_o[18] ;
 wire \wbd_riscv_dcache_dat_o[19] ;
 wire \wbd_riscv_dcache_dat_o[1] ;
 wire \wbd_riscv_dcache_dat_o[20] ;
 wire \wbd_riscv_dcache_dat_o[21] ;
 wire \wbd_riscv_dcache_dat_o[22] ;
 wire \wbd_riscv_dcache_dat_o[23] ;
 wire \wbd_riscv_dcache_dat_o[24] ;
 wire \wbd_riscv_dcache_dat_o[25] ;
 wire \wbd_riscv_dcache_dat_o[26] ;
 wire \wbd_riscv_dcache_dat_o[27] ;
 wire \wbd_riscv_dcache_dat_o[28] ;
 wire \wbd_riscv_dcache_dat_o[29] ;
 wire \wbd_riscv_dcache_dat_o[2] ;
 wire \wbd_riscv_dcache_dat_o[30] ;
 wire \wbd_riscv_dcache_dat_o[31] ;
 wire \wbd_riscv_dcache_dat_o[3] ;
 wire \wbd_riscv_dcache_dat_o[4] ;
 wire \wbd_riscv_dcache_dat_o[5] ;
 wire \wbd_riscv_dcache_dat_o[6] ;
 wire \wbd_riscv_dcache_dat_o[7] ;
 wire \wbd_riscv_dcache_dat_o[8] ;
 wire \wbd_riscv_dcache_dat_o[9] ;
 wire wbd_riscv_dcache_err_o;
 wire wbd_riscv_dcache_lack_o;
 wire \wbd_riscv_dcache_sel_i[0] ;
 wire \wbd_riscv_dcache_sel_i[1] ;
 wire \wbd_riscv_dcache_sel_i[2] ;
 wire \wbd_riscv_dcache_sel_i[3] ;
 wire wbd_riscv_dcache_stb_i;
 wire wbd_riscv_dcache_we_i;
 wire wbd_riscv_dmem_ack_o;
 wire \wbd_riscv_dmem_adr_i[0] ;
 wire \wbd_riscv_dmem_adr_i[10] ;
 wire \wbd_riscv_dmem_adr_i[11] ;
 wire \wbd_riscv_dmem_adr_i[12] ;
 wire \wbd_riscv_dmem_adr_i[13] ;
 wire \wbd_riscv_dmem_adr_i[14] ;
 wire \wbd_riscv_dmem_adr_i[15] ;
 wire \wbd_riscv_dmem_adr_i[16] ;
 wire \wbd_riscv_dmem_adr_i[17] ;
 wire \wbd_riscv_dmem_adr_i[18] ;
 wire \wbd_riscv_dmem_adr_i[19] ;
 wire \wbd_riscv_dmem_adr_i[1] ;
 wire \wbd_riscv_dmem_adr_i[20] ;
 wire \wbd_riscv_dmem_adr_i[21] ;
 wire \wbd_riscv_dmem_adr_i[22] ;
 wire \wbd_riscv_dmem_adr_i[23] ;
 wire \wbd_riscv_dmem_adr_i[24] ;
 wire \wbd_riscv_dmem_adr_i[25] ;
 wire \wbd_riscv_dmem_adr_i[26] ;
 wire \wbd_riscv_dmem_adr_i[27] ;
 wire \wbd_riscv_dmem_adr_i[28] ;
 wire \wbd_riscv_dmem_adr_i[29] ;
 wire \wbd_riscv_dmem_adr_i[2] ;
 wire \wbd_riscv_dmem_adr_i[30] ;
 wire \wbd_riscv_dmem_adr_i[31] ;
 wire \wbd_riscv_dmem_adr_i[3] ;
 wire \wbd_riscv_dmem_adr_i[4] ;
 wire \wbd_riscv_dmem_adr_i[5] ;
 wire \wbd_riscv_dmem_adr_i[6] ;
 wire \wbd_riscv_dmem_adr_i[7] ;
 wire \wbd_riscv_dmem_adr_i[8] ;
 wire \wbd_riscv_dmem_adr_i[9] ;
 wire \wbd_riscv_dmem_dat_i[0] ;
 wire \wbd_riscv_dmem_dat_i[10] ;
 wire \wbd_riscv_dmem_dat_i[11] ;
 wire \wbd_riscv_dmem_dat_i[12] ;
 wire \wbd_riscv_dmem_dat_i[13] ;
 wire \wbd_riscv_dmem_dat_i[14] ;
 wire \wbd_riscv_dmem_dat_i[15] ;
 wire \wbd_riscv_dmem_dat_i[16] ;
 wire \wbd_riscv_dmem_dat_i[17] ;
 wire \wbd_riscv_dmem_dat_i[18] ;
 wire \wbd_riscv_dmem_dat_i[19] ;
 wire \wbd_riscv_dmem_dat_i[1] ;
 wire \wbd_riscv_dmem_dat_i[20] ;
 wire \wbd_riscv_dmem_dat_i[21] ;
 wire \wbd_riscv_dmem_dat_i[22] ;
 wire \wbd_riscv_dmem_dat_i[23] ;
 wire \wbd_riscv_dmem_dat_i[24] ;
 wire \wbd_riscv_dmem_dat_i[25] ;
 wire \wbd_riscv_dmem_dat_i[26] ;
 wire \wbd_riscv_dmem_dat_i[27] ;
 wire \wbd_riscv_dmem_dat_i[28] ;
 wire \wbd_riscv_dmem_dat_i[29] ;
 wire \wbd_riscv_dmem_dat_i[2] ;
 wire \wbd_riscv_dmem_dat_i[30] ;
 wire \wbd_riscv_dmem_dat_i[31] ;
 wire \wbd_riscv_dmem_dat_i[3] ;
 wire \wbd_riscv_dmem_dat_i[4] ;
 wire \wbd_riscv_dmem_dat_i[5] ;
 wire \wbd_riscv_dmem_dat_i[6] ;
 wire \wbd_riscv_dmem_dat_i[7] ;
 wire \wbd_riscv_dmem_dat_i[8] ;
 wire \wbd_riscv_dmem_dat_i[9] ;
 wire \wbd_riscv_dmem_dat_o[0] ;
 wire \wbd_riscv_dmem_dat_o[10] ;
 wire \wbd_riscv_dmem_dat_o[11] ;
 wire \wbd_riscv_dmem_dat_o[12] ;
 wire \wbd_riscv_dmem_dat_o[13] ;
 wire \wbd_riscv_dmem_dat_o[14] ;
 wire \wbd_riscv_dmem_dat_o[15] ;
 wire \wbd_riscv_dmem_dat_o[16] ;
 wire \wbd_riscv_dmem_dat_o[17] ;
 wire \wbd_riscv_dmem_dat_o[18] ;
 wire \wbd_riscv_dmem_dat_o[19] ;
 wire \wbd_riscv_dmem_dat_o[1] ;
 wire \wbd_riscv_dmem_dat_o[20] ;
 wire \wbd_riscv_dmem_dat_o[21] ;
 wire \wbd_riscv_dmem_dat_o[22] ;
 wire \wbd_riscv_dmem_dat_o[23] ;
 wire \wbd_riscv_dmem_dat_o[24] ;
 wire \wbd_riscv_dmem_dat_o[25] ;
 wire \wbd_riscv_dmem_dat_o[26] ;
 wire \wbd_riscv_dmem_dat_o[27] ;
 wire \wbd_riscv_dmem_dat_o[28] ;
 wire \wbd_riscv_dmem_dat_o[29] ;
 wire \wbd_riscv_dmem_dat_o[2] ;
 wire \wbd_riscv_dmem_dat_o[30] ;
 wire \wbd_riscv_dmem_dat_o[31] ;
 wire \wbd_riscv_dmem_dat_o[3] ;
 wire \wbd_riscv_dmem_dat_o[4] ;
 wire \wbd_riscv_dmem_dat_o[5] ;
 wire \wbd_riscv_dmem_dat_o[6] ;
 wire \wbd_riscv_dmem_dat_o[7] ;
 wire \wbd_riscv_dmem_dat_o[8] ;
 wire \wbd_riscv_dmem_dat_o[9] ;
 wire wbd_riscv_dmem_err_o;
 wire \wbd_riscv_dmem_sel_i[0] ;
 wire \wbd_riscv_dmem_sel_i[1] ;
 wire \wbd_riscv_dmem_sel_i[2] ;
 wire \wbd_riscv_dmem_sel_i[3] ;
 wire wbd_riscv_dmem_stb_i;
 wire wbd_riscv_dmem_we_i;
 wire wbd_riscv_icache_ack_o;
 wire \wbd_riscv_icache_adr_i[0] ;
 wire \wbd_riscv_icache_adr_i[10] ;
 wire \wbd_riscv_icache_adr_i[11] ;
 wire \wbd_riscv_icache_adr_i[12] ;
 wire \wbd_riscv_icache_adr_i[13] ;
 wire \wbd_riscv_icache_adr_i[14] ;
 wire \wbd_riscv_icache_adr_i[15] ;
 wire \wbd_riscv_icache_adr_i[16] ;
 wire \wbd_riscv_icache_adr_i[17] ;
 wire \wbd_riscv_icache_adr_i[18] ;
 wire \wbd_riscv_icache_adr_i[19] ;
 wire \wbd_riscv_icache_adr_i[1] ;
 wire \wbd_riscv_icache_adr_i[20] ;
 wire \wbd_riscv_icache_adr_i[21] ;
 wire \wbd_riscv_icache_adr_i[22] ;
 wire \wbd_riscv_icache_adr_i[23] ;
 wire \wbd_riscv_icache_adr_i[24] ;
 wire \wbd_riscv_icache_adr_i[25] ;
 wire \wbd_riscv_icache_adr_i[26] ;
 wire \wbd_riscv_icache_adr_i[27] ;
 wire \wbd_riscv_icache_adr_i[28] ;
 wire \wbd_riscv_icache_adr_i[29] ;
 wire \wbd_riscv_icache_adr_i[2] ;
 wire \wbd_riscv_icache_adr_i[30] ;
 wire \wbd_riscv_icache_adr_i[31] ;
 wire \wbd_riscv_icache_adr_i[3] ;
 wire \wbd_riscv_icache_adr_i[4] ;
 wire \wbd_riscv_icache_adr_i[5] ;
 wire \wbd_riscv_icache_adr_i[6] ;
 wire \wbd_riscv_icache_adr_i[7] ;
 wire \wbd_riscv_icache_adr_i[8] ;
 wire \wbd_riscv_icache_adr_i[9] ;
 wire \wbd_riscv_icache_bl_i[0] ;
 wire \wbd_riscv_icache_bl_i[1] ;
 wire \wbd_riscv_icache_bl_i[2] ;
 wire \wbd_riscv_icache_bl_i[3] ;
 wire \wbd_riscv_icache_bl_i[4] ;
 wire \wbd_riscv_icache_bl_i[5] ;
 wire \wbd_riscv_icache_bl_i[6] ;
 wire \wbd_riscv_icache_bl_i[7] ;
 wire \wbd_riscv_icache_bl_i[8] ;
 wire \wbd_riscv_icache_bl_i[9] ;
 wire wbd_riscv_icache_bry_i;
 wire \wbd_riscv_icache_dat_o[0] ;
 wire \wbd_riscv_icache_dat_o[10] ;
 wire \wbd_riscv_icache_dat_o[11] ;
 wire \wbd_riscv_icache_dat_o[12] ;
 wire \wbd_riscv_icache_dat_o[13] ;
 wire \wbd_riscv_icache_dat_o[14] ;
 wire \wbd_riscv_icache_dat_o[15] ;
 wire \wbd_riscv_icache_dat_o[16] ;
 wire \wbd_riscv_icache_dat_o[17] ;
 wire \wbd_riscv_icache_dat_o[18] ;
 wire \wbd_riscv_icache_dat_o[19] ;
 wire \wbd_riscv_icache_dat_o[1] ;
 wire \wbd_riscv_icache_dat_o[20] ;
 wire \wbd_riscv_icache_dat_o[21] ;
 wire \wbd_riscv_icache_dat_o[22] ;
 wire \wbd_riscv_icache_dat_o[23] ;
 wire \wbd_riscv_icache_dat_o[24] ;
 wire \wbd_riscv_icache_dat_o[25] ;
 wire \wbd_riscv_icache_dat_o[26] ;
 wire \wbd_riscv_icache_dat_o[27] ;
 wire \wbd_riscv_icache_dat_o[28] ;
 wire \wbd_riscv_icache_dat_o[29] ;
 wire \wbd_riscv_icache_dat_o[2] ;
 wire \wbd_riscv_icache_dat_o[30] ;
 wire \wbd_riscv_icache_dat_o[31] ;
 wire \wbd_riscv_icache_dat_o[3] ;
 wire \wbd_riscv_icache_dat_o[4] ;
 wire \wbd_riscv_icache_dat_o[5] ;
 wire \wbd_riscv_icache_dat_o[6] ;
 wire \wbd_riscv_icache_dat_o[7] ;
 wire \wbd_riscv_icache_dat_o[8] ;
 wire \wbd_riscv_icache_dat_o[9] ;
 wire wbd_riscv_icache_err_o;
 wire wbd_riscv_icache_lack_o;
 wire \wbd_riscv_icache_sel_i[0] ;
 wire \wbd_riscv_icache_sel_i[1] ;
 wire \wbd_riscv_icache_sel_i[2] ;
 wire \wbd_riscv_icache_sel_i[3] ;
 wire wbd_riscv_icache_stb_i;
 wire wbd_riscv_icache_we_i;
 wire wbd_spim_ack_i;
 wire \wbd_spim_adr_o[0] ;
 wire \wbd_spim_adr_o[10] ;
 wire \wbd_spim_adr_o[11] ;
 wire \wbd_spim_adr_o[12] ;
 wire \wbd_spim_adr_o[13] ;
 wire \wbd_spim_adr_o[14] ;
 wire \wbd_spim_adr_o[15] ;
 wire \wbd_spim_adr_o[16] ;
 wire \wbd_spim_adr_o[17] ;
 wire \wbd_spim_adr_o[18] ;
 wire \wbd_spim_adr_o[19] ;
 wire \wbd_spim_adr_o[1] ;
 wire \wbd_spim_adr_o[20] ;
 wire \wbd_spim_adr_o[21] ;
 wire \wbd_spim_adr_o[22] ;
 wire \wbd_spim_adr_o[23] ;
 wire \wbd_spim_adr_o[24] ;
 wire \wbd_spim_adr_o[25] ;
 wire \wbd_spim_adr_o[26] ;
 wire \wbd_spim_adr_o[27] ;
 wire \wbd_spim_adr_o[28] ;
 wire \wbd_spim_adr_o[29] ;
 wire \wbd_spim_adr_o[2] ;
 wire \wbd_spim_adr_o[30] ;
 wire \wbd_spim_adr_o[31] ;
 wire \wbd_spim_adr_o[3] ;
 wire \wbd_spim_adr_o[4] ;
 wire \wbd_spim_adr_o[5] ;
 wire \wbd_spim_adr_o[6] ;
 wire \wbd_spim_adr_o[7] ;
 wire \wbd_spim_adr_o[8] ;
 wire \wbd_spim_adr_o[9] ;
 wire \wbd_spim_bl_o[0] ;
 wire \wbd_spim_bl_o[1] ;
 wire \wbd_spim_bl_o[2] ;
 wire \wbd_spim_bl_o[3] ;
 wire \wbd_spim_bl_o[4] ;
 wire \wbd_spim_bl_o[5] ;
 wire \wbd_spim_bl_o[6] ;
 wire \wbd_spim_bl_o[7] ;
 wire \wbd_spim_bl_o[8] ;
 wire \wbd_spim_bl_o[9] ;
 wire wbd_spim_bry_o;
 wire wbd_spim_cyc_o;
 wire \wbd_spim_dat_i[0] ;
 wire \wbd_spim_dat_i[10] ;
 wire \wbd_spim_dat_i[11] ;
 wire \wbd_spim_dat_i[12] ;
 wire \wbd_spim_dat_i[13] ;
 wire \wbd_spim_dat_i[14] ;
 wire \wbd_spim_dat_i[15] ;
 wire \wbd_spim_dat_i[16] ;
 wire \wbd_spim_dat_i[17] ;
 wire \wbd_spim_dat_i[18] ;
 wire \wbd_spim_dat_i[19] ;
 wire \wbd_spim_dat_i[1] ;
 wire \wbd_spim_dat_i[20] ;
 wire \wbd_spim_dat_i[21] ;
 wire \wbd_spim_dat_i[22] ;
 wire \wbd_spim_dat_i[23] ;
 wire \wbd_spim_dat_i[24] ;
 wire \wbd_spim_dat_i[25] ;
 wire \wbd_spim_dat_i[26] ;
 wire \wbd_spim_dat_i[27] ;
 wire \wbd_spim_dat_i[28] ;
 wire \wbd_spim_dat_i[29] ;
 wire \wbd_spim_dat_i[2] ;
 wire \wbd_spim_dat_i[30] ;
 wire \wbd_spim_dat_i[31] ;
 wire \wbd_spim_dat_i[3] ;
 wire \wbd_spim_dat_i[4] ;
 wire \wbd_spim_dat_i[5] ;
 wire \wbd_spim_dat_i[6] ;
 wire \wbd_spim_dat_i[7] ;
 wire \wbd_spim_dat_i[8] ;
 wire \wbd_spim_dat_i[9] ;
 wire \wbd_spim_dat_o[0] ;
 wire \wbd_spim_dat_o[10] ;
 wire \wbd_spim_dat_o[11] ;
 wire \wbd_spim_dat_o[12] ;
 wire \wbd_spim_dat_o[13] ;
 wire \wbd_spim_dat_o[14] ;
 wire \wbd_spim_dat_o[15] ;
 wire \wbd_spim_dat_o[16] ;
 wire \wbd_spim_dat_o[17] ;
 wire \wbd_spim_dat_o[18] ;
 wire \wbd_spim_dat_o[19] ;
 wire \wbd_spim_dat_o[1] ;
 wire \wbd_spim_dat_o[20] ;
 wire \wbd_spim_dat_o[21] ;
 wire \wbd_spim_dat_o[22] ;
 wire \wbd_spim_dat_o[23] ;
 wire \wbd_spim_dat_o[24] ;
 wire \wbd_spim_dat_o[25] ;
 wire \wbd_spim_dat_o[26] ;
 wire \wbd_spim_dat_o[27] ;
 wire \wbd_spim_dat_o[28] ;
 wire \wbd_spim_dat_o[29] ;
 wire \wbd_spim_dat_o[2] ;
 wire \wbd_spim_dat_o[30] ;
 wire \wbd_spim_dat_o[31] ;
 wire \wbd_spim_dat_o[3] ;
 wire \wbd_spim_dat_o[4] ;
 wire \wbd_spim_dat_o[5] ;
 wire \wbd_spim_dat_o[6] ;
 wire \wbd_spim_dat_o[7] ;
 wire \wbd_spim_dat_o[8] ;
 wire \wbd_spim_dat_o[9] ;
 wire wbd_spim_err_i;
 wire wbd_spim_lack_i;
 wire \wbd_spim_sel_o[0] ;
 wire \wbd_spim_sel_o[1] ;
 wire \wbd_spim_sel_o[2] ;
 wire \wbd_spim_sel_o[3] ;
 wire wbd_spim_stb_o;
 wire wbd_spim_we_o;
 wire wbd_uart_ack_i;
 wire \wbd_uart_adr_o[0] ;
 wire \wbd_uart_adr_o[1] ;
 wire \wbd_uart_adr_o[2] ;
 wire \wbd_uart_adr_o[3] ;
 wire \wbd_uart_adr_o[4] ;
 wire \wbd_uart_adr_o[5] ;
 wire \wbd_uart_adr_o[6] ;
 wire \wbd_uart_adr_o[7] ;
 wire wbd_uart_cyc_o;
 wire \wbd_uart_dat_i[0] ;
 wire \wbd_uart_dat_i[10] ;
 wire \wbd_uart_dat_i[11] ;
 wire \wbd_uart_dat_i[12] ;
 wire \wbd_uart_dat_i[13] ;
 wire \wbd_uart_dat_i[14] ;
 wire \wbd_uart_dat_i[15] ;
 wire \wbd_uart_dat_i[16] ;
 wire \wbd_uart_dat_i[17] ;
 wire \wbd_uart_dat_i[18] ;
 wire \wbd_uart_dat_i[19] ;
 wire \wbd_uart_dat_i[1] ;
 wire \wbd_uart_dat_i[20] ;
 wire \wbd_uart_dat_i[21] ;
 wire \wbd_uart_dat_i[22] ;
 wire \wbd_uart_dat_i[23] ;
 wire \wbd_uart_dat_i[24] ;
 wire \wbd_uart_dat_i[25] ;
 wire \wbd_uart_dat_i[26] ;
 wire \wbd_uart_dat_i[27] ;
 wire \wbd_uart_dat_i[28] ;
 wire \wbd_uart_dat_i[29] ;
 wire \wbd_uart_dat_i[2] ;
 wire \wbd_uart_dat_i[30] ;
 wire \wbd_uart_dat_i[31] ;
 wire \wbd_uart_dat_i[3] ;
 wire \wbd_uart_dat_i[4] ;
 wire \wbd_uart_dat_i[5] ;
 wire \wbd_uart_dat_i[6] ;
 wire \wbd_uart_dat_i[7] ;
 wire \wbd_uart_dat_i[8] ;
 wire \wbd_uart_dat_i[9] ;
 wire \wbd_uart_dat_o[0] ;
 wire \wbd_uart_dat_o[10] ;
 wire \wbd_uart_dat_o[11] ;
 wire \wbd_uart_dat_o[12] ;
 wire \wbd_uart_dat_o[13] ;
 wire \wbd_uart_dat_o[14] ;
 wire \wbd_uart_dat_o[15] ;
 wire \wbd_uart_dat_o[16] ;
 wire \wbd_uart_dat_o[17] ;
 wire \wbd_uart_dat_o[18] ;
 wire \wbd_uart_dat_o[19] ;
 wire \wbd_uart_dat_o[1] ;
 wire \wbd_uart_dat_o[20] ;
 wire \wbd_uart_dat_o[21] ;
 wire \wbd_uart_dat_o[22] ;
 wire \wbd_uart_dat_o[23] ;
 wire \wbd_uart_dat_o[24] ;
 wire \wbd_uart_dat_o[25] ;
 wire \wbd_uart_dat_o[26] ;
 wire \wbd_uart_dat_o[27] ;
 wire \wbd_uart_dat_o[28] ;
 wire \wbd_uart_dat_o[29] ;
 wire \wbd_uart_dat_o[2] ;
 wire \wbd_uart_dat_o[30] ;
 wire \wbd_uart_dat_o[31] ;
 wire \wbd_uart_dat_o[3] ;
 wire \wbd_uart_dat_o[4] ;
 wire \wbd_uart_dat_o[5] ;
 wire \wbd_uart_dat_o[6] ;
 wire \wbd_uart_dat_o[7] ;
 wire \wbd_uart_dat_o[8] ;
 wire \wbd_uart_dat_o[9] ;
 wire \wbd_uart_sel_o[0] ;
 wire \wbd_uart_sel_o[1] ;
 wire \wbd_uart_sel_o[2] ;
 wire \wbd_uart_sel_o[3] ;
 wire wbd_uart_stb_o;
 wire wbd_uart_we_o;

 DFFRAM u_dcache_1KB_mem0 (.CLK(dcache_dffram_clk0),
    .EN(dcache_dffram_cs0),
    .VGND(vssd1),
    .VPWR(vccd1),
    .A({\dcache_dffram_addr0[7] ,
    \dcache_dffram_addr0[6] ,
    \dcache_dffram_addr0[5] ,
    \dcache_dffram_addr0[4] ,
    \dcache_dffram_addr0[3] ,
    \dcache_dffram_addr0[2] ,
    \dcache_dffram_addr0[1] ,
    \dcache_dffram_addr0[0] }),
    .Di({\dcache_dffram_din0[31] ,
    \dcache_dffram_din0[30] ,
    \dcache_dffram_din0[29] ,
    \dcache_dffram_din0[28] ,
    \dcache_dffram_din0[27] ,
    \dcache_dffram_din0[26] ,
    \dcache_dffram_din0[25] ,
    \dcache_dffram_din0[24] ,
    \dcache_dffram_din0[23] ,
    \dcache_dffram_din0[22] ,
    \dcache_dffram_din0[21] ,
    \dcache_dffram_din0[20] ,
    \dcache_dffram_din0[19] ,
    \dcache_dffram_din0[18] ,
    \dcache_dffram_din0[17] ,
    \dcache_dffram_din0[16] ,
    \dcache_dffram_din0[15] ,
    \dcache_dffram_din0[14] ,
    \dcache_dffram_din0[13] ,
    \dcache_dffram_din0[12] ,
    \dcache_dffram_din0[11] ,
    \dcache_dffram_din0[10] ,
    \dcache_dffram_din0[9] ,
    \dcache_dffram_din0[8] ,
    \dcache_dffram_din0[7] ,
    \dcache_dffram_din0[6] ,
    \dcache_dffram_din0[5] ,
    \dcache_dffram_din0[4] ,
    \dcache_dffram_din0[3] ,
    \dcache_dffram_din0[2] ,
    \dcache_dffram_din0[1] ,
    \dcache_dffram_din0[0] }),
    .Do({\dcache_dffram_dout0[31] ,
    \dcache_dffram_dout0[30] ,
    \dcache_dffram_dout0[29] ,
    \dcache_dffram_dout0[28] ,
    \dcache_dffram_dout0[27] ,
    \dcache_dffram_dout0[26] ,
    \dcache_dffram_dout0[25] ,
    \dcache_dffram_dout0[24] ,
    \dcache_dffram_dout0[23] ,
    \dcache_dffram_dout0[22] ,
    \dcache_dffram_dout0[21] ,
    \dcache_dffram_dout0[20] ,
    \dcache_dffram_dout0[19] ,
    \dcache_dffram_dout0[18] ,
    \dcache_dffram_dout0[17] ,
    \dcache_dffram_dout0[16] ,
    \dcache_dffram_dout0[15] ,
    \dcache_dffram_dout0[14] ,
    \dcache_dffram_dout0[13] ,
    \dcache_dffram_dout0[12] ,
    \dcache_dffram_dout0[11] ,
    \dcache_dffram_dout0[10] ,
    \dcache_dffram_dout0[9] ,
    \dcache_dffram_dout0[8] ,
    \dcache_dffram_dout0[7] ,
    \dcache_dffram_dout0[6] ,
    \dcache_dffram_dout0[5] ,
    \dcache_dffram_dout0[4] ,
    \dcache_dffram_dout0[3] ,
    \dcache_dffram_dout0[2] ,
    \dcache_dffram_dout0[1] ,
    \dcache_dffram_dout0[0] }),
    .WE({\dcache_dffram_wmask0[3] ,
    \dcache_dffram_wmask0[2] ,
    \dcache_dffram_wmask0[1] ,
    \dcache_dffram_wmask0[0] }));
 DFFRAM u_dcache_1KB_mem1 (.CLK(dcache_dffram_clk1),
    .EN(dcache_dffram_cs1),
    .VGND(vssd1),
    .VPWR(vccd1),
    .A({\dcache_dffram_addr1[7] ,
    \dcache_dffram_addr1[6] ,
    \dcache_dffram_addr1[5] ,
    \dcache_dffram_addr1[4] ,
    \dcache_dffram_addr1[3] ,
    \dcache_dffram_addr1[2] ,
    \dcache_dffram_addr1[1] ,
    \dcache_dffram_addr1[0] }),
    .Di({\dcache_dffram_din1[31] ,
    \dcache_dffram_din1[30] ,
    \dcache_dffram_din1[29] ,
    \dcache_dffram_din1[28] ,
    \dcache_dffram_din1[27] ,
    \dcache_dffram_din1[26] ,
    \dcache_dffram_din1[25] ,
    \dcache_dffram_din1[24] ,
    \dcache_dffram_din1[23] ,
    \dcache_dffram_din1[22] ,
    \dcache_dffram_din1[21] ,
    \dcache_dffram_din1[20] ,
    \dcache_dffram_din1[19] ,
    \dcache_dffram_din1[18] ,
    \dcache_dffram_din1[17] ,
    \dcache_dffram_din1[16] ,
    \dcache_dffram_din1[15] ,
    \dcache_dffram_din1[14] ,
    \dcache_dffram_din1[13] ,
    \dcache_dffram_din1[12] ,
    \dcache_dffram_din1[11] ,
    \dcache_dffram_din1[10] ,
    \dcache_dffram_din1[9] ,
    \dcache_dffram_din1[8] ,
    \dcache_dffram_din1[7] ,
    \dcache_dffram_din1[6] ,
    \dcache_dffram_din1[5] ,
    \dcache_dffram_din1[4] ,
    \dcache_dffram_din1[3] ,
    \dcache_dffram_din1[2] ,
    \dcache_dffram_din1[1] ,
    \dcache_dffram_din1[0] }),
    .Do({\dcache_dffram_dout1[31] ,
    \dcache_dffram_dout1[30] ,
    \dcache_dffram_dout1[29] ,
    \dcache_dffram_dout1[28] ,
    \dcache_dffram_dout1[27] ,
    \dcache_dffram_dout1[26] ,
    \dcache_dffram_dout1[25] ,
    \dcache_dffram_dout1[24] ,
    \dcache_dffram_dout1[23] ,
    \dcache_dffram_dout1[22] ,
    \dcache_dffram_dout1[21] ,
    \dcache_dffram_dout1[20] ,
    \dcache_dffram_dout1[19] ,
    \dcache_dffram_dout1[18] ,
    \dcache_dffram_dout1[17] ,
    \dcache_dffram_dout1[16] ,
    \dcache_dffram_dout1[15] ,
    \dcache_dffram_dout1[14] ,
    \dcache_dffram_dout1[13] ,
    \dcache_dffram_dout1[12] ,
    \dcache_dffram_dout1[11] ,
    \dcache_dffram_dout1[10] ,
    \dcache_dffram_dout1[9] ,
    \dcache_dffram_dout1[8] ,
    \dcache_dffram_dout1[7] ,
    \dcache_dffram_dout1[6] ,
    \dcache_dffram_dout1[5] ,
    \dcache_dffram_dout1[4] ,
    \dcache_dffram_dout1[3] ,
    \dcache_dffram_dout1[2] ,
    \dcache_dffram_dout1[1] ,
    \dcache_dffram_dout1[0] }),
    .WE({\dcache_dffram_wmask1[3] ,
    \dcache_dffram_wmask1[2] ,
    \dcache_dffram_wmask1[1] ,
    \dcache_dffram_wmask1[0] }));
 DFFRAM u_icache_1KB_mem0 (.CLK(icache_dffram_clk0),
    .EN(icache_dffram_cs0),
    .VGND(vssd1),
    .VPWR(vccd1),
    .A({\icache_dffram_addr0[7] ,
    \icache_dffram_addr0[6] ,
    \icache_dffram_addr0[5] ,
    \icache_dffram_addr0[4] ,
    \icache_dffram_addr0[3] ,
    \icache_dffram_addr0[2] ,
    \icache_dffram_addr0[1] ,
    \icache_dffram_addr0[0] }),
    .Di({\icache_dffram_din0[31] ,
    \icache_dffram_din0[30] ,
    \icache_dffram_din0[29] ,
    \icache_dffram_din0[28] ,
    \icache_dffram_din0[27] ,
    \icache_dffram_din0[26] ,
    \icache_dffram_din0[25] ,
    \icache_dffram_din0[24] ,
    \icache_dffram_din0[23] ,
    \icache_dffram_din0[22] ,
    \icache_dffram_din0[21] ,
    \icache_dffram_din0[20] ,
    \icache_dffram_din0[19] ,
    \icache_dffram_din0[18] ,
    \icache_dffram_din0[17] ,
    \icache_dffram_din0[16] ,
    \icache_dffram_din0[15] ,
    \icache_dffram_din0[14] ,
    \icache_dffram_din0[13] ,
    \icache_dffram_din0[12] ,
    \icache_dffram_din0[11] ,
    \icache_dffram_din0[10] ,
    \icache_dffram_din0[9] ,
    \icache_dffram_din0[8] ,
    \icache_dffram_din0[7] ,
    \icache_dffram_din0[6] ,
    \icache_dffram_din0[5] ,
    \icache_dffram_din0[4] ,
    \icache_dffram_din0[3] ,
    \icache_dffram_din0[2] ,
    \icache_dffram_din0[1] ,
    \icache_dffram_din0[0] }),
    .Do({\icache_dffram_dout0[31] ,
    \icache_dffram_dout0[30] ,
    \icache_dffram_dout0[29] ,
    \icache_dffram_dout0[28] ,
    \icache_dffram_dout0[27] ,
    \icache_dffram_dout0[26] ,
    \icache_dffram_dout0[25] ,
    \icache_dffram_dout0[24] ,
    \icache_dffram_dout0[23] ,
    \icache_dffram_dout0[22] ,
    \icache_dffram_dout0[21] ,
    \icache_dffram_dout0[20] ,
    \icache_dffram_dout0[19] ,
    \icache_dffram_dout0[18] ,
    \icache_dffram_dout0[17] ,
    \icache_dffram_dout0[16] ,
    \icache_dffram_dout0[15] ,
    \icache_dffram_dout0[14] ,
    \icache_dffram_dout0[13] ,
    \icache_dffram_dout0[12] ,
    \icache_dffram_dout0[11] ,
    \icache_dffram_dout0[10] ,
    \icache_dffram_dout0[9] ,
    \icache_dffram_dout0[8] ,
    \icache_dffram_dout0[7] ,
    \icache_dffram_dout0[6] ,
    \icache_dffram_dout0[5] ,
    \icache_dffram_dout0[4] ,
    \icache_dffram_dout0[3] ,
    \icache_dffram_dout0[2] ,
    \icache_dffram_dout0[1] ,
    \icache_dffram_dout0[0] }),
    .WE({\icache_dffram_wmask0[3] ,
    \icache_dffram_wmask0[2] ,
    \icache_dffram_wmask0[1] ,
    \icache_dffram_wmask0[0] }));
 DFFRAM u_icache_1KB_mem1 (.CLK(icache_dffram_clk1),
    .EN(icache_dffram_cs1),
    .VGND(vssd1),
    .VPWR(vccd1),
    .A({\icache_dffram_addr1[7] ,
    \icache_dffram_addr1[6] ,
    \icache_dffram_addr1[5] ,
    \icache_dffram_addr1[4] ,
    \icache_dffram_addr1[3] ,
    \icache_dffram_addr1[2] ,
    \icache_dffram_addr1[1] ,
    \icache_dffram_addr1[0] }),
    .Di({\icache_dffram_din1[31] ,
    \icache_dffram_din1[30] ,
    \icache_dffram_din1[29] ,
    \icache_dffram_din1[28] ,
    \icache_dffram_din1[27] ,
    \icache_dffram_din1[26] ,
    \icache_dffram_din1[25] ,
    \icache_dffram_din1[24] ,
    \icache_dffram_din1[23] ,
    \icache_dffram_din1[22] ,
    \icache_dffram_din1[21] ,
    \icache_dffram_din1[20] ,
    \icache_dffram_din1[19] ,
    \icache_dffram_din1[18] ,
    \icache_dffram_din1[17] ,
    \icache_dffram_din1[16] ,
    \icache_dffram_din1[15] ,
    \icache_dffram_din1[14] ,
    \icache_dffram_din1[13] ,
    \icache_dffram_din1[12] ,
    \icache_dffram_din1[11] ,
    \icache_dffram_din1[10] ,
    \icache_dffram_din1[9] ,
    \icache_dffram_din1[8] ,
    \icache_dffram_din1[7] ,
    \icache_dffram_din1[6] ,
    \icache_dffram_din1[5] ,
    \icache_dffram_din1[4] ,
    \icache_dffram_din1[3] ,
    \icache_dffram_din1[2] ,
    \icache_dffram_din1[1] ,
    \icache_dffram_din1[0] }),
    .Do({\icache_dffram_dout1[31] ,
    \icache_dffram_dout1[30] ,
    \icache_dffram_dout1[29] ,
    \icache_dffram_dout1[28] ,
    \icache_dffram_dout1[27] ,
    \icache_dffram_dout1[26] ,
    \icache_dffram_dout1[25] ,
    \icache_dffram_dout1[24] ,
    \icache_dffram_dout1[23] ,
    \icache_dffram_dout1[22] ,
    \icache_dffram_dout1[21] ,
    \icache_dffram_dout1[20] ,
    \icache_dffram_dout1[19] ,
    \icache_dffram_dout1[18] ,
    \icache_dffram_dout1[17] ,
    \icache_dffram_dout1[16] ,
    \icache_dffram_dout1[15] ,
    \icache_dffram_dout1[14] ,
    \icache_dffram_dout1[13] ,
    \icache_dffram_dout1[12] ,
    \icache_dffram_dout1[11] ,
    \icache_dffram_dout1[10] ,
    \icache_dffram_dout1[9] ,
    \icache_dffram_dout1[8] ,
    \icache_dffram_dout1[7] ,
    \icache_dffram_dout1[6] ,
    \icache_dffram_dout1[5] ,
    \icache_dffram_dout1[4] ,
    \icache_dffram_dout1[3] ,
    \icache_dffram_dout1[2] ,
    \icache_dffram_dout1[1] ,
    \icache_dffram_dout1[0] }),
    .WE({\icache_dffram_wmask1[3] ,
    \icache_dffram_wmask1[2] ,
    \icache_dffram_wmask1[1] ,
    \icache_dffram_wmask1[0] }));
 wb_interconnect u_intercon (.clk_i(wbd_clk_wi_skew),
    .m0_wbd_ack_o(wbd_int_ack_o),
    .m0_wbd_cyc_i(wbd_int_cyc_i),
    .m0_wbd_err_o(wbd_int_err_o),
    .m0_wbd_stb_i(wbd_int_stb_i),
    .m0_wbd_we_i(wbd_int_we_i),
    .m1_wbd_ack_o(wbd_riscv_dmem_ack_o),
    .m1_wbd_cyc_i(wbd_riscv_dmem_stb_i),
    .m1_wbd_err_o(wbd_riscv_dmem_err_o),
    .m1_wbd_stb_i(wbd_riscv_dmem_stb_i),
    .m1_wbd_we_i(wbd_riscv_dmem_we_i),
    .m2_wbd_ack_o(wbd_riscv_dcache_ack_o),
    .m2_wbd_bry_i(wbd_riscv_dcache_bry_i),
    .m2_wbd_cyc_i(wbd_riscv_dcache_stb_i),
    .m2_wbd_err_o(wbd_riscv_dcache_err_o),
    .m2_wbd_lack_o(wbd_riscv_dcache_lack_o),
    .m2_wbd_stb_i(wbd_riscv_dcache_stb_i),
    .m2_wbd_we_i(wbd_riscv_dcache_we_i),
    .m3_wbd_ack_o(wbd_riscv_icache_ack_o),
    .m3_wbd_bry_i(wbd_riscv_icache_bry_i),
    .m3_wbd_cyc_i(wbd_riscv_icache_stb_i),
    .m3_wbd_err_o(wbd_riscv_icache_err_o),
    .m3_wbd_lack_o(wbd_riscv_icache_lack_o),
    .m3_wbd_stb_i(wbd_riscv_icache_stb_i),
    .m3_wbd_we_i(wbd_riscv_icache_we_i),
    .rst_n(wbd_int_rst_n),
    .s0_wbd_ack_i(wbd_spim_ack_i),
    .s0_wbd_bry_o(wbd_spim_bry_o),
    .s0_wbd_cyc_o(wbd_spim_cyc_o),
    .s0_wbd_lack_i(wbd_spim_lack_i),
    .s0_wbd_stb_o(wbd_spim_stb_o),
    .s0_wbd_we_o(wbd_spim_we_o),
    .s1_wbd_ack_i(wbd_uart_ack_i),
    .s1_wbd_cyc_o(wbd_uart_cyc_o),
    .s1_wbd_stb_o(wbd_uart_stb_o),
    .s1_wbd_we_o(wbd_uart_we_o),
    .s2_wbd_ack_i(wbd_glbl_ack_i),
    .s2_wbd_cyc_o(wbd_glbl_cyc_o),
    .s2_wbd_stb_o(wbd_glbl_stb_o),
    .s2_wbd_we_o(wbd_glbl_we_o),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wbd_clk_int(wbd_clk_int),
    .wbd_clk_wi(wbd_clk_wi_skew),
    .cfg_cska_wi({\cfg_clk_ctrl1[3] ,
    \cfg_clk_ctrl1[2] ,
    \cfg_clk_ctrl1[1] ,
    \cfg_clk_ctrl1[0] }),
    .ch_clk_in({wbd_clk_int,
    wbd_clk_int,
    wbd_clk_int,
    wbd_clk_int}),
    .ch_clk_out({wbd_clk_pinmux_rp,
    wbd_clk_uart_rp,
    wbd_clk_qspi_rp,
    wbd_clk_risc_rp}),
    .ch_data_in({soft_irq,
    \irq_lines[15] ,
    \irq_lines[14] ,
    \irq_lines[13] ,
    \irq_lines[12] ,
    \irq_lines[11] ,
    \irq_lines[10] ,
    \irq_lines[9] ,
    \irq_lines[8] ,
    \irq_lines[7] ,
    \irq_lines[6] ,
    \irq_lines[5] ,
    \irq_lines[4] ,
    \irq_lines[3] ,
    \irq_lines[2] ,
    \irq_lines[1] ,
    \irq_lines[0] ,
    \cfg_clk_ctrl1[27] ,
    \cfg_clk_ctrl1[26] ,
    \cfg_clk_ctrl1[25] ,
    \cfg_clk_ctrl1[24] ,
    \cfg_clk_ctrl1[23] ,
    \cfg_clk_ctrl1[22] ,
    \cfg_clk_ctrl1[21] ,
    \cfg_clk_ctrl1[20] ,
    \cfg_clk_ctrl1[19] ,
    \cfg_clk_ctrl1[18] ,
    \cfg_clk_ctrl1[17] ,
    \cfg_clk_ctrl1[16] ,
    \cfg_clk_ctrl1[15] ,
    \cfg_clk_ctrl1[14] ,
    \cfg_clk_ctrl1[13] ,
    \cfg_clk_ctrl1[12] ,
    \cfg_clk_ctrl1[11] ,
    \cfg_clk_ctrl1[10] ,
    \cfg_clk_ctrl1[9] ,
    \cfg_clk_ctrl1[8] }),
    .ch_data_out({soft_irq_rp,
    \irq_lines_rp[15] ,
    \irq_lines_rp[14] ,
    \irq_lines_rp[13] ,
    \irq_lines_rp[12] ,
    \irq_lines_rp[11] ,
    \irq_lines_rp[10] ,
    \irq_lines_rp[9] ,
    \irq_lines_rp[8] ,
    \irq_lines_rp[7] ,
    \irq_lines_rp[6] ,
    \irq_lines_rp[5] ,
    \irq_lines_rp[4] ,
    \irq_lines_rp[3] ,
    \irq_lines_rp[2] ,
    \irq_lines_rp[1] ,
    \irq_lines_rp[0] ,
    \cfg_cska_qspi_co_rp[3] ,
    \cfg_cska_qspi_co_rp[2] ,
    \cfg_cska_qspi_co_rp[1] ,
    \cfg_cska_qspi_co_rp[0] ,
    \cfg_cska_pinmux_rp[3] ,
    \cfg_cska_pinmux_rp[2] ,
    \cfg_cska_pinmux_rp[1] ,
    \cfg_cska_pinmux_rp[0] ,
    \cfg_cska_uart_rp[3] ,
    \cfg_cska_uart_rp[2] ,
    \cfg_cska_uart_rp[1] ,
    \cfg_cska_uart_rp[0] ,
    \cfg_cska_qspi_rp[3] ,
    \cfg_cska_qspi_rp[2] ,
    \cfg_cska_qspi_rp[1] ,
    \cfg_cska_qspi_rp[0] ,
    \cfg_cska_riscv_rp[3] ,
    \cfg_cska_riscv_rp[2] ,
    \cfg_cska_riscv_rp[1] ,
    \cfg_cska_riscv_rp[0] }),
    .m0_wbd_adr_i({\wbd_int_adr_i[31] ,
    \wbd_int_adr_i[30] ,
    \wbd_int_adr_i[29] ,
    \wbd_int_adr_i[28] ,
    \wbd_int_adr_i[27] ,
    \wbd_int_adr_i[26] ,
    \wbd_int_adr_i[25] ,
    \wbd_int_adr_i[24] ,
    \wbd_int_adr_i[23] ,
    \wbd_int_adr_i[22] ,
    \wbd_int_adr_i[21] ,
    \wbd_int_adr_i[20] ,
    \wbd_int_adr_i[19] ,
    \wbd_int_adr_i[18] ,
    \wbd_int_adr_i[17] ,
    \wbd_int_adr_i[16] ,
    \wbd_int_adr_i[15] ,
    \wbd_int_adr_i[14] ,
    \wbd_int_adr_i[13] ,
    \wbd_int_adr_i[12] ,
    \wbd_int_adr_i[11] ,
    \wbd_int_adr_i[10] ,
    \wbd_int_adr_i[9] ,
    \wbd_int_adr_i[8] ,
    \wbd_int_adr_i[7] ,
    \wbd_int_adr_i[6] ,
    \wbd_int_adr_i[5] ,
    \wbd_int_adr_i[4] ,
    \wbd_int_adr_i[3] ,
    \wbd_int_adr_i[2] ,
    \wbd_int_adr_i[1] ,
    \wbd_int_adr_i[0] }),
    .m0_wbd_dat_i({\wbd_int_dat_i[31] ,
    \wbd_int_dat_i[30] ,
    \wbd_int_dat_i[29] ,
    \wbd_int_dat_i[28] ,
    \wbd_int_dat_i[27] ,
    \wbd_int_dat_i[26] ,
    \wbd_int_dat_i[25] ,
    \wbd_int_dat_i[24] ,
    \wbd_int_dat_i[23] ,
    \wbd_int_dat_i[22] ,
    \wbd_int_dat_i[21] ,
    \wbd_int_dat_i[20] ,
    \wbd_int_dat_i[19] ,
    \wbd_int_dat_i[18] ,
    \wbd_int_dat_i[17] ,
    \wbd_int_dat_i[16] ,
    \wbd_int_dat_i[15] ,
    \wbd_int_dat_i[14] ,
    \wbd_int_dat_i[13] ,
    \wbd_int_dat_i[12] ,
    \wbd_int_dat_i[11] ,
    \wbd_int_dat_i[10] ,
    \wbd_int_dat_i[9] ,
    \wbd_int_dat_i[8] ,
    \wbd_int_dat_i[7] ,
    \wbd_int_dat_i[6] ,
    \wbd_int_dat_i[5] ,
    \wbd_int_dat_i[4] ,
    \wbd_int_dat_i[3] ,
    \wbd_int_dat_i[2] ,
    \wbd_int_dat_i[1] ,
    \wbd_int_dat_i[0] }),
    .m0_wbd_dat_o({\wbd_int_dat_o[31] ,
    \wbd_int_dat_o[30] ,
    \wbd_int_dat_o[29] ,
    \wbd_int_dat_o[28] ,
    \wbd_int_dat_o[27] ,
    \wbd_int_dat_o[26] ,
    \wbd_int_dat_o[25] ,
    \wbd_int_dat_o[24] ,
    \wbd_int_dat_o[23] ,
    \wbd_int_dat_o[22] ,
    \wbd_int_dat_o[21] ,
    \wbd_int_dat_o[20] ,
    \wbd_int_dat_o[19] ,
    \wbd_int_dat_o[18] ,
    \wbd_int_dat_o[17] ,
    \wbd_int_dat_o[16] ,
    \wbd_int_dat_o[15] ,
    \wbd_int_dat_o[14] ,
    \wbd_int_dat_o[13] ,
    \wbd_int_dat_o[12] ,
    \wbd_int_dat_o[11] ,
    \wbd_int_dat_o[10] ,
    \wbd_int_dat_o[9] ,
    \wbd_int_dat_o[8] ,
    \wbd_int_dat_o[7] ,
    \wbd_int_dat_o[6] ,
    \wbd_int_dat_o[5] ,
    \wbd_int_dat_o[4] ,
    \wbd_int_dat_o[3] ,
    \wbd_int_dat_o[2] ,
    \wbd_int_dat_o[1] ,
    \wbd_int_dat_o[0] }),
    .m0_wbd_sel_i({\wbd_int_sel_i[3] ,
    \wbd_int_sel_i[2] ,
    \wbd_int_sel_i[1] ,
    \wbd_int_sel_i[0] }),
    .m1_wbd_adr_i({\wbd_riscv_dmem_adr_i[31] ,
    \wbd_riscv_dmem_adr_i[30] ,
    \wbd_riscv_dmem_adr_i[29] ,
    \wbd_riscv_dmem_adr_i[28] ,
    \wbd_riscv_dmem_adr_i[27] ,
    \wbd_riscv_dmem_adr_i[26] ,
    \wbd_riscv_dmem_adr_i[25] ,
    \wbd_riscv_dmem_adr_i[24] ,
    \wbd_riscv_dmem_adr_i[23] ,
    \wbd_riscv_dmem_adr_i[22] ,
    \wbd_riscv_dmem_adr_i[21] ,
    \wbd_riscv_dmem_adr_i[20] ,
    \wbd_riscv_dmem_adr_i[19] ,
    \wbd_riscv_dmem_adr_i[18] ,
    \wbd_riscv_dmem_adr_i[17] ,
    \wbd_riscv_dmem_adr_i[16] ,
    \wbd_riscv_dmem_adr_i[15] ,
    \wbd_riscv_dmem_adr_i[14] ,
    \wbd_riscv_dmem_adr_i[13] ,
    \wbd_riscv_dmem_adr_i[12] ,
    \wbd_riscv_dmem_adr_i[11] ,
    \wbd_riscv_dmem_adr_i[10] ,
    \wbd_riscv_dmem_adr_i[9] ,
    \wbd_riscv_dmem_adr_i[8] ,
    \wbd_riscv_dmem_adr_i[7] ,
    \wbd_riscv_dmem_adr_i[6] ,
    \wbd_riscv_dmem_adr_i[5] ,
    \wbd_riscv_dmem_adr_i[4] ,
    \wbd_riscv_dmem_adr_i[3] ,
    \wbd_riscv_dmem_adr_i[2] ,
    \wbd_riscv_dmem_adr_i[1] ,
    \wbd_riscv_dmem_adr_i[0] }),
    .m1_wbd_dat_i({\wbd_riscv_dmem_dat_i[31] ,
    \wbd_riscv_dmem_dat_i[30] ,
    \wbd_riscv_dmem_dat_i[29] ,
    \wbd_riscv_dmem_dat_i[28] ,
    \wbd_riscv_dmem_dat_i[27] ,
    \wbd_riscv_dmem_dat_i[26] ,
    \wbd_riscv_dmem_dat_i[25] ,
    \wbd_riscv_dmem_dat_i[24] ,
    \wbd_riscv_dmem_dat_i[23] ,
    \wbd_riscv_dmem_dat_i[22] ,
    \wbd_riscv_dmem_dat_i[21] ,
    \wbd_riscv_dmem_dat_i[20] ,
    \wbd_riscv_dmem_dat_i[19] ,
    \wbd_riscv_dmem_dat_i[18] ,
    \wbd_riscv_dmem_dat_i[17] ,
    \wbd_riscv_dmem_dat_i[16] ,
    \wbd_riscv_dmem_dat_i[15] ,
    \wbd_riscv_dmem_dat_i[14] ,
    \wbd_riscv_dmem_dat_i[13] ,
    \wbd_riscv_dmem_dat_i[12] ,
    \wbd_riscv_dmem_dat_i[11] ,
    \wbd_riscv_dmem_dat_i[10] ,
    \wbd_riscv_dmem_dat_i[9] ,
    \wbd_riscv_dmem_dat_i[8] ,
    \wbd_riscv_dmem_dat_i[7] ,
    \wbd_riscv_dmem_dat_i[6] ,
    \wbd_riscv_dmem_dat_i[5] ,
    \wbd_riscv_dmem_dat_i[4] ,
    \wbd_riscv_dmem_dat_i[3] ,
    \wbd_riscv_dmem_dat_i[2] ,
    \wbd_riscv_dmem_dat_i[1] ,
    \wbd_riscv_dmem_dat_i[0] }),
    .m1_wbd_dat_o({\wbd_riscv_dmem_dat_o[31] ,
    \wbd_riscv_dmem_dat_o[30] ,
    \wbd_riscv_dmem_dat_o[29] ,
    \wbd_riscv_dmem_dat_o[28] ,
    \wbd_riscv_dmem_dat_o[27] ,
    \wbd_riscv_dmem_dat_o[26] ,
    \wbd_riscv_dmem_dat_o[25] ,
    \wbd_riscv_dmem_dat_o[24] ,
    \wbd_riscv_dmem_dat_o[23] ,
    \wbd_riscv_dmem_dat_o[22] ,
    \wbd_riscv_dmem_dat_o[21] ,
    \wbd_riscv_dmem_dat_o[20] ,
    \wbd_riscv_dmem_dat_o[19] ,
    \wbd_riscv_dmem_dat_o[18] ,
    \wbd_riscv_dmem_dat_o[17] ,
    \wbd_riscv_dmem_dat_o[16] ,
    \wbd_riscv_dmem_dat_o[15] ,
    \wbd_riscv_dmem_dat_o[14] ,
    \wbd_riscv_dmem_dat_o[13] ,
    \wbd_riscv_dmem_dat_o[12] ,
    \wbd_riscv_dmem_dat_o[11] ,
    \wbd_riscv_dmem_dat_o[10] ,
    \wbd_riscv_dmem_dat_o[9] ,
    \wbd_riscv_dmem_dat_o[8] ,
    \wbd_riscv_dmem_dat_o[7] ,
    \wbd_riscv_dmem_dat_o[6] ,
    \wbd_riscv_dmem_dat_o[5] ,
    \wbd_riscv_dmem_dat_o[4] ,
    \wbd_riscv_dmem_dat_o[3] ,
    \wbd_riscv_dmem_dat_o[2] ,
    \wbd_riscv_dmem_dat_o[1] ,
    \wbd_riscv_dmem_dat_o[0] }),
    .m1_wbd_sel_i({\wbd_riscv_dmem_sel_i[3] ,
    \wbd_riscv_dmem_sel_i[2] ,
    \wbd_riscv_dmem_sel_i[1] ,
    \wbd_riscv_dmem_sel_i[0] }),
    .m2_wbd_adr_i({\wbd_riscv_dcache_adr_i[31] ,
    \wbd_riscv_dcache_adr_i[30] ,
    \wbd_riscv_dcache_adr_i[29] ,
    \wbd_riscv_dcache_adr_i[28] ,
    \wbd_riscv_dcache_adr_i[27] ,
    \wbd_riscv_dcache_adr_i[26] ,
    \wbd_riscv_dcache_adr_i[25] ,
    \wbd_riscv_dcache_adr_i[24] ,
    \wbd_riscv_dcache_adr_i[23] ,
    \wbd_riscv_dcache_adr_i[22] ,
    \wbd_riscv_dcache_adr_i[21] ,
    \wbd_riscv_dcache_adr_i[20] ,
    \wbd_riscv_dcache_adr_i[19] ,
    \wbd_riscv_dcache_adr_i[18] ,
    \wbd_riscv_dcache_adr_i[17] ,
    \wbd_riscv_dcache_adr_i[16] ,
    \wbd_riscv_dcache_adr_i[15] ,
    \wbd_riscv_dcache_adr_i[14] ,
    \wbd_riscv_dcache_adr_i[13] ,
    \wbd_riscv_dcache_adr_i[12] ,
    \wbd_riscv_dcache_adr_i[11] ,
    \wbd_riscv_dcache_adr_i[10] ,
    \wbd_riscv_dcache_adr_i[9] ,
    \wbd_riscv_dcache_adr_i[8] ,
    \wbd_riscv_dcache_adr_i[7] ,
    \wbd_riscv_dcache_adr_i[6] ,
    \wbd_riscv_dcache_adr_i[5] ,
    \wbd_riscv_dcache_adr_i[4] ,
    \wbd_riscv_dcache_adr_i[3] ,
    \wbd_riscv_dcache_adr_i[2] ,
    \wbd_riscv_dcache_adr_i[1] ,
    \wbd_riscv_dcache_adr_i[0] }),
    .m2_wbd_bl_i({\wbd_riscv_dcache_bl_i[9] ,
    \wbd_riscv_dcache_bl_i[8] ,
    \wbd_riscv_dcache_bl_i[7] ,
    \wbd_riscv_dcache_bl_i[6] ,
    \wbd_riscv_dcache_bl_i[5] ,
    \wbd_riscv_dcache_bl_i[4] ,
    \wbd_riscv_dcache_bl_i[3] ,
    \wbd_riscv_dcache_bl_i[2] ,
    \wbd_riscv_dcache_bl_i[1] ,
    \wbd_riscv_dcache_bl_i[0] }),
    .m2_wbd_dat_i({\wbd_riscv_dcache_dat_i[31] ,
    \wbd_riscv_dcache_dat_i[30] ,
    \wbd_riscv_dcache_dat_i[29] ,
    \wbd_riscv_dcache_dat_i[28] ,
    \wbd_riscv_dcache_dat_i[27] ,
    \wbd_riscv_dcache_dat_i[26] ,
    \wbd_riscv_dcache_dat_i[25] ,
    \wbd_riscv_dcache_dat_i[24] ,
    \wbd_riscv_dcache_dat_i[23] ,
    \wbd_riscv_dcache_dat_i[22] ,
    \wbd_riscv_dcache_dat_i[21] ,
    \wbd_riscv_dcache_dat_i[20] ,
    \wbd_riscv_dcache_dat_i[19] ,
    \wbd_riscv_dcache_dat_i[18] ,
    \wbd_riscv_dcache_dat_i[17] ,
    \wbd_riscv_dcache_dat_i[16] ,
    \wbd_riscv_dcache_dat_i[15] ,
    \wbd_riscv_dcache_dat_i[14] ,
    \wbd_riscv_dcache_dat_i[13] ,
    \wbd_riscv_dcache_dat_i[12] ,
    \wbd_riscv_dcache_dat_i[11] ,
    \wbd_riscv_dcache_dat_i[10] ,
    \wbd_riscv_dcache_dat_i[9] ,
    \wbd_riscv_dcache_dat_i[8] ,
    \wbd_riscv_dcache_dat_i[7] ,
    \wbd_riscv_dcache_dat_i[6] ,
    \wbd_riscv_dcache_dat_i[5] ,
    \wbd_riscv_dcache_dat_i[4] ,
    \wbd_riscv_dcache_dat_i[3] ,
    \wbd_riscv_dcache_dat_i[2] ,
    \wbd_riscv_dcache_dat_i[1] ,
    \wbd_riscv_dcache_dat_i[0] }),
    .m2_wbd_dat_o({\wbd_riscv_dcache_dat_o[31] ,
    \wbd_riscv_dcache_dat_o[30] ,
    \wbd_riscv_dcache_dat_o[29] ,
    \wbd_riscv_dcache_dat_o[28] ,
    \wbd_riscv_dcache_dat_o[27] ,
    \wbd_riscv_dcache_dat_o[26] ,
    \wbd_riscv_dcache_dat_o[25] ,
    \wbd_riscv_dcache_dat_o[24] ,
    \wbd_riscv_dcache_dat_o[23] ,
    \wbd_riscv_dcache_dat_o[22] ,
    \wbd_riscv_dcache_dat_o[21] ,
    \wbd_riscv_dcache_dat_o[20] ,
    \wbd_riscv_dcache_dat_o[19] ,
    \wbd_riscv_dcache_dat_o[18] ,
    \wbd_riscv_dcache_dat_o[17] ,
    \wbd_riscv_dcache_dat_o[16] ,
    \wbd_riscv_dcache_dat_o[15] ,
    \wbd_riscv_dcache_dat_o[14] ,
    \wbd_riscv_dcache_dat_o[13] ,
    \wbd_riscv_dcache_dat_o[12] ,
    \wbd_riscv_dcache_dat_o[11] ,
    \wbd_riscv_dcache_dat_o[10] ,
    \wbd_riscv_dcache_dat_o[9] ,
    \wbd_riscv_dcache_dat_o[8] ,
    \wbd_riscv_dcache_dat_o[7] ,
    \wbd_riscv_dcache_dat_o[6] ,
    \wbd_riscv_dcache_dat_o[5] ,
    \wbd_riscv_dcache_dat_o[4] ,
    \wbd_riscv_dcache_dat_o[3] ,
    \wbd_riscv_dcache_dat_o[2] ,
    \wbd_riscv_dcache_dat_o[1] ,
    \wbd_riscv_dcache_dat_o[0] }),
    .m2_wbd_sel_i({\wbd_riscv_dcache_sel_i[3] ,
    \wbd_riscv_dcache_sel_i[2] ,
    \wbd_riscv_dcache_sel_i[1] ,
    \wbd_riscv_dcache_sel_i[0] }),
    .m3_wbd_adr_i({\wbd_riscv_icache_adr_i[31] ,
    \wbd_riscv_icache_adr_i[30] ,
    \wbd_riscv_icache_adr_i[29] ,
    \wbd_riscv_icache_adr_i[28] ,
    \wbd_riscv_icache_adr_i[27] ,
    \wbd_riscv_icache_adr_i[26] ,
    \wbd_riscv_icache_adr_i[25] ,
    \wbd_riscv_icache_adr_i[24] ,
    \wbd_riscv_icache_adr_i[23] ,
    \wbd_riscv_icache_adr_i[22] ,
    \wbd_riscv_icache_adr_i[21] ,
    \wbd_riscv_icache_adr_i[20] ,
    \wbd_riscv_icache_adr_i[19] ,
    \wbd_riscv_icache_adr_i[18] ,
    \wbd_riscv_icache_adr_i[17] ,
    \wbd_riscv_icache_adr_i[16] ,
    \wbd_riscv_icache_adr_i[15] ,
    \wbd_riscv_icache_adr_i[14] ,
    \wbd_riscv_icache_adr_i[13] ,
    \wbd_riscv_icache_adr_i[12] ,
    \wbd_riscv_icache_adr_i[11] ,
    \wbd_riscv_icache_adr_i[10] ,
    \wbd_riscv_icache_adr_i[9] ,
    \wbd_riscv_icache_adr_i[8] ,
    \wbd_riscv_icache_adr_i[7] ,
    \wbd_riscv_icache_adr_i[6] ,
    \wbd_riscv_icache_adr_i[5] ,
    \wbd_riscv_icache_adr_i[4] ,
    \wbd_riscv_icache_adr_i[3] ,
    \wbd_riscv_icache_adr_i[2] ,
    \wbd_riscv_icache_adr_i[1] ,
    \wbd_riscv_icache_adr_i[0] }),
    .m3_wbd_bl_i({\wbd_riscv_icache_bl_i[9] ,
    \wbd_riscv_icache_bl_i[8] ,
    \wbd_riscv_icache_bl_i[7] ,
    \wbd_riscv_icache_bl_i[6] ,
    \wbd_riscv_icache_bl_i[5] ,
    \wbd_riscv_icache_bl_i[4] ,
    \wbd_riscv_icache_bl_i[3] ,
    \wbd_riscv_icache_bl_i[2] ,
    \wbd_riscv_icache_bl_i[1] ,
    \wbd_riscv_icache_bl_i[0] }),
    .m3_wbd_dat_o({\wbd_riscv_icache_dat_o[31] ,
    \wbd_riscv_icache_dat_o[30] ,
    \wbd_riscv_icache_dat_o[29] ,
    \wbd_riscv_icache_dat_o[28] ,
    \wbd_riscv_icache_dat_o[27] ,
    \wbd_riscv_icache_dat_o[26] ,
    \wbd_riscv_icache_dat_o[25] ,
    \wbd_riscv_icache_dat_o[24] ,
    \wbd_riscv_icache_dat_o[23] ,
    \wbd_riscv_icache_dat_o[22] ,
    \wbd_riscv_icache_dat_o[21] ,
    \wbd_riscv_icache_dat_o[20] ,
    \wbd_riscv_icache_dat_o[19] ,
    \wbd_riscv_icache_dat_o[18] ,
    \wbd_riscv_icache_dat_o[17] ,
    \wbd_riscv_icache_dat_o[16] ,
    \wbd_riscv_icache_dat_o[15] ,
    \wbd_riscv_icache_dat_o[14] ,
    \wbd_riscv_icache_dat_o[13] ,
    \wbd_riscv_icache_dat_o[12] ,
    \wbd_riscv_icache_dat_o[11] ,
    \wbd_riscv_icache_dat_o[10] ,
    \wbd_riscv_icache_dat_o[9] ,
    \wbd_riscv_icache_dat_o[8] ,
    \wbd_riscv_icache_dat_o[7] ,
    \wbd_riscv_icache_dat_o[6] ,
    \wbd_riscv_icache_dat_o[5] ,
    \wbd_riscv_icache_dat_o[4] ,
    \wbd_riscv_icache_dat_o[3] ,
    \wbd_riscv_icache_dat_o[2] ,
    \wbd_riscv_icache_dat_o[1] ,
    \wbd_riscv_icache_dat_o[0] }),
    .m3_wbd_sel_i({\wbd_riscv_icache_sel_i[3] ,
    \wbd_riscv_icache_sel_i[2] ,
    \wbd_riscv_icache_sel_i[1] ,
    \wbd_riscv_icache_sel_i[0] }),
    .s0_wbd_adr_o({\wbd_spim_adr_o[31] ,
    \wbd_spim_adr_o[30] ,
    \wbd_spim_adr_o[29] ,
    \wbd_spim_adr_o[28] ,
    \wbd_spim_adr_o[27] ,
    \wbd_spim_adr_o[26] ,
    \wbd_spim_adr_o[25] ,
    \wbd_spim_adr_o[24] ,
    \wbd_spim_adr_o[23] ,
    \wbd_spim_adr_o[22] ,
    \wbd_spim_adr_o[21] ,
    \wbd_spim_adr_o[20] ,
    \wbd_spim_adr_o[19] ,
    \wbd_spim_adr_o[18] ,
    \wbd_spim_adr_o[17] ,
    \wbd_spim_adr_o[16] ,
    \wbd_spim_adr_o[15] ,
    \wbd_spim_adr_o[14] ,
    \wbd_spim_adr_o[13] ,
    \wbd_spim_adr_o[12] ,
    \wbd_spim_adr_o[11] ,
    \wbd_spim_adr_o[10] ,
    \wbd_spim_adr_o[9] ,
    \wbd_spim_adr_o[8] ,
    \wbd_spim_adr_o[7] ,
    \wbd_spim_adr_o[6] ,
    \wbd_spim_adr_o[5] ,
    \wbd_spim_adr_o[4] ,
    \wbd_spim_adr_o[3] ,
    \wbd_spim_adr_o[2] ,
    \wbd_spim_adr_o[1] ,
    \wbd_spim_adr_o[0] }),
    .s0_wbd_bl_o({\wbd_spim_bl_o[9] ,
    \wbd_spim_bl_o[8] ,
    \wbd_spim_bl_o[7] ,
    \wbd_spim_bl_o[6] ,
    \wbd_spim_bl_o[5] ,
    \wbd_spim_bl_o[4] ,
    \wbd_spim_bl_o[3] ,
    \wbd_spim_bl_o[2] ,
    \wbd_spim_bl_o[1] ,
    \wbd_spim_bl_o[0] }),
    .s0_wbd_dat_i({\wbd_spim_dat_i[31] ,
    \wbd_spim_dat_i[30] ,
    \wbd_spim_dat_i[29] ,
    \wbd_spim_dat_i[28] ,
    \wbd_spim_dat_i[27] ,
    \wbd_spim_dat_i[26] ,
    \wbd_spim_dat_i[25] ,
    \wbd_spim_dat_i[24] ,
    \wbd_spim_dat_i[23] ,
    \wbd_spim_dat_i[22] ,
    \wbd_spim_dat_i[21] ,
    \wbd_spim_dat_i[20] ,
    \wbd_spim_dat_i[19] ,
    \wbd_spim_dat_i[18] ,
    \wbd_spim_dat_i[17] ,
    \wbd_spim_dat_i[16] ,
    \wbd_spim_dat_i[15] ,
    \wbd_spim_dat_i[14] ,
    \wbd_spim_dat_i[13] ,
    \wbd_spim_dat_i[12] ,
    \wbd_spim_dat_i[11] ,
    \wbd_spim_dat_i[10] ,
    \wbd_spim_dat_i[9] ,
    \wbd_spim_dat_i[8] ,
    \wbd_spim_dat_i[7] ,
    \wbd_spim_dat_i[6] ,
    \wbd_spim_dat_i[5] ,
    \wbd_spim_dat_i[4] ,
    \wbd_spim_dat_i[3] ,
    \wbd_spim_dat_i[2] ,
    \wbd_spim_dat_i[1] ,
    \wbd_spim_dat_i[0] }),
    .s0_wbd_dat_o({\wbd_spim_dat_o[31] ,
    \wbd_spim_dat_o[30] ,
    \wbd_spim_dat_o[29] ,
    \wbd_spim_dat_o[28] ,
    \wbd_spim_dat_o[27] ,
    \wbd_spim_dat_o[26] ,
    \wbd_spim_dat_o[25] ,
    \wbd_spim_dat_o[24] ,
    \wbd_spim_dat_o[23] ,
    \wbd_spim_dat_o[22] ,
    \wbd_spim_dat_o[21] ,
    \wbd_spim_dat_o[20] ,
    \wbd_spim_dat_o[19] ,
    \wbd_spim_dat_o[18] ,
    \wbd_spim_dat_o[17] ,
    \wbd_spim_dat_o[16] ,
    \wbd_spim_dat_o[15] ,
    \wbd_spim_dat_o[14] ,
    \wbd_spim_dat_o[13] ,
    \wbd_spim_dat_o[12] ,
    \wbd_spim_dat_o[11] ,
    \wbd_spim_dat_o[10] ,
    \wbd_spim_dat_o[9] ,
    \wbd_spim_dat_o[8] ,
    \wbd_spim_dat_o[7] ,
    \wbd_spim_dat_o[6] ,
    \wbd_spim_dat_o[5] ,
    \wbd_spim_dat_o[4] ,
    \wbd_spim_dat_o[3] ,
    \wbd_spim_dat_o[2] ,
    \wbd_spim_dat_o[1] ,
    \wbd_spim_dat_o[0] }),
    .s0_wbd_sel_o({\wbd_spim_sel_o[3] ,
    \wbd_spim_sel_o[2] ,
    \wbd_spim_sel_o[1] ,
    \wbd_spim_sel_o[0] }),
    .s1_wbd_adr_o({\wbd_uart_adr_o[7] ,
    \wbd_uart_adr_o[6] ,
    \wbd_uart_adr_o[5] ,
    \wbd_uart_adr_o[4] ,
    \wbd_uart_adr_o[3] ,
    \wbd_uart_adr_o[2] ,
    \wbd_uart_adr_o[1] ,
    \wbd_uart_adr_o[0] }),
    .s1_wbd_dat_i({\wbd_uart_dat_i[31] ,
    \wbd_uart_dat_i[30] ,
    \wbd_uart_dat_i[29] ,
    \wbd_uart_dat_i[28] ,
    \wbd_uart_dat_i[27] ,
    \wbd_uart_dat_i[26] ,
    \wbd_uart_dat_i[25] ,
    \wbd_uart_dat_i[24] ,
    \wbd_uart_dat_i[23] ,
    \wbd_uart_dat_i[22] ,
    \wbd_uart_dat_i[21] ,
    \wbd_uart_dat_i[20] ,
    \wbd_uart_dat_i[19] ,
    \wbd_uart_dat_i[18] ,
    \wbd_uart_dat_i[17] ,
    \wbd_uart_dat_i[16] ,
    \wbd_uart_dat_i[15] ,
    \wbd_uart_dat_i[14] ,
    \wbd_uart_dat_i[13] ,
    \wbd_uart_dat_i[12] ,
    \wbd_uart_dat_i[11] ,
    \wbd_uart_dat_i[10] ,
    \wbd_uart_dat_i[9] ,
    \wbd_uart_dat_i[8] ,
    \wbd_uart_dat_i[7] ,
    \wbd_uart_dat_i[6] ,
    \wbd_uart_dat_i[5] ,
    \wbd_uart_dat_i[4] ,
    \wbd_uart_dat_i[3] ,
    \wbd_uart_dat_i[2] ,
    \wbd_uart_dat_i[1] ,
    \wbd_uart_dat_i[0] }),
    .s1_wbd_dat_o({\wbd_uart_dat_o[31] ,
    \wbd_uart_dat_o[30] ,
    \wbd_uart_dat_o[29] ,
    \wbd_uart_dat_o[28] ,
    \wbd_uart_dat_o[27] ,
    \wbd_uart_dat_o[26] ,
    \wbd_uart_dat_o[25] ,
    \wbd_uart_dat_o[24] ,
    \wbd_uart_dat_o[23] ,
    \wbd_uart_dat_o[22] ,
    \wbd_uart_dat_o[21] ,
    \wbd_uart_dat_o[20] ,
    \wbd_uart_dat_o[19] ,
    \wbd_uart_dat_o[18] ,
    \wbd_uart_dat_o[17] ,
    \wbd_uart_dat_o[16] ,
    \wbd_uart_dat_o[15] ,
    \wbd_uart_dat_o[14] ,
    \wbd_uart_dat_o[13] ,
    \wbd_uart_dat_o[12] ,
    \wbd_uart_dat_o[11] ,
    \wbd_uart_dat_o[10] ,
    \wbd_uart_dat_o[9] ,
    \wbd_uart_dat_o[8] ,
    \wbd_uart_dat_o[7] ,
    \wbd_uart_dat_o[6] ,
    \wbd_uart_dat_o[5] ,
    \wbd_uart_dat_o[4] ,
    \wbd_uart_dat_o[3] ,
    \wbd_uart_dat_o[2] ,
    \wbd_uart_dat_o[1] ,
    \wbd_uart_dat_o[0] }),
    .s1_wbd_sel_o({\wbd_uart_sel_o[3] ,
    \wbd_uart_sel_o[2] ,
    \wbd_uart_sel_o[1] ,
    \wbd_uart_sel_o[0] }),
    .s2_wbd_adr_o({\wbd_glbl_adr_o[7] ,
    \wbd_glbl_adr_o[6] ,
    \wbd_glbl_adr_o[5] ,
    \wbd_glbl_adr_o[4] ,
    \wbd_glbl_adr_o[3] ,
    \wbd_glbl_adr_o[2] ,
    \wbd_glbl_adr_o[1] ,
    \wbd_glbl_adr_o[0] }),
    .s2_wbd_dat_i({\wbd_glbl_dat_i[31] ,
    \wbd_glbl_dat_i[30] ,
    \wbd_glbl_dat_i[29] ,
    \wbd_glbl_dat_i[28] ,
    \wbd_glbl_dat_i[27] ,
    \wbd_glbl_dat_i[26] ,
    \wbd_glbl_dat_i[25] ,
    \wbd_glbl_dat_i[24] ,
    \wbd_glbl_dat_i[23] ,
    \wbd_glbl_dat_i[22] ,
    \wbd_glbl_dat_i[21] ,
    \wbd_glbl_dat_i[20] ,
    \wbd_glbl_dat_i[19] ,
    \wbd_glbl_dat_i[18] ,
    \wbd_glbl_dat_i[17] ,
    \wbd_glbl_dat_i[16] ,
    \wbd_glbl_dat_i[15] ,
    \wbd_glbl_dat_i[14] ,
    \wbd_glbl_dat_i[13] ,
    \wbd_glbl_dat_i[12] ,
    \wbd_glbl_dat_i[11] ,
    \wbd_glbl_dat_i[10] ,
    \wbd_glbl_dat_i[9] ,
    \wbd_glbl_dat_i[8] ,
    \wbd_glbl_dat_i[7] ,
    \wbd_glbl_dat_i[6] ,
    \wbd_glbl_dat_i[5] ,
    \wbd_glbl_dat_i[4] ,
    \wbd_glbl_dat_i[3] ,
    \wbd_glbl_dat_i[2] ,
    \wbd_glbl_dat_i[1] ,
    \wbd_glbl_dat_i[0] }),
    .s2_wbd_dat_o({\wbd_glbl_dat_o[31] ,
    \wbd_glbl_dat_o[30] ,
    \wbd_glbl_dat_o[29] ,
    \wbd_glbl_dat_o[28] ,
    \wbd_glbl_dat_o[27] ,
    \wbd_glbl_dat_o[26] ,
    \wbd_glbl_dat_o[25] ,
    \wbd_glbl_dat_o[24] ,
    \wbd_glbl_dat_o[23] ,
    \wbd_glbl_dat_o[22] ,
    \wbd_glbl_dat_o[21] ,
    \wbd_glbl_dat_o[20] ,
    \wbd_glbl_dat_o[19] ,
    \wbd_glbl_dat_o[18] ,
    \wbd_glbl_dat_o[17] ,
    \wbd_glbl_dat_o[16] ,
    \wbd_glbl_dat_o[15] ,
    \wbd_glbl_dat_o[14] ,
    \wbd_glbl_dat_o[13] ,
    \wbd_glbl_dat_o[12] ,
    \wbd_glbl_dat_o[11] ,
    \wbd_glbl_dat_o[10] ,
    \wbd_glbl_dat_o[9] ,
    \wbd_glbl_dat_o[8] ,
    \wbd_glbl_dat_o[7] ,
    \wbd_glbl_dat_o[6] ,
    \wbd_glbl_dat_o[5] ,
    \wbd_glbl_dat_o[4] ,
    \wbd_glbl_dat_o[3] ,
    \wbd_glbl_dat_o[2] ,
    \wbd_glbl_dat_o[1] ,
    \wbd_glbl_dat_o[0] }),
    .s2_wbd_sel_o({\wbd_glbl_sel_o[3] ,
    \wbd_glbl_sel_o[2] ,
    \wbd_glbl_sel_o[1] ,
    \wbd_glbl_sel_o[0] }));
 pinmux u_pinmux (.cpu_intf_rst_n(cpu_intf_rst_n),
    .h_reset_n(wbd_int_rst_n),
    .i2cm_clk_i(i2cm_clk_i),
    .i2cm_clk_o(i2cm_clk_o),
    .i2cm_clk_oen(i2cm_clk_oen),
    .i2cm_data_i(i2cm_data_i),
    .i2cm_data_o(i2cm_data_o),
    .i2cm_data_oen(i2cm_data_oen),
    .i2cm_intr(i2cm_intr_o),
    .i2cm_rst_n(i2c_rst_n),
    .mclk(wbd_clk_pinmux_skew),
    .pulse1m_mclk(pulse1m_mclk),
    .qspim_rst_n(qspim_rst_n),
    .reg_ack(wbd_glbl_ack_i),
    .reg_cs(wbd_glbl_stb_o),
    .reg_wr(wbd_glbl_we_o),
    .sflash_sck(sflash_sck),
    .soft_irq(soft_irq),
    .spim_miso(sspim_so),
    .spim_mosi(sspim_si),
    .spim_sck(sspim_sck),
    .spim_ss(sspim_ssn),
    .sspim_rst_n(sspim_rst_n),
    .uart_rst_n(uart_rst_n),
    .uart_rxd(uart_rxd),
    .uart_txd(uart_txd),
    .uartm_rxd(uartm_rxd),
    .uartm_txd(uartm_txd),
    .usb_dn_i(usb_dn_i),
    .usb_dn_o(usb_dn_o),
    .usb_dp_i(usb_dp_i),
    .usb_dp_o(usb_dp_o),
    .usb_intr(usb_intr_o),
    .usb_oen(usb_oen),
    .usb_rst_n(usb_rst_n),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wbd_clk_int(wbd_clk_pinmux_rp),
    .wbd_clk_pinmux(wbd_clk_pinmux_skew),
    .cfg_cska_pinmux({\cfg_cska_pinmux_rp[3] ,
    \cfg_cska_pinmux_rp[2] ,
    \cfg_cska_pinmux_rp[1] ,
    \cfg_cska_pinmux_rp[0] }),
    .cfg_riscv_debug_sel({_NC1,
    _NC2}),
    .cpu_core_rst_n({\cpu_core_rst_n[1] ,
    \cpu_core_rst_n[0] }),
    .digital_io_in({io_in[37],
    io_in[36],
    io_in[35],
    io_in[34],
    io_in[33],
    io_in[32],
    io_in[31],
    io_in[30],
    io_in[29],
    io_in[28],
    io_in[27],
    io_in[26],
    io_in[25],
    io_in[24],
    io_in[23],
    io_in[22],
    io_in[21],
    io_in[20],
    io_in[19],
    io_in[18],
    io_in[17],
    io_in[16],
    io_in[15],
    io_in[14],
    io_in[13],
    io_in[12],
    io_in[11],
    io_in[10],
    io_in[9],
    io_in[8],
    io_in[7],
    io_in[6],
    io_in[5],
    io_in[4],
    io_in[3],
    io_in[2],
    io_in[1],
    io_in[0]}),
    .digital_io_oen({io_oeb[37],
    io_oeb[36],
    io_oeb[35],
    io_oeb[34],
    io_oeb[33],
    io_oeb[32],
    io_oeb[31],
    io_oeb[30],
    io_oeb[29],
    io_oeb[28],
    io_oeb[27],
    io_oeb[26],
    io_oeb[25],
    io_oeb[24],
    io_oeb[23],
    io_oeb[22],
    io_oeb[21],
    io_oeb[20],
    io_oeb[19],
    io_oeb[18],
    io_oeb[17],
    io_oeb[16],
    io_oeb[15],
    io_oeb[14],
    io_oeb[13],
    io_oeb[12],
    io_oeb[11],
    io_oeb[10],
    io_oeb[9],
    io_oeb[8],
    io_oeb[7],
    io_oeb[6],
    io_oeb[5],
    io_oeb[4],
    io_oeb[3],
    io_oeb[2],
    io_oeb[1],
    io_oeb[0]}),
    .digital_io_out({io_out[37],
    io_out[36],
    io_out[35],
    io_out[34],
    io_out[33],
    io_out[32],
    io_out[31],
    io_out[30],
    io_out[29],
    io_out[28],
    io_out[27],
    io_out[26],
    io_out[25],
    io_out[24],
    io_out[23],
    io_out[22],
    io_out[21],
    io_out[20],
    io_out[19],
    io_out[18],
    io_out[17],
    io_out[16],
    io_out[15],
    io_out[14],
    io_out[13],
    io_out[12],
    io_out[11],
    io_out[10],
    io_out[9],
    io_out[8],
    io_out[7],
    io_out[6],
    io_out[5],
    io_out[4],
    io_out[3],
    io_out[2],
    io_out[1],
    io_out[0]}),
    .irq_lines({\irq_lines[15] ,
    \irq_lines[14] ,
    \irq_lines[13] ,
    \irq_lines[12] ,
    \irq_lines[11] ,
    \irq_lines[10] ,
    \irq_lines[9] ,
    \irq_lines[8] ,
    \irq_lines[7] ,
    \irq_lines[6] ,
    \irq_lines[5] ,
    \irq_lines[4] ,
    \irq_lines[3] ,
    \irq_lines[2] ,
    \irq_lines[1] ,
    \irq_lines[0] }),
    .pinmux_debug({la_data_out[127],
    la_data_out[126],
    la_data_out[125],
    la_data_out[124],
    la_data_out[123],
    la_data_out[122],
    la_data_out[121],
    la_data_out[120],
    la_data_out[119],
    la_data_out[118],
    la_data_out[117],
    la_data_out[116],
    la_data_out[115],
    la_data_out[114],
    la_data_out[113],
    la_data_out[112],
    la_data_out[111],
    la_data_out[110],
    la_data_out[109],
    la_data_out[108],
    la_data_out[107],
    la_data_out[106],
    la_data_out[105],
    la_data_out[104],
    la_data_out[103],
    la_data_out[102],
    la_data_out[101],
    la_data_out[100],
    la_data_out[99],
    la_data_out[98],
    la_data_out[97],
    la_data_out[96]}),
    .reg_addr({\wbd_glbl_adr_o[7] ,
    \wbd_glbl_adr_o[6] ,
    \wbd_glbl_adr_o[5] ,
    \wbd_glbl_adr_o[4] ,
    \wbd_glbl_adr_o[3] ,
    \wbd_glbl_adr_o[2] ,
    \wbd_glbl_adr_o[1] ,
    \wbd_glbl_adr_o[0] }),
    .reg_be({\wbd_glbl_sel_o[3] ,
    \wbd_glbl_sel_o[2] ,
    \wbd_glbl_sel_o[1] ,
    \wbd_glbl_sel_o[0] }),
    .reg_rdata({\wbd_glbl_dat_i[31] ,
    \wbd_glbl_dat_i[30] ,
    \wbd_glbl_dat_i[29] ,
    \wbd_glbl_dat_i[28] ,
    \wbd_glbl_dat_i[27] ,
    \wbd_glbl_dat_i[26] ,
    \wbd_glbl_dat_i[25] ,
    \wbd_glbl_dat_i[24] ,
    \wbd_glbl_dat_i[23] ,
    \wbd_glbl_dat_i[22] ,
    \wbd_glbl_dat_i[21] ,
    \wbd_glbl_dat_i[20] ,
    \wbd_glbl_dat_i[19] ,
    \wbd_glbl_dat_i[18] ,
    \wbd_glbl_dat_i[17] ,
    \wbd_glbl_dat_i[16] ,
    \wbd_glbl_dat_i[15] ,
    \wbd_glbl_dat_i[14] ,
    \wbd_glbl_dat_i[13] ,
    \wbd_glbl_dat_i[12] ,
    \wbd_glbl_dat_i[11] ,
    \wbd_glbl_dat_i[10] ,
    \wbd_glbl_dat_i[9] ,
    \wbd_glbl_dat_i[8] ,
    \wbd_glbl_dat_i[7] ,
    \wbd_glbl_dat_i[6] ,
    \wbd_glbl_dat_i[5] ,
    \wbd_glbl_dat_i[4] ,
    \wbd_glbl_dat_i[3] ,
    \wbd_glbl_dat_i[2] ,
    \wbd_glbl_dat_i[1] ,
    \wbd_glbl_dat_i[0] }),
    .reg_wdata({\wbd_glbl_dat_o[31] ,
    \wbd_glbl_dat_o[30] ,
    \wbd_glbl_dat_o[29] ,
    \wbd_glbl_dat_o[28] ,
    \wbd_glbl_dat_o[27] ,
    \wbd_glbl_dat_o[26] ,
    \wbd_glbl_dat_o[25] ,
    \wbd_glbl_dat_o[24] ,
    \wbd_glbl_dat_o[23] ,
    \wbd_glbl_dat_o[22] ,
    \wbd_glbl_dat_o[21] ,
    \wbd_glbl_dat_o[20] ,
    \wbd_glbl_dat_o[19] ,
    \wbd_glbl_dat_o[18] ,
    \wbd_glbl_dat_o[17] ,
    \wbd_glbl_dat_o[16] ,
    \wbd_glbl_dat_o[15] ,
    \wbd_glbl_dat_o[14] ,
    \wbd_glbl_dat_o[13] ,
    \wbd_glbl_dat_o[12] ,
    \wbd_glbl_dat_o[11] ,
    \wbd_glbl_dat_o[10] ,
    \wbd_glbl_dat_o[9] ,
    \wbd_glbl_dat_o[8] ,
    \wbd_glbl_dat_o[7] ,
    \wbd_glbl_dat_o[6] ,
    \wbd_glbl_dat_o[5] ,
    \wbd_glbl_dat_o[4] ,
    \wbd_glbl_dat_o[3] ,
    \wbd_glbl_dat_o[2] ,
    \wbd_glbl_dat_o[1] ,
    \wbd_glbl_dat_o[0] }),
    .sflash_di({\sflash_di[3] ,
    \sflash_di[2] ,
    \sflash_di[1] ,
    \sflash_di[0] }),
    .sflash_do({\sflash_do[3] ,
    \sflash_do[2] ,
    \sflash_do[1] ,
    \sflash_do[0] }),
    .sflash_oen({\sflash_oen[3] ,
    \sflash_oen[2] ,
    \sflash_oen[1] ,
    \sflash_oen[0] }),
    .sflash_ss({\spi_csn[3] ,
    \spi_csn[2] ,
    \spi_csn[1] ,
    \spi_csn[0] }),
    .user_irq({user_irq[2],
    user_irq[1],
    user_irq[0]}));
 qspim_top u_qspi_master (.mclk(wbd_clk_spi),
    .rst_n(qspim_rst_n),
    .spi_clk(sflash_sck),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wbd_ack_o(wbd_spim_ack_i),
    .wbd_bry_i(wbd_spim_bry_o),
    .wbd_clk_int(wbd_clk_qspi_rp),
    .wbd_clk_spi(wbd_clk_spi),
    .wbd_err_o(wbd_spim_err_i),
    .wbd_lack_o(wbd_spim_lack_i),
    .wbd_stb_i(wbd_spim_stb_o),
    .wbd_we_i(wbd_spim_we_o),
    .cfg_cska_sp_co({\cfg_cska_qspi_co_rp[3] ,
    \cfg_cska_qspi_co_rp[2] ,
    \cfg_cska_qspi_co_rp[1] ,
    \cfg_cska_qspi_co_rp[0] }),
    .cfg_cska_spi({\cfg_cska_qspi_rp[3] ,
    \cfg_cska_qspi_rp[2] ,
    \cfg_cska_qspi_rp[1] ,
    \cfg_cska_qspi_rp[0] }),
    .spi_csn({\spi_csn[3] ,
    \spi_csn[2] ,
    \spi_csn[1] ,
    \spi_csn[0] }),
    .spi_debug({la_data_out[95],
    la_data_out[94],
    la_data_out[93],
    la_data_out[92],
    la_data_out[91],
    la_data_out[90],
    la_data_out[89],
    la_data_out[88],
    la_data_out[87],
    la_data_out[86],
    la_data_out[85],
    la_data_out[84],
    la_data_out[83],
    la_data_out[82],
    la_data_out[81],
    la_data_out[80],
    la_data_out[79],
    la_data_out[78],
    la_data_out[77],
    la_data_out[76],
    la_data_out[75],
    la_data_out[74],
    la_data_out[73],
    la_data_out[72],
    la_data_out[71],
    la_data_out[70],
    la_data_out[69],
    la_data_out[68],
    la_data_out[67],
    la_data_out[66],
    la_data_out[65],
    la_data_out[64]}),
    .spi_oen({\sflash_oen[3] ,
    \sflash_oen[2] ,
    \sflash_oen[1] ,
    \sflash_oen[0] }),
    .spi_sdi({\sflash_di[3] ,
    \sflash_di[2] ,
    \sflash_di[1] ,
    \sflash_di[0] }),
    .spi_sdo({\sflash_do[3] ,
    \sflash_do[2] ,
    \sflash_do[1] ,
    \sflash_do[0] }),
    .wbd_adr_i({\wbd_spim_adr_o[31] ,
    \wbd_spim_adr_o[30] ,
    \wbd_spim_adr_o[29] ,
    \wbd_spim_adr_o[28] ,
    \wbd_spim_adr_o[27] ,
    \wbd_spim_adr_o[26] ,
    \wbd_spim_adr_o[25] ,
    \wbd_spim_adr_o[24] ,
    \wbd_spim_adr_o[23] ,
    \wbd_spim_adr_o[22] ,
    \wbd_spim_adr_o[21] ,
    \wbd_spim_adr_o[20] ,
    \wbd_spim_adr_o[19] ,
    \wbd_spim_adr_o[18] ,
    \wbd_spim_adr_o[17] ,
    \wbd_spim_adr_o[16] ,
    \wbd_spim_adr_o[15] ,
    \wbd_spim_adr_o[14] ,
    \wbd_spim_adr_o[13] ,
    \wbd_spim_adr_o[12] ,
    \wbd_spim_adr_o[11] ,
    \wbd_spim_adr_o[10] ,
    \wbd_spim_adr_o[9] ,
    \wbd_spim_adr_o[8] ,
    \wbd_spim_adr_o[7] ,
    \wbd_spim_adr_o[6] ,
    \wbd_spim_adr_o[5] ,
    \wbd_spim_adr_o[4] ,
    \wbd_spim_adr_o[3] ,
    \wbd_spim_adr_o[2] ,
    \wbd_spim_adr_o[1] ,
    \wbd_spim_adr_o[0] }),
    .wbd_bl_i({\wbd_spim_bl_o[9] ,
    \wbd_spim_bl_o[8] ,
    \wbd_spim_bl_o[7] ,
    \wbd_spim_bl_o[6] ,
    \wbd_spim_bl_o[5] ,
    \wbd_spim_bl_o[4] ,
    \wbd_spim_bl_o[3] ,
    \wbd_spim_bl_o[2] ,
    \wbd_spim_bl_o[1] ,
    \wbd_spim_bl_o[0] }),
    .wbd_dat_i({\wbd_spim_dat_o[31] ,
    \wbd_spim_dat_o[30] ,
    \wbd_spim_dat_o[29] ,
    \wbd_spim_dat_o[28] ,
    \wbd_spim_dat_o[27] ,
    \wbd_spim_dat_o[26] ,
    \wbd_spim_dat_o[25] ,
    \wbd_spim_dat_o[24] ,
    \wbd_spim_dat_o[23] ,
    \wbd_spim_dat_o[22] ,
    \wbd_spim_dat_o[21] ,
    \wbd_spim_dat_o[20] ,
    \wbd_spim_dat_o[19] ,
    \wbd_spim_dat_o[18] ,
    \wbd_spim_dat_o[17] ,
    \wbd_spim_dat_o[16] ,
    \wbd_spim_dat_o[15] ,
    \wbd_spim_dat_o[14] ,
    \wbd_spim_dat_o[13] ,
    \wbd_spim_dat_o[12] ,
    \wbd_spim_dat_o[11] ,
    \wbd_spim_dat_o[10] ,
    \wbd_spim_dat_o[9] ,
    \wbd_spim_dat_o[8] ,
    \wbd_spim_dat_o[7] ,
    \wbd_spim_dat_o[6] ,
    \wbd_spim_dat_o[5] ,
    \wbd_spim_dat_o[4] ,
    \wbd_spim_dat_o[3] ,
    \wbd_spim_dat_o[2] ,
    \wbd_spim_dat_o[1] ,
    \wbd_spim_dat_o[0] }),
    .wbd_dat_o({\wbd_spim_dat_i[31] ,
    \wbd_spim_dat_i[30] ,
    \wbd_spim_dat_i[29] ,
    \wbd_spim_dat_i[28] ,
    \wbd_spim_dat_i[27] ,
    \wbd_spim_dat_i[26] ,
    \wbd_spim_dat_i[25] ,
    \wbd_spim_dat_i[24] ,
    \wbd_spim_dat_i[23] ,
    \wbd_spim_dat_i[22] ,
    \wbd_spim_dat_i[21] ,
    \wbd_spim_dat_i[20] ,
    \wbd_spim_dat_i[19] ,
    \wbd_spim_dat_i[18] ,
    \wbd_spim_dat_i[17] ,
    \wbd_spim_dat_i[16] ,
    \wbd_spim_dat_i[15] ,
    \wbd_spim_dat_i[14] ,
    \wbd_spim_dat_i[13] ,
    \wbd_spim_dat_i[12] ,
    \wbd_spim_dat_i[11] ,
    \wbd_spim_dat_i[10] ,
    \wbd_spim_dat_i[9] ,
    \wbd_spim_dat_i[8] ,
    \wbd_spim_dat_i[7] ,
    \wbd_spim_dat_i[6] ,
    \wbd_spim_dat_i[5] ,
    \wbd_spim_dat_i[4] ,
    \wbd_spim_dat_i[3] ,
    \wbd_spim_dat_i[2] ,
    \wbd_spim_dat_i[1] ,
    \wbd_spim_dat_i[0] }),
    .wbd_sel_i({\wbd_spim_sel_o[3] ,
    \wbd_spim_sel_o[2] ,
    \wbd_spim_sel_o[1] ,
    \wbd_spim_sel_o[0] }));
 ycr1_top_wb u_riscv_top (.core_clk(cpu_clk),
    .core_clk_mclk(cpu_clk),
    .cpu_rst_n(\cpu_core_rst_n[0] ),
    .dcache_dffram_clk0(dcache_dffram_clk0),
    .dcache_dffram_clk1(dcache_dffram_clk1),
    .dcache_dffram_cs0(dcache_dffram_cs0),
    .dcache_dffram_cs1(dcache_dffram_cs1),
    .icache_dffram_clk0(icache_dffram_clk0),
    .icache_dffram_clk1(icache_dffram_clk1),
    .icache_dffram_cs0(icache_dffram_cs0),
    .icache_dffram_cs1(icache_dffram_cs1),
    .pwrup_rst_n(wbd_int_rst_n),
    .rst_n(wbd_int_rst_n),
    .rtc_clk(rtc_clk),
    .soft_irq(soft_irq_rp),
    .tcm_dffram_clk0(tcm_dffram_clk0),
    .tcm_dffram_clk1(tcm_dffram_clk1),
    .tcm_dffram_cs0(tcm_dffram_cs0),
    .tcm_dffram_cs1(tcm_dffram_cs1),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_clk(wbd_clk_riscv_skew),
    .wb_dcache_ack_i(wbd_riscv_dcache_ack_o),
    .wb_dcache_bry_o(wbd_riscv_dcache_bry_i),
    .wb_dcache_err_i(wbd_riscv_dcache_err_o),
    .wb_dcache_lack_i(wbd_riscv_dcache_lack_o),
    .wb_dcache_stb_o(wbd_riscv_dcache_stb_i),
    .wb_dcache_we_o(wbd_riscv_dcache_we_i),
    .wb_icache_ack_i(wbd_riscv_icache_ack_o),
    .wb_icache_bry_o(wbd_riscv_icache_bry_i),
    .wb_icache_err_i(wbd_riscv_icache_err_o),
    .wb_icache_lack_i(wbd_riscv_icache_lack_o),
    .wb_icache_stb_o(wbd_riscv_icache_stb_i),
    .wb_icache_we_o(wbd_riscv_icache_we_i),
    .wb_rst_n(wbd_int_rst_n),
    .wbd_clk_int(wbd_clk_risc_rp),
    .wbd_clk_riscv(wbd_clk_riscv_skew),
    .wbd_dmem_ack_i(wbd_riscv_dmem_ack_o),
    .wbd_dmem_err_i(wbd_riscv_dmem_err_o),
    .wbd_dmem_stb_o(wbd_riscv_dmem_stb_i),
    .wbd_dmem_we_o(wbd_riscv_dmem_we_i),
    .cfg_cska_riscv({\cfg_cska_riscv_rp[3] ,
    \cfg_cska_riscv_rp[2] ,
    \cfg_cska_riscv_rp[1] ,
    \cfg_cska_riscv_rp[0] }),
    .dcache_dffram_addr0({\dcache_dffram_addr0[7] ,
    \dcache_dffram_addr0[6] ,
    \dcache_dffram_addr0[5] ,
    \dcache_dffram_addr0[4] ,
    \dcache_dffram_addr0[3] ,
    \dcache_dffram_addr0[2] ,
    \dcache_dffram_addr0[1] ,
    \dcache_dffram_addr0[0] }),
    .dcache_dffram_addr1({\dcache_dffram_addr1[7] ,
    \dcache_dffram_addr1[6] ,
    \dcache_dffram_addr1[5] ,
    \dcache_dffram_addr1[4] ,
    \dcache_dffram_addr1[3] ,
    \dcache_dffram_addr1[2] ,
    \dcache_dffram_addr1[1] ,
    \dcache_dffram_addr1[0] }),
    .dcache_dffram_din0({\dcache_dffram_din0[31] ,
    \dcache_dffram_din0[30] ,
    \dcache_dffram_din0[29] ,
    \dcache_dffram_din0[28] ,
    \dcache_dffram_din0[27] ,
    \dcache_dffram_din0[26] ,
    \dcache_dffram_din0[25] ,
    \dcache_dffram_din0[24] ,
    \dcache_dffram_din0[23] ,
    \dcache_dffram_din0[22] ,
    \dcache_dffram_din0[21] ,
    \dcache_dffram_din0[20] ,
    \dcache_dffram_din0[19] ,
    \dcache_dffram_din0[18] ,
    \dcache_dffram_din0[17] ,
    \dcache_dffram_din0[16] ,
    \dcache_dffram_din0[15] ,
    \dcache_dffram_din0[14] ,
    \dcache_dffram_din0[13] ,
    \dcache_dffram_din0[12] ,
    \dcache_dffram_din0[11] ,
    \dcache_dffram_din0[10] ,
    \dcache_dffram_din0[9] ,
    \dcache_dffram_din0[8] ,
    \dcache_dffram_din0[7] ,
    \dcache_dffram_din0[6] ,
    \dcache_dffram_din0[5] ,
    \dcache_dffram_din0[4] ,
    \dcache_dffram_din0[3] ,
    \dcache_dffram_din0[2] ,
    \dcache_dffram_din0[1] ,
    \dcache_dffram_din0[0] }),
    .dcache_dffram_din1({\dcache_dffram_din1[31] ,
    \dcache_dffram_din1[30] ,
    \dcache_dffram_din1[29] ,
    \dcache_dffram_din1[28] ,
    \dcache_dffram_din1[27] ,
    \dcache_dffram_din1[26] ,
    \dcache_dffram_din1[25] ,
    \dcache_dffram_din1[24] ,
    \dcache_dffram_din1[23] ,
    \dcache_dffram_din1[22] ,
    \dcache_dffram_din1[21] ,
    \dcache_dffram_din1[20] ,
    \dcache_dffram_din1[19] ,
    \dcache_dffram_din1[18] ,
    \dcache_dffram_din1[17] ,
    \dcache_dffram_din1[16] ,
    \dcache_dffram_din1[15] ,
    \dcache_dffram_din1[14] ,
    \dcache_dffram_din1[13] ,
    \dcache_dffram_din1[12] ,
    \dcache_dffram_din1[11] ,
    \dcache_dffram_din1[10] ,
    \dcache_dffram_din1[9] ,
    \dcache_dffram_din1[8] ,
    \dcache_dffram_din1[7] ,
    \dcache_dffram_din1[6] ,
    \dcache_dffram_din1[5] ,
    \dcache_dffram_din1[4] ,
    \dcache_dffram_din1[3] ,
    \dcache_dffram_din1[2] ,
    \dcache_dffram_din1[1] ,
    \dcache_dffram_din1[0] }),
    .dcache_dffram_dout0({\dcache_dffram_dout0[31] ,
    \dcache_dffram_dout0[30] ,
    \dcache_dffram_dout0[29] ,
    \dcache_dffram_dout0[28] ,
    \dcache_dffram_dout0[27] ,
    \dcache_dffram_dout0[26] ,
    \dcache_dffram_dout0[25] ,
    \dcache_dffram_dout0[24] ,
    \dcache_dffram_dout0[23] ,
    \dcache_dffram_dout0[22] ,
    \dcache_dffram_dout0[21] ,
    \dcache_dffram_dout0[20] ,
    \dcache_dffram_dout0[19] ,
    \dcache_dffram_dout0[18] ,
    \dcache_dffram_dout0[17] ,
    \dcache_dffram_dout0[16] ,
    \dcache_dffram_dout0[15] ,
    \dcache_dffram_dout0[14] ,
    \dcache_dffram_dout0[13] ,
    \dcache_dffram_dout0[12] ,
    \dcache_dffram_dout0[11] ,
    \dcache_dffram_dout0[10] ,
    \dcache_dffram_dout0[9] ,
    \dcache_dffram_dout0[8] ,
    \dcache_dffram_dout0[7] ,
    \dcache_dffram_dout0[6] ,
    \dcache_dffram_dout0[5] ,
    \dcache_dffram_dout0[4] ,
    \dcache_dffram_dout0[3] ,
    \dcache_dffram_dout0[2] ,
    \dcache_dffram_dout0[1] ,
    \dcache_dffram_dout0[0] }),
    .dcache_dffram_dout1({\dcache_dffram_dout1[31] ,
    \dcache_dffram_dout1[30] ,
    \dcache_dffram_dout1[29] ,
    \dcache_dffram_dout1[28] ,
    \dcache_dffram_dout1[27] ,
    \dcache_dffram_dout1[26] ,
    \dcache_dffram_dout1[25] ,
    \dcache_dffram_dout1[24] ,
    \dcache_dffram_dout1[23] ,
    \dcache_dffram_dout1[22] ,
    \dcache_dffram_dout1[21] ,
    \dcache_dffram_dout1[20] ,
    \dcache_dffram_dout1[19] ,
    \dcache_dffram_dout1[18] ,
    \dcache_dffram_dout1[17] ,
    \dcache_dffram_dout1[16] ,
    \dcache_dffram_dout1[15] ,
    \dcache_dffram_dout1[14] ,
    \dcache_dffram_dout1[13] ,
    \dcache_dffram_dout1[12] ,
    \dcache_dffram_dout1[11] ,
    \dcache_dffram_dout1[10] ,
    \dcache_dffram_dout1[9] ,
    \dcache_dffram_dout1[8] ,
    \dcache_dffram_dout1[7] ,
    \dcache_dffram_dout1[6] ,
    \dcache_dffram_dout1[5] ,
    \dcache_dffram_dout1[4] ,
    \dcache_dffram_dout1[3] ,
    \dcache_dffram_dout1[2] ,
    \dcache_dffram_dout1[1] ,
    \dcache_dffram_dout1[0] }),
    .dcache_dffram_wmask0({\dcache_dffram_wmask0[3] ,
    \dcache_dffram_wmask0[2] ,
    \dcache_dffram_wmask0[1] ,
    \dcache_dffram_wmask0[0] }),
    .dcache_dffram_wmask1({\dcache_dffram_wmask1[3] ,
    \dcache_dffram_wmask1[2] ,
    \dcache_dffram_wmask1[1] ,
    \dcache_dffram_wmask1[0] }),
    .icache_dffram_addr0({\icache_dffram_addr0[7] ,
    \icache_dffram_addr0[6] ,
    \icache_dffram_addr0[5] ,
    \icache_dffram_addr0[4] ,
    \icache_dffram_addr0[3] ,
    \icache_dffram_addr0[2] ,
    \icache_dffram_addr0[1] ,
    \icache_dffram_addr0[0] }),
    .icache_dffram_addr1({\icache_dffram_addr1[7] ,
    \icache_dffram_addr1[6] ,
    \icache_dffram_addr1[5] ,
    \icache_dffram_addr1[4] ,
    \icache_dffram_addr1[3] ,
    \icache_dffram_addr1[2] ,
    \icache_dffram_addr1[1] ,
    \icache_dffram_addr1[0] }),
    .icache_dffram_din0({\icache_dffram_din0[31] ,
    \icache_dffram_din0[30] ,
    \icache_dffram_din0[29] ,
    \icache_dffram_din0[28] ,
    \icache_dffram_din0[27] ,
    \icache_dffram_din0[26] ,
    \icache_dffram_din0[25] ,
    \icache_dffram_din0[24] ,
    \icache_dffram_din0[23] ,
    \icache_dffram_din0[22] ,
    \icache_dffram_din0[21] ,
    \icache_dffram_din0[20] ,
    \icache_dffram_din0[19] ,
    \icache_dffram_din0[18] ,
    \icache_dffram_din0[17] ,
    \icache_dffram_din0[16] ,
    \icache_dffram_din0[15] ,
    \icache_dffram_din0[14] ,
    \icache_dffram_din0[13] ,
    \icache_dffram_din0[12] ,
    \icache_dffram_din0[11] ,
    \icache_dffram_din0[10] ,
    \icache_dffram_din0[9] ,
    \icache_dffram_din0[8] ,
    \icache_dffram_din0[7] ,
    \icache_dffram_din0[6] ,
    \icache_dffram_din0[5] ,
    \icache_dffram_din0[4] ,
    \icache_dffram_din0[3] ,
    \icache_dffram_din0[2] ,
    \icache_dffram_din0[1] ,
    \icache_dffram_din0[0] }),
    .icache_dffram_din1({\icache_dffram_din1[31] ,
    \icache_dffram_din1[30] ,
    \icache_dffram_din1[29] ,
    \icache_dffram_din1[28] ,
    \icache_dffram_din1[27] ,
    \icache_dffram_din1[26] ,
    \icache_dffram_din1[25] ,
    \icache_dffram_din1[24] ,
    \icache_dffram_din1[23] ,
    \icache_dffram_din1[22] ,
    \icache_dffram_din1[21] ,
    \icache_dffram_din1[20] ,
    \icache_dffram_din1[19] ,
    \icache_dffram_din1[18] ,
    \icache_dffram_din1[17] ,
    \icache_dffram_din1[16] ,
    \icache_dffram_din1[15] ,
    \icache_dffram_din1[14] ,
    \icache_dffram_din1[13] ,
    \icache_dffram_din1[12] ,
    \icache_dffram_din1[11] ,
    \icache_dffram_din1[10] ,
    \icache_dffram_din1[9] ,
    \icache_dffram_din1[8] ,
    \icache_dffram_din1[7] ,
    \icache_dffram_din1[6] ,
    \icache_dffram_din1[5] ,
    \icache_dffram_din1[4] ,
    \icache_dffram_din1[3] ,
    \icache_dffram_din1[2] ,
    \icache_dffram_din1[1] ,
    \icache_dffram_din1[0] }),
    .icache_dffram_dout0({\icache_dffram_dout0[31] ,
    \icache_dffram_dout0[30] ,
    \icache_dffram_dout0[29] ,
    \icache_dffram_dout0[28] ,
    \icache_dffram_dout0[27] ,
    \icache_dffram_dout0[26] ,
    \icache_dffram_dout0[25] ,
    \icache_dffram_dout0[24] ,
    \icache_dffram_dout0[23] ,
    \icache_dffram_dout0[22] ,
    \icache_dffram_dout0[21] ,
    \icache_dffram_dout0[20] ,
    \icache_dffram_dout0[19] ,
    \icache_dffram_dout0[18] ,
    \icache_dffram_dout0[17] ,
    \icache_dffram_dout0[16] ,
    \icache_dffram_dout0[15] ,
    \icache_dffram_dout0[14] ,
    \icache_dffram_dout0[13] ,
    \icache_dffram_dout0[12] ,
    \icache_dffram_dout0[11] ,
    \icache_dffram_dout0[10] ,
    \icache_dffram_dout0[9] ,
    \icache_dffram_dout0[8] ,
    \icache_dffram_dout0[7] ,
    \icache_dffram_dout0[6] ,
    \icache_dffram_dout0[5] ,
    \icache_dffram_dout0[4] ,
    \icache_dffram_dout0[3] ,
    \icache_dffram_dout0[2] ,
    \icache_dffram_dout0[1] ,
    \icache_dffram_dout0[0] }),
    .icache_dffram_dout1({\icache_dffram_dout1[31] ,
    \icache_dffram_dout1[30] ,
    \icache_dffram_dout1[29] ,
    \icache_dffram_dout1[28] ,
    \icache_dffram_dout1[27] ,
    \icache_dffram_dout1[26] ,
    \icache_dffram_dout1[25] ,
    \icache_dffram_dout1[24] ,
    \icache_dffram_dout1[23] ,
    \icache_dffram_dout1[22] ,
    \icache_dffram_dout1[21] ,
    \icache_dffram_dout1[20] ,
    \icache_dffram_dout1[19] ,
    \icache_dffram_dout1[18] ,
    \icache_dffram_dout1[17] ,
    \icache_dffram_dout1[16] ,
    \icache_dffram_dout1[15] ,
    \icache_dffram_dout1[14] ,
    \icache_dffram_dout1[13] ,
    \icache_dffram_dout1[12] ,
    \icache_dffram_dout1[11] ,
    \icache_dffram_dout1[10] ,
    \icache_dffram_dout1[9] ,
    \icache_dffram_dout1[8] ,
    \icache_dffram_dout1[7] ,
    \icache_dffram_dout1[6] ,
    \icache_dffram_dout1[5] ,
    \icache_dffram_dout1[4] ,
    \icache_dffram_dout1[3] ,
    \icache_dffram_dout1[2] ,
    \icache_dffram_dout1[1] ,
    \icache_dffram_dout1[0] }),
    .icache_dffram_wmask0({\icache_dffram_wmask0[3] ,
    \icache_dffram_wmask0[2] ,
    \icache_dffram_wmask0[1] ,
    \icache_dffram_wmask0[0] }),
    .icache_dffram_wmask1({\icache_dffram_wmask1[3] ,
    \icache_dffram_wmask1[2] ,
    \icache_dffram_wmask1[1] ,
    \icache_dffram_wmask1[0] }),
    .irq_lines({\irq_lines_rp[15] ,
    \irq_lines_rp[14] ,
    \irq_lines_rp[13] ,
    \irq_lines_rp[12] ,
    \irq_lines_rp[11] ,
    \irq_lines_rp[10] ,
    \irq_lines_rp[9] ,
    \irq_lines_rp[8] ,
    \irq_lines_rp[7] ,
    \irq_lines_rp[6] ,
    \irq_lines_rp[5] ,
    \irq_lines_rp[4] ,
    \irq_lines_rp[3] ,
    \irq_lines_rp[2] ,
    \irq_lines_rp[1] ,
    \irq_lines_rp[0] }),
    .riscv_debug({la_data_out[63],
    la_data_out[62],
    la_data_out[61],
    la_data_out[60],
    la_data_out[59],
    la_data_out[58],
    la_data_out[57],
    la_data_out[56],
    la_data_out[55],
    la_data_out[54],
    la_data_out[53],
    la_data_out[52],
    la_data_out[51],
    la_data_out[50],
    la_data_out[49],
    la_data_out[48],
    la_data_out[47],
    la_data_out[46],
    la_data_out[45],
    la_data_out[44],
    la_data_out[43],
    la_data_out[42],
    la_data_out[41],
    la_data_out[40],
    la_data_out[39],
    la_data_out[38],
    la_data_out[37],
    la_data_out[36],
    la_data_out[35],
    la_data_out[34],
    la_data_out[33],
    la_data_out[32],
    la_data_out[31],
    la_data_out[30],
    la_data_out[29],
    la_data_out[28],
    la_data_out[27],
    la_data_out[26],
    la_data_out[25],
    la_data_out[24],
    la_data_out[23],
    la_data_out[22],
    la_data_out[21],
    la_data_out[20],
    la_data_out[19],
    la_data_out[18],
    la_data_out[17],
    la_data_out[16],
    la_data_out[15],
    la_data_out[14],
    la_data_out[13],
    la_data_out[12],
    la_data_out[11],
    la_data_out[10],
    la_data_out[9],
    la_data_out[8],
    la_data_out[7],
    la_data_out[6],
    la_data_out[5],
    la_data_out[4],
    la_data_out[3],
    la_data_out[2],
    la_data_out[1],
    la_data_out[0]}),
    .tcm_dffram_addr0({\tcm_dffram_addr0[7] ,
    \tcm_dffram_addr0[6] ,
    \tcm_dffram_addr0[5] ,
    \tcm_dffram_addr0[4] ,
    \tcm_dffram_addr0[3] ,
    \tcm_dffram_addr0[2] ,
    \tcm_dffram_addr0[1] ,
    \tcm_dffram_addr0[0] }),
    .tcm_dffram_addr1({\tcm_dffram_addr1[7] ,
    \tcm_dffram_addr1[6] ,
    \tcm_dffram_addr1[5] ,
    \tcm_dffram_addr1[4] ,
    \tcm_dffram_addr1[3] ,
    \tcm_dffram_addr1[2] ,
    \tcm_dffram_addr1[1] ,
    \tcm_dffram_addr1[0] }),
    .tcm_dffram_din0({\tcm_dffram_din0[31] ,
    \tcm_dffram_din0[30] ,
    \tcm_dffram_din0[29] ,
    \tcm_dffram_din0[28] ,
    \tcm_dffram_din0[27] ,
    \tcm_dffram_din0[26] ,
    \tcm_dffram_din0[25] ,
    \tcm_dffram_din0[24] ,
    \tcm_dffram_din0[23] ,
    \tcm_dffram_din0[22] ,
    \tcm_dffram_din0[21] ,
    \tcm_dffram_din0[20] ,
    \tcm_dffram_din0[19] ,
    \tcm_dffram_din0[18] ,
    \tcm_dffram_din0[17] ,
    \tcm_dffram_din0[16] ,
    \tcm_dffram_din0[15] ,
    \tcm_dffram_din0[14] ,
    \tcm_dffram_din0[13] ,
    \tcm_dffram_din0[12] ,
    \tcm_dffram_din0[11] ,
    \tcm_dffram_din0[10] ,
    \tcm_dffram_din0[9] ,
    \tcm_dffram_din0[8] ,
    \tcm_dffram_din0[7] ,
    \tcm_dffram_din0[6] ,
    \tcm_dffram_din0[5] ,
    \tcm_dffram_din0[4] ,
    \tcm_dffram_din0[3] ,
    \tcm_dffram_din0[2] ,
    \tcm_dffram_din0[1] ,
    \tcm_dffram_din0[0] }),
    .tcm_dffram_din1({\tcm_dffram_din1[31] ,
    \tcm_dffram_din1[30] ,
    \tcm_dffram_din1[29] ,
    \tcm_dffram_din1[28] ,
    \tcm_dffram_din1[27] ,
    \tcm_dffram_din1[26] ,
    \tcm_dffram_din1[25] ,
    \tcm_dffram_din1[24] ,
    \tcm_dffram_din1[23] ,
    \tcm_dffram_din1[22] ,
    \tcm_dffram_din1[21] ,
    \tcm_dffram_din1[20] ,
    \tcm_dffram_din1[19] ,
    \tcm_dffram_din1[18] ,
    \tcm_dffram_din1[17] ,
    \tcm_dffram_din1[16] ,
    \tcm_dffram_din1[15] ,
    \tcm_dffram_din1[14] ,
    \tcm_dffram_din1[13] ,
    \tcm_dffram_din1[12] ,
    \tcm_dffram_din1[11] ,
    \tcm_dffram_din1[10] ,
    \tcm_dffram_din1[9] ,
    \tcm_dffram_din1[8] ,
    \tcm_dffram_din1[7] ,
    \tcm_dffram_din1[6] ,
    \tcm_dffram_din1[5] ,
    \tcm_dffram_din1[4] ,
    \tcm_dffram_din1[3] ,
    \tcm_dffram_din1[2] ,
    \tcm_dffram_din1[1] ,
    \tcm_dffram_din1[0] }),
    .tcm_dffram_dout0({\tcm_dffram_dout0[31] ,
    \tcm_dffram_dout0[30] ,
    \tcm_dffram_dout0[29] ,
    \tcm_dffram_dout0[28] ,
    \tcm_dffram_dout0[27] ,
    \tcm_dffram_dout0[26] ,
    \tcm_dffram_dout0[25] ,
    \tcm_dffram_dout0[24] ,
    \tcm_dffram_dout0[23] ,
    \tcm_dffram_dout0[22] ,
    \tcm_dffram_dout0[21] ,
    \tcm_dffram_dout0[20] ,
    \tcm_dffram_dout0[19] ,
    \tcm_dffram_dout0[18] ,
    \tcm_dffram_dout0[17] ,
    \tcm_dffram_dout0[16] ,
    \tcm_dffram_dout0[15] ,
    \tcm_dffram_dout0[14] ,
    \tcm_dffram_dout0[13] ,
    \tcm_dffram_dout0[12] ,
    \tcm_dffram_dout0[11] ,
    \tcm_dffram_dout0[10] ,
    \tcm_dffram_dout0[9] ,
    \tcm_dffram_dout0[8] ,
    \tcm_dffram_dout0[7] ,
    \tcm_dffram_dout0[6] ,
    \tcm_dffram_dout0[5] ,
    \tcm_dffram_dout0[4] ,
    \tcm_dffram_dout0[3] ,
    \tcm_dffram_dout0[2] ,
    \tcm_dffram_dout0[1] ,
    \tcm_dffram_dout0[0] }),
    .tcm_dffram_dout1({\tcm_dffram_dout1[31] ,
    \tcm_dffram_dout1[30] ,
    \tcm_dffram_dout1[29] ,
    \tcm_dffram_dout1[28] ,
    \tcm_dffram_dout1[27] ,
    \tcm_dffram_dout1[26] ,
    \tcm_dffram_dout1[25] ,
    \tcm_dffram_dout1[24] ,
    \tcm_dffram_dout1[23] ,
    \tcm_dffram_dout1[22] ,
    \tcm_dffram_dout1[21] ,
    \tcm_dffram_dout1[20] ,
    \tcm_dffram_dout1[19] ,
    \tcm_dffram_dout1[18] ,
    \tcm_dffram_dout1[17] ,
    \tcm_dffram_dout1[16] ,
    \tcm_dffram_dout1[15] ,
    \tcm_dffram_dout1[14] ,
    \tcm_dffram_dout1[13] ,
    \tcm_dffram_dout1[12] ,
    \tcm_dffram_dout1[11] ,
    \tcm_dffram_dout1[10] ,
    \tcm_dffram_dout1[9] ,
    \tcm_dffram_dout1[8] ,
    \tcm_dffram_dout1[7] ,
    \tcm_dffram_dout1[6] ,
    \tcm_dffram_dout1[5] ,
    \tcm_dffram_dout1[4] ,
    \tcm_dffram_dout1[3] ,
    \tcm_dffram_dout1[2] ,
    \tcm_dffram_dout1[1] ,
    \tcm_dffram_dout1[0] }),
    .tcm_dffram_wmask0({\tcm_dffram_wmask0[3] ,
    \tcm_dffram_wmask0[2] ,
    \tcm_dffram_wmask0[1] ,
    \tcm_dffram_wmask0[0] }),
    .tcm_dffram_wmask1({\tcm_dffram_wmask1[3] ,
    \tcm_dffram_wmask1[2] ,
    \tcm_dffram_wmask1[1] ,
    \tcm_dffram_wmask1[0] }),
    .wb_dcache_adr_o({\wbd_riscv_dcache_adr_i[31] ,
    \wbd_riscv_dcache_adr_i[30] ,
    \wbd_riscv_dcache_adr_i[29] ,
    \wbd_riscv_dcache_adr_i[28] ,
    \wbd_riscv_dcache_adr_i[27] ,
    \wbd_riscv_dcache_adr_i[26] ,
    \wbd_riscv_dcache_adr_i[25] ,
    \wbd_riscv_dcache_adr_i[24] ,
    \wbd_riscv_dcache_adr_i[23] ,
    \wbd_riscv_dcache_adr_i[22] ,
    \wbd_riscv_dcache_adr_i[21] ,
    \wbd_riscv_dcache_adr_i[20] ,
    \wbd_riscv_dcache_adr_i[19] ,
    \wbd_riscv_dcache_adr_i[18] ,
    \wbd_riscv_dcache_adr_i[17] ,
    \wbd_riscv_dcache_adr_i[16] ,
    \wbd_riscv_dcache_adr_i[15] ,
    \wbd_riscv_dcache_adr_i[14] ,
    \wbd_riscv_dcache_adr_i[13] ,
    \wbd_riscv_dcache_adr_i[12] ,
    \wbd_riscv_dcache_adr_i[11] ,
    \wbd_riscv_dcache_adr_i[10] ,
    \wbd_riscv_dcache_adr_i[9] ,
    \wbd_riscv_dcache_adr_i[8] ,
    \wbd_riscv_dcache_adr_i[7] ,
    \wbd_riscv_dcache_adr_i[6] ,
    \wbd_riscv_dcache_adr_i[5] ,
    \wbd_riscv_dcache_adr_i[4] ,
    \wbd_riscv_dcache_adr_i[3] ,
    \wbd_riscv_dcache_adr_i[2] ,
    \wbd_riscv_dcache_adr_i[1] ,
    \wbd_riscv_dcache_adr_i[0] }),
    .wb_dcache_bl_o({\wbd_riscv_dcache_bl_i[9] ,
    \wbd_riscv_dcache_bl_i[8] ,
    \wbd_riscv_dcache_bl_i[7] ,
    \wbd_riscv_dcache_bl_i[6] ,
    \wbd_riscv_dcache_bl_i[5] ,
    \wbd_riscv_dcache_bl_i[4] ,
    \wbd_riscv_dcache_bl_i[3] ,
    \wbd_riscv_dcache_bl_i[2] ,
    \wbd_riscv_dcache_bl_i[1] ,
    \wbd_riscv_dcache_bl_i[0] }),
    .wb_dcache_dat_i({\wbd_riscv_dcache_dat_o[31] ,
    \wbd_riscv_dcache_dat_o[30] ,
    \wbd_riscv_dcache_dat_o[29] ,
    \wbd_riscv_dcache_dat_o[28] ,
    \wbd_riscv_dcache_dat_o[27] ,
    \wbd_riscv_dcache_dat_o[26] ,
    \wbd_riscv_dcache_dat_o[25] ,
    \wbd_riscv_dcache_dat_o[24] ,
    \wbd_riscv_dcache_dat_o[23] ,
    \wbd_riscv_dcache_dat_o[22] ,
    \wbd_riscv_dcache_dat_o[21] ,
    \wbd_riscv_dcache_dat_o[20] ,
    \wbd_riscv_dcache_dat_o[19] ,
    \wbd_riscv_dcache_dat_o[18] ,
    \wbd_riscv_dcache_dat_o[17] ,
    \wbd_riscv_dcache_dat_o[16] ,
    \wbd_riscv_dcache_dat_o[15] ,
    \wbd_riscv_dcache_dat_o[14] ,
    \wbd_riscv_dcache_dat_o[13] ,
    \wbd_riscv_dcache_dat_o[12] ,
    \wbd_riscv_dcache_dat_o[11] ,
    \wbd_riscv_dcache_dat_o[10] ,
    \wbd_riscv_dcache_dat_o[9] ,
    \wbd_riscv_dcache_dat_o[8] ,
    \wbd_riscv_dcache_dat_o[7] ,
    \wbd_riscv_dcache_dat_o[6] ,
    \wbd_riscv_dcache_dat_o[5] ,
    \wbd_riscv_dcache_dat_o[4] ,
    \wbd_riscv_dcache_dat_o[3] ,
    \wbd_riscv_dcache_dat_o[2] ,
    \wbd_riscv_dcache_dat_o[1] ,
    \wbd_riscv_dcache_dat_o[0] }),
    .wb_dcache_dat_o({\wbd_riscv_dcache_dat_i[31] ,
    \wbd_riscv_dcache_dat_i[30] ,
    \wbd_riscv_dcache_dat_i[29] ,
    \wbd_riscv_dcache_dat_i[28] ,
    \wbd_riscv_dcache_dat_i[27] ,
    \wbd_riscv_dcache_dat_i[26] ,
    \wbd_riscv_dcache_dat_i[25] ,
    \wbd_riscv_dcache_dat_i[24] ,
    \wbd_riscv_dcache_dat_i[23] ,
    \wbd_riscv_dcache_dat_i[22] ,
    \wbd_riscv_dcache_dat_i[21] ,
    \wbd_riscv_dcache_dat_i[20] ,
    \wbd_riscv_dcache_dat_i[19] ,
    \wbd_riscv_dcache_dat_i[18] ,
    \wbd_riscv_dcache_dat_i[17] ,
    \wbd_riscv_dcache_dat_i[16] ,
    \wbd_riscv_dcache_dat_i[15] ,
    \wbd_riscv_dcache_dat_i[14] ,
    \wbd_riscv_dcache_dat_i[13] ,
    \wbd_riscv_dcache_dat_i[12] ,
    \wbd_riscv_dcache_dat_i[11] ,
    \wbd_riscv_dcache_dat_i[10] ,
    \wbd_riscv_dcache_dat_i[9] ,
    \wbd_riscv_dcache_dat_i[8] ,
    \wbd_riscv_dcache_dat_i[7] ,
    \wbd_riscv_dcache_dat_i[6] ,
    \wbd_riscv_dcache_dat_i[5] ,
    \wbd_riscv_dcache_dat_i[4] ,
    \wbd_riscv_dcache_dat_i[3] ,
    \wbd_riscv_dcache_dat_i[2] ,
    \wbd_riscv_dcache_dat_i[1] ,
    \wbd_riscv_dcache_dat_i[0] }),
    .wb_dcache_sel_o({\wbd_riscv_dcache_sel_i[3] ,
    \wbd_riscv_dcache_sel_i[2] ,
    \wbd_riscv_dcache_sel_i[1] ,
    \wbd_riscv_dcache_sel_i[0] }),
    .wb_icache_adr_o({\wbd_riscv_icache_adr_i[31] ,
    \wbd_riscv_icache_adr_i[30] ,
    \wbd_riscv_icache_adr_i[29] ,
    \wbd_riscv_icache_adr_i[28] ,
    \wbd_riscv_icache_adr_i[27] ,
    \wbd_riscv_icache_adr_i[26] ,
    \wbd_riscv_icache_adr_i[25] ,
    \wbd_riscv_icache_adr_i[24] ,
    \wbd_riscv_icache_adr_i[23] ,
    \wbd_riscv_icache_adr_i[22] ,
    \wbd_riscv_icache_adr_i[21] ,
    \wbd_riscv_icache_adr_i[20] ,
    \wbd_riscv_icache_adr_i[19] ,
    \wbd_riscv_icache_adr_i[18] ,
    \wbd_riscv_icache_adr_i[17] ,
    \wbd_riscv_icache_adr_i[16] ,
    \wbd_riscv_icache_adr_i[15] ,
    \wbd_riscv_icache_adr_i[14] ,
    \wbd_riscv_icache_adr_i[13] ,
    \wbd_riscv_icache_adr_i[12] ,
    \wbd_riscv_icache_adr_i[11] ,
    \wbd_riscv_icache_adr_i[10] ,
    \wbd_riscv_icache_adr_i[9] ,
    \wbd_riscv_icache_adr_i[8] ,
    \wbd_riscv_icache_adr_i[7] ,
    \wbd_riscv_icache_adr_i[6] ,
    \wbd_riscv_icache_adr_i[5] ,
    \wbd_riscv_icache_adr_i[4] ,
    \wbd_riscv_icache_adr_i[3] ,
    \wbd_riscv_icache_adr_i[2] ,
    \wbd_riscv_icache_adr_i[1] ,
    \wbd_riscv_icache_adr_i[0] }),
    .wb_icache_bl_o({\wbd_riscv_icache_bl_i[9] ,
    \wbd_riscv_icache_bl_i[8] ,
    \wbd_riscv_icache_bl_i[7] ,
    \wbd_riscv_icache_bl_i[6] ,
    \wbd_riscv_icache_bl_i[5] ,
    \wbd_riscv_icache_bl_i[4] ,
    \wbd_riscv_icache_bl_i[3] ,
    \wbd_riscv_icache_bl_i[2] ,
    \wbd_riscv_icache_bl_i[1] ,
    \wbd_riscv_icache_bl_i[0] }),
    .wb_icache_dat_i({\wbd_riscv_icache_dat_o[31] ,
    \wbd_riscv_icache_dat_o[30] ,
    \wbd_riscv_icache_dat_o[29] ,
    \wbd_riscv_icache_dat_o[28] ,
    \wbd_riscv_icache_dat_o[27] ,
    \wbd_riscv_icache_dat_o[26] ,
    \wbd_riscv_icache_dat_o[25] ,
    \wbd_riscv_icache_dat_o[24] ,
    \wbd_riscv_icache_dat_o[23] ,
    \wbd_riscv_icache_dat_o[22] ,
    \wbd_riscv_icache_dat_o[21] ,
    \wbd_riscv_icache_dat_o[20] ,
    \wbd_riscv_icache_dat_o[19] ,
    \wbd_riscv_icache_dat_o[18] ,
    \wbd_riscv_icache_dat_o[17] ,
    \wbd_riscv_icache_dat_o[16] ,
    \wbd_riscv_icache_dat_o[15] ,
    \wbd_riscv_icache_dat_o[14] ,
    \wbd_riscv_icache_dat_o[13] ,
    \wbd_riscv_icache_dat_o[12] ,
    \wbd_riscv_icache_dat_o[11] ,
    \wbd_riscv_icache_dat_o[10] ,
    \wbd_riscv_icache_dat_o[9] ,
    \wbd_riscv_icache_dat_o[8] ,
    \wbd_riscv_icache_dat_o[7] ,
    \wbd_riscv_icache_dat_o[6] ,
    \wbd_riscv_icache_dat_o[5] ,
    \wbd_riscv_icache_dat_o[4] ,
    \wbd_riscv_icache_dat_o[3] ,
    \wbd_riscv_icache_dat_o[2] ,
    \wbd_riscv_icache_dat_o[1] ,
    \wbd_riscv_icache_dat_o[0] }),
    .wb_icache_sel_o({\wbd_riscv_icache_sel_i[3] ,
    \wbd_riscv_icache_sel_i[2] ,
    \wbd_riscv_icache_sel_i[1] ,
    \wbd_riscv_icache_sel_i[0] }),
    .wbd_dmem_adr_o({\wbd_riscv_dmem_adr_i[31] ,
    \wbd_riscv_dmem_adr_i[30] ,
    \wbd_riscv_dmem_adr_i[29] ,
    \wbd_riscv_dmem_adr_i[28] ,
    \wbd_riscv_dmem_adr_i[27] ,
    \wbd_riscv_dmem_adr_i[26] ,
    \wbd_riscv_dmem_adr_i[25] ,
    \wbd_riscv_dmem_adr_i[24] ,
    \wbd_riscv_dmem_adr_i[23] ,
    \wbd_riscv_dmem_adr_i[22] ,
    \wbd_riscv_dmem_adr_i[21] ,
    \wbd_riscv_dmem_adr_i[20] ,
    \wbd_riscv_dmem_adr_i[19] ,
    \wbd_riscv_dmem_adr_i[18] ,
    \wbd_riscv_dmem_adr_i[17] ,
    \wbd_riscv_dmem_adr_i[16] ,
    \wbd_riscv_dmem_adr_i[15] ,
    \wbd_riscv_dmem_adr_i[14] ,
    \wbd_riscv_dmem_adr_i[13] ,
    \wbd_riscv_dmem_adr_i[12] ,
    \wbd_riscv_dmem_adr_i[11] ,
    \wbd_riscv_dmem_adr_i[10] ,
    \wbd_riscv_dmem_adr_i[9] ,
    \wbd_riscv_dmem_adr_i[8] ,
    \wbd_riscv_dmem_adr_i[7] ,
    \wbd_riscv_dmem_adr_i[6] ,
    \wbd_riscv_dmem_adr_i[5] ,
    \wbd_riscv_dmem_adr_i[4] ,
    \wbd_riscv_dmem_adr_i[3] ,
    \wbd_riscv_dmem_adr_i[2] ,
    \wbd_riscv_dmem_adr_i[1] ,
    \wbd_riscv_dmem_adr_i[0] }),
    .wbd_dmem_dat_i({\wbd_riscv_dmem_dat_o[31] ,
    \wbd_riscv_dmem_dat_o[30] ,
    \wbd_riscv_dmem_dat_o[29] ,
    \wbd_riscv_dmem_dat_o[28] ,
    \wbd_riscv_dmem_dat_o[27] ,
    \wbd_riscv_dmem_dat_o[26] ,
    \wbd_riscv_dmem_dat_o[25] ,
    \wbd_riscv_dmem_dat_o[24] ,
    \wbd_riscv_dmem_dat_o[23] ,
    \wbd_riscv_dmem_dat_o[22] ,
    \wbd_riscv_dmem_dat_o[21] ,
    \wbd_riscv_dmem_dat_o[20] ,
    \wbd_riscv_dmem_dat_o[19] ,
    \wbd_riscv_dmem_dat_o[18] ,
    \wbd_riscv_dmem_dat_o[17] ,
    \wbd_riscv_dmem_dat_o[16] ,
    \wbd_riscv_dmem_dat_o[15] ,
    \wbd_riscv_dmem_dat_o[14] ,
    \wbd_riscv_dmem_dat_o[13] ,
    \wbd_riscv_dmem_dat_o[12] ,
    \wbd_riscv_dmem_dat_o[11] ,
    \wbd_riscv_dmem_dat_o[10] ,
    \wbd_riscv_dmem_dat_o[9] ,
    \wbd_riscv_dmem_dat_o[8] ,
    \wbd_riscv_dmem_dat_o[7] ,
    \wbd_riscv_dmem_dat_o[6] ,
    \wbd_riscv_dmem_dat_o[5] ,
    \wbd_riscv_dmem_dat_o[4] ,
    \wbd_riscv_dmem_dat_o[3] ,
    \wbd_riscv_dmem_dat_o[2] ,
    \wbd_riscv_dmem_dat_o[1] ,
    \wbd_riscv_dmem_dat_o[0] }),
    .wbd_dmem_dat_o({\wbd_riscv_dmem_dat_i[31] ,
    \wbd_riscv_dmem_dat_i[30] ,
    \wbd_riscv_dmem_dat_i[29] ,
    \wbd_riscv_dmem_dat_i[28] ,
    \wbd_riscv_dmem_dat_i[27] ,
    \wbd_riscv_dmem_dat_i[26] ,
    \wbd_riscv_dmem_dat_i[25] ,
    \wbd_riscv_dmem_dat_i[24] ,
    \wbd_riscv_dmem_dat_i[23] ,
    \wbd_riscv_dmem_dat_i[22] ,
    \wbd_riscv_dmem_dat_i[21] ,
    \wbd_riscv_dmem_dat_i[20] ,
    \wbd_riscv_dmem_dat_i[19] ,
    \wbd_riscv_dmem_dat_i[18] ,
    \wbd_riscv_dmem_dat_i[17] ,
    \wbd_riscv_dmem_dat_i[16] ,
    \wbd_riscv_dmem_dat_i[15] ,
    \wbd_riscv_dmem_dat_i[14] ,
    \wbd_riscv_dmem_dat_i[13] ,
    \wbd_riscv_dmem_dat_i[12] ,
    \wbd_riscv_dmem_dat_i[11] ,
    \wbd_riscv_dmem_dat_i[10] ,
    \wbd_riscv_dmem_dat_i[9] ,
    \wbd_riscv_dmem_dat_i[8] ,
    \wbd_riscv_dmem_dat_i[7] ,
    \wbd_riscv_dmem_dat_i[6] ,
    \wbd_riscv_dmem_dat_i[5] ,
    \wbd_riscv_dmem_dat_i[4] ,
    \wbd_riscv_dmem_dat_i[3] ,
    \wbd_riscv_dmem_dat_i[2] ,
    \wbd_riscv_dmem_dat_i[1] ,
    \wbd_riscv_dmem_dat_i[0] }),
    .wbd_dmem_sel_o({\wbd_riscv_dmem_sel_i[3] ,
    \wbd_riscv_dmem_sel_i[2] ,
    \wbd_riscv_dmem_sel_i[1] ,
    \wbd_riscv_dmem_sel_i[0] }));
 DFFRAM u_tcm_1KB_mem0 (.CLK(tcm_dffram_clk0),
    .EN(tcm_dffram_cs0),
    .VGND(vssd1),
    .VPWR(vccd1),
    .A({\tcm_dffram_addr0[7] ,
    \tcm_dffram_addr0[6] ,
    \tcm_dffram_addr0[5] ,
    \tcm_dffram_addr0[4] ,
    \tcm_dffram_addr0[3] ,
    \tcm_dffram_addr0[2] ,
    \tcm_dffram_addr0[1] ,
    \tcm_dffram_addr0[0] }),
    .Di({\tcm_dffram_din0[31] ,
    \tcm_dffram_din0[30] ,
    \tcm_dffram_din0[29] ,
    \tcm_dffram_din0[28] ,
    \tcm_dffram_din0[27] ,
    \tcm_dffram_din0[26] ,
    \tcm_dffram_din0[25] ,
    \tcm_dffram_din0[24] ,
    \tcm_dffram_din0[23] ,
    \tcm_dffram_din0[22] ,
    \tcm_dffram_din0[21] ,
    \tcm_dffram_din0[20] ,
    \tcm_dffram_din0[19] ,
    \tcm_dffram_din0[18] ,
    \tcm_dffram_din0[17] ,
    \tcm_dffram_din0[16] ,
    \tcm_dffram_din0[15] ,
    \tcm_dffram_din0[14] ,
    \tcm_dffram_din0[13] ,
    \tcm_dffram_din0[12] ,
    \tcm_dffram_din0[11] ,
    \tcm_dffram_din0[10] ,
    \tcm_dffram_din0[9] ,
    \tcm_dffram_din0[8] ,
    \tcm_dffram_din0[7] ,
    \tcm_dffram_din0[6] ,
    \tcm_dffram_din0[5] ,
    \tcm_dffram_din0[4] ,
    \tcm_dffram_din0[3] ,
    \tcm_dffram_din0[2] ,
    \tcm_dffram_din0[1] ,
    \tcm_dffram_din0[0] }),
    .Do({\tcm_dffram_dout0[31] ,
    \tcm_dffram_dout0[30] ,
    \tcm_dffram_dout0[29] ,
    \tcm_dffram_dout0[28] ,
    \tcm_dffram_dout0[27] ,
    \tcm_dffram_dout0[26] ,
    \tcm_dffram_dout0[25] ,
    \tcm_dffram_dout0[24] ,
    \tcm_dffram_dout0[23] ,
    \tcm_dffram_dout0[22] ,
    \tcm_dffram_dout0[21] ,
    \tcm_dffram_dout0[20] ,
    \tcm_dffram_dout0[19] ,
    \tcm_dffram_dout0[18] ,
    \tcm_dffram_dout0[17] ,
    \tcm_dffram_dout0[16] ,
    \tcm_dffram_dout0[15] ,
    \tcm_dffram_dout0[14] ,
    \tcm_dffram_dout0[13] ,
    \tcm_dffram_dout0[12] ,
    \tcm_dffram_dout0[11] ,
    \tcm_dffram_dout0[10] ,
    \tcm_dffram_dout0[9] ,
    \tcm_dffram_dout0[8] ,
    \tcm_dffram_dout0[7] ,
    \tcm_dffram_dout0[6] ,
    \tcm_dffram_dout0[5] ,
    \tcm_dffram_dout0[4] ,
    \tcm_dffram_dout0[3] ,
    \tcm_dffram_dout0[2] ,
    \tcm_dffram_dout0[1] ,
    \tcm_dffram_dout0[0] }),
    .WE({\tcm_dffram_wmask0[3] ,
    \tcm_dffram_wmask0[2] ,
    \tcm_dffram_wmask0[1] ,
    \tcm_dffram_wmask0[0] }));
 DFFRAM u_tcm_1KB_mem1 (.CLK(tcm_dffram_clk1),
    .EN(tcm_dffram_cs1),
    .VGND(vssd1),
    .VPWR(vccd1),
    .A({\tcm_dffram_addr1[7] ,
    \tcm_dffram_addr1[6] ,
    \tcm_dffram_addr1[5] ,
    \tcm_dffram_addr1[4] ,
    \tcm_dffram_addr1[3] ,
    \tcm_dffram_addr1[2] ,
    \tcm_dffram_addr1[1] ,
    \tcm_dffram_addr1[0] }),
    .Di({\tcm_dffram_din1[31] ,
    \tcm_dffram_din1[30] ,
    \tcm_dffram_din1[29] ,
    \tcm_dffram_din1[28] ,
    \tcm_dffram_din1[27] ,
    \tcm_dffram_din1[26] ,
    \tcm_dffram_din1[25] ,
    \tcm_dffram_din1[24] ,
    \tcm_dffram_din1[23] ,
    \tcm_dffram_din1[22] ,
    \tcm_dffram_din1[21] ,
    \tcm_dffram_din1[20] ,
    \tcm_dffram_din1[19] ,
    \tcm_dffram_din1[18] ,
    \tcm_dffram_din1[17] ,
    \tcm_dffram_din1[16] ,
    \tcm_dffram_din1[15] ,
    \tcm_dffram_din1[14] ,
    \tcm_dffram_din1[13] ,
    \tcm_dffram_din1[12] ,
    \tcm_dffram_din1[11] ,
    \tcm_dffram_din1[10] ,
    \tcm_dffram_din1[9] ,
    \tcm_dffram_din1[8] ,
    \tcm_dffram_din1[7] ,
    \tcm_dffram_din1[6] ,
    \tcm_dffram_din1[5] ,
    \tcm_dffram_din1[4] ,
    \tcm_dffram_din1[3] ,
    \tcm_dffram_din1[2] ,
    \tcm_dffram_din1[1] ,
    \tcm_dffram_din1[0] }),
    .Do({\tcm_dffram_dout1[31] ,
    \tcm_dffram_dout1[30] ,
    \tcm_dffram_dout1[29] ,
    \tcm_dffram_dout1[28] ,
    \tcm_dffram_dout1[27] ,
    \tcm_dffram_dout1[26] ,
    \tcm_dffram_dout1[25] ,
    \tcm_dffram_dout1[24] ,
    \tcm_dffram_dout1[23] ,
    \tcm_dffram_dout1[22] ,
    \tcm_dffram_dout1[21] ,
    \tcm_dffram_dout1[20] ,
    \tcm_dffram_dout1[19] ,
    \tcm_dffram_dout1[18] ,
    \tcm_dffram_dout1[17] ,
    \tcm_dffram_dout1[16] ,
    \tcm_dffram_dout1[15] ,
    \tcm_dffram_dout1[14] ,
    \tcm_dffram_dout1[13] ,
    \tcm_dffram_dout1[12] ,
    \tcm_dffram_dout1[11] ,
    \tcm_dffram_dout1[10] ,
    \tcm_dffram_dout1[9] ,
    \tcm_dffram_dout1[8] ,
    \tcm_dffram_dout1[7] ,
    \tcm_dffram_dout1[6] ,
    \tcm_dffram_dout1[5] ,
    \tcm_dffram_dout1[4] ,
    \tcm_dffram_dout1[3] ,
    \tcm_dffram_dout1[2] ,
    \tcm_dffram_dout1[1] ,
    \tcm_dffram_dout1[0] }),
    .WE({\tcm_dffram_wmask1[3] ,
    \tcm_dffram_wmask1[2] ,
    \tcm_dffram_wmask1[1] ,
    \tcm_dffram_wmask1[0] }));
 uart_i2c_usb_spi_top u_uart_i2c_usb_spi (.app_clk(wbd_clk_uart_skew),
    .i2c_rstn(i2c_rst_n),
    .i2cm_intr_o(i2cm_intr_o),
    .reg_ack(wbd_uart_ack_i),
    .reg_cs(wbd_uart_stb_o),
    .reg_wr(wbd_uart_we_o),
    .scl_pad_i(i2cm_clk_i),
    .scl_pad_o(i2cm_clk_o),
    .scl_pad_oen_o(i2cm_clk_oen),
    .sda_pad_i(i2cm_data_i),
    .sda_pad_o(i2cm_data_o),
    .sda_padoen_o(i2cm_data_oen),
    .spi_rstn(sspim_rst_n),
    .sspim_sck(sspim_sck),
    .sspim_si(sspim_si),
    .sspim_so(sspim_so),
    .sspim_ssn(sspim_ssn),
    .uart_rstn(uart_rst_n),
    .uart_rxd(uart_rxd),
    .uart_txd(uart_txd),
    .usb_clk(usb_clk),
    .usb_in_dn(usb_dn_i),
    .usb_in_dp(usb_dp_i),
    .usb_intr_o(usb_intr_o),
    .usb_out_dn(usb_dn_o),
    .usb_out_dp(usb_dp_o),
    .usb_out_tx_oen(usb_oen),
    .usb_rstn(usb_rst_n),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wbd_clk_int(wbd_clk_uart_rp),
    .wbd_clk_uart(wbd_clk_uart_skew),
    .cfg_cska_uart({\cfg_cska_uart_rp[3] ,
    \cfg_cska_uart_rp[2] ,
    \cfg_cska_uart_rp[1] ,
    \cfg_cska_uart_rp[0] }),
    .reg_addr({\wbd_uart_adr_o[7] ,
    \wbd_uart_adr_o[6] ,
    \wbd_uart_adr_o[5] ,
    \wbd_uart_adr_o[4] ,
    \wbd_uart_adr_o[3] ,
    \wbd_uart_adr_o[2] ,
    \wbd_uart_adr_o[1] ,
    \wbd_uart_adr_o[0] }),
    .reg_be({\wbd_uart_sel_o[3] ,
    \wbd_uart_sel_o[2] ,
    \wbd_uart_sel_o[1] ,
    \wbd_uart_sel_o[0] }),
    .reg_rdata({\wbd_uart_dat_i[31] ,
    \wbd_uart_dat_i[30] ,
    \wbd_uart_dat_i[29] ,
    \wbd_uart_dat_i[28] ,
    \wbd_uart_dat_i[27] ,
    \wbd_uart_dat_i[26] ,
    \wbd_uart_dat_i[25] ,
    \wbd_uart_dat_i[24] ,
    \wbd_uart_dat_i[23] ,
    \wbd_uart_dat_i[22] ,
    \wbd_uart_dat_i[21] ,
    \wbd_uart_dat_i[20] ,
    \wbd_uart_dat_i[19] ,
    \wbd_uart_dat_i[18] ,
    \wbd_uart_dat_i[17] ,
    \wbd_uart_dat_i[16] ,
    \wbd_uart_dat_i[15] ,
    \wbd_uart_dat_i[14] ,
    \wbd_uart_dat_i[13] ,
    \wbd_uart_dat_i[12] ,
    \wbd_uart_dat_i[11] ,
    \wbd_uart_dat_i[10] ,
    \wbd_uart_dat_i[9] ,
    \wbd_uart_dat_i[8] ,
    \wbd_uart_dat_i[7] ,
    \wbd_uart_dat_i[6] ,
    \wbd_uart_dat_i[5] ,
    \wbd_uart_dat_i[4] ,
    \wbd_uart_dat_i[3] ,
    \wbd_uart_dat_i[2] ,
    \wbd_uart_dat_i[1] ,
    \wbd_uart_dat_i[0] }),
    .reg_wdata({\wbd_uart_dat_o[31] ,
    \wbd_uart_dat_o[30] ,
    \wbd_uart_dat_o[29] ,
    \wbd_uart_dat_o[28] ,
    \wbd_uart_dat_o[27] ,
    \wbd_uart_dat_o[26] ,
    \wbd_uart_dat_o[25] ,
    \wbd_uart_dat_o[24] ,
    \wbd_uart_dat_o[23] ,
    \wbd_uart_dat_o[22] ,
    \wbd_uart_dat_o[21] ,
    \wbd_uart_dat_o[20] ,
    \wbd_uart_dat_o[19] ,
    \wbd_uart_dat_o[18] ,
    \wbd_uart_dat_o[17] ,
    \wbd_uart_dat_o[16] ,
    \wbd_uart_dat_o[15] ,
    \wbd_uart_dat_o[14] ,
    \wbd_uart_dat_o[13] ,
    \wbd_uart_dat_o[12] ,
    \wbd_uart_dat_o[11] ,
    \wbd_uart_dat_o[10] ,
    \wbd_uart_dat_o[9] ,
    \wbd_uart_dat_o[8] ,
    \wbd_uart_dat_o[7] ,
    \wbd_uart_dat_o[6] ,
    \wbd_uart_dat_o[5] ,
    \wbd_uart_dat_o[4] ,
    \wbd_uart_dat_o[3] ,
    \wbd_uart_dat_o[2] ,
    \wbd_uart_dat_o[1] ,
    \wbd_uart_dat_o[0] }));
 wb_host u_wb_host (.cpu_clk(cpu_clk),
    .rtc_clk(rtc_clk),
    .uartm_rxd(uartm_rxd),
    .uartm_txd(uartm_txd),
    .usb_clk(usb_clk),
    .user_clock1(wb_clk_i),
    .user_clock2(user_clock2),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wbd_clk_int(wbd_clk_int),
    .wbd_clk_wh(wbd_clk_wh),
    .wbd_int_rst_n(wbd_int_rst_n),
    .wbm_ack_o(wbs_ack_o),
    .wbm_clk_i(wb_clk_i),
    .wbm_cyc_i(wbs_cyc_i),
    .wbm_rst_i(wb_rst_i),
    .wbm_stb_i(wbs_stb_i),
    .wbm_we_i(wbs_we_i),
    .wbs_ack_i(wbd_int_ack_o),
    .wbs_clk_i(wbd_clk_wh),
    .wbs_clk_out(wbd_clk_int),
    .wbs_cyc_o(wbd_int_cyc_i),
    .wbs_err_i(wbd_int_err_o),
    .wbs_stb_o(wbd_int_stb_i),
    .wbs_we_o(wbd_int_we_i),
    .cfg_clk_ctrl1({\cfg_clk_ctrl1[31] ,
    \cfg_clk_ctrl1[30] ,
    \cfg_clk_ctrl1[29] ,
    \cfg_clk_ctrl1[28] ,
    \cfg_clk_ctrl1[27] ,
    \cfg_clk_ctrl1[26] ,
    \cfg_clk_ctrl1[25] ,
    \cfg_clk_ctrl1[24] ,
    \cfg_clk_ctrl1[23] ,
    \cfg_clk_ctrl1[22] ,
    \cfg_clk_ctrl1[21] ,
    \cfg_clk_ctrl1[20] ,
    \cfg_clk_ctrl1[19] ,
    \cfg_clk_ctrl1[18] ,
    \cfg_clk_ctrl1[17] ,
    \cfg_clk_ctrl1[16] ,
    \cfg_clk_ctrl1[15] ,
    \cfg_clk_ctrl1[14] ,
    \cfg_clk_ctrl1[13] ,
    \cfg_clk_ctrl1[12] ,
    \cfg_clk_ctrl1[11] ,
    \cfg_clk_ctrl1[10] ,
    \cfg_clk_ctrl1[9] ,
    \cfg_clk_ctrl1[8] ,
    \cfg_clk_ctrl1[7] ,
    \cfg_clk_ctrl1[6] ,
    \cfg_clk_ctrl1[5] ,
    \cfg_clk_ctrl1[4] ,
    \cfg_clk_ctrl1[3] ,
    \cfg_clk_ctrl1[2] ,
    \cfg_clk_ctrl1[1] ,
    \cfg_clk_ctrl1[0] }),
    .cfg_clk_ctrl2({\cfg_clk_ctrl2[31] ,
    \cfg_clk_ctrl2[30] ,
    \cfg_clk_ctrl2[29] ,
    \cfg_clk_ctrl2[28] ,
    \cfg_clk_ctrl2[27] ,
    \cfg_clk_ctrl2[26] ,
    \cfg_clk_ctrl2[25] ,
    \cfg_clk_ctrl2[24] ,
    \cfg_clk_ctrl2[23] ,
    \cfg_clk_ctrl2[22] ,
    \cfg_clk_ctrl2[21] ,
    \cfg_clk_ctrl2[20] ,
    \cfg_clk_ctrl2[19] ,
    \cfg_clk_ctrl2[18] ,
    \cfg_clk_ctrl2[17] ,
    \cfg_clk_ctrl2[16] ,
    \cfg_clk_ctrl2[15] ,
    \cfg_clk_ctrl2[14] ,
    \cfg_clk_ctrl2[13] ,
    \cfg_clk_ctrl2[12] ,
    \cfg_clk_ctrl2[11] ,
    \cfg_clk_ctrl2[10] ,
    \cfg_clk_ctrl2[9] ,
    \cfg_clk_ctrl2[8] ,
    \cfg_clk_ctrl2[7] ,
    \cfg_clk_ctrl2[6] ,
    \cfg_clk_ctrl2[5] ,
    \cfg_clk_ctrl2[4] ,
    \cfg_clk_ctrl2[3] ,
    \cfg_clk_ctrl2[2] ,
    \cfg_clk_ctrl2[1] ,
    \cfg_clk_ctrl2[0] }),
    .cfg_cska_wh({\cfg_clk_ctrl1[7] ,
    \cfg_clk_ctrl1[6] ,
    \cfg_clk_ctrl1[5] ,
    \cfg_clk_ctrl1[4] }),
    .la_data_in({la_data_in[17],
    la_data_in[16],
    la_data_in[15],
    la_data_in[14],
    la_data_in[13],
    la_data_in[12],
    la_data_in[11],
    la_data_in[10],
    la_data_in[9],
    la_data_in[8],
    la_data_in[7],
    la_data_in[6],
    la_data_in[5],
    la_data_in[4],
    la_data_in[3],
    la_data_in[2],
    la_data_in[1],
    la_data_in[0]}),
    .wbm_adr_i({wbs_adr_i[31],
    wbs_adr_i[30],
    wbs_adr_i[29],
    wbs_adr_i[28],
    wbs_adr_i[27],
    wbs_adr_i[26],
    wbs_adr_i[25],
    wbs_adr_i[24],
    wbs_adr_i[23],
    wbs_adr_i[22],
    wbs_adr_i[21],
    wbs_adr_i[20],
    wbs_adr_i[19],
    wbs_adr_i[18],
    wbs_adr_i[17],
    wbs_adr_i[16],
    wbs_adr_i[15],
    wbs_adr_i[14],
    wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .wbm_dat_i({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16],
    wbs_dat_i[15],
    wbs_dat_i[14],
    wbs_dat_i[13],
    wbs_dat_i[12],
    wbs_dat_i[11],
    wbs_dat_i[10],
    wbs_dat_i[9],
    wbs_dat_i[8],
    wbs_dat_i[7],
    wbs_dat_i[6],
    wbs_dat_i[5],
    wbs_dat_i[4],
    wbs_dat_i[3],
    wbs_dat_i[2],
    wbs_dat_i[1],
    wbs_dat_i[0]}),
    .wbm_dat_o({wbs_dat_o[31],
    wbs_dat_o[30],
    wbs_dat_o[29],
    wbs_dat_o[28],
    wbs_dat_o[27],
    wbs_dat_o[26],
    wbs_dat_o[25],
    wbs_dat_o[24],
    wbs_dat_o[23],
    wbs_dat_o[22],
    wbs_dat_o[21],
    wbs_dat_o[20],
    wbs_dat_o[19],
    wbs_dat_o[18],
    wbs_dat_o[17],
    wbs_dat_o[16],
    wbs_dat_o[15],
    wbs_dat_o[14],
    wbs_dat_o[13],
    wbs_dat_o[12],
    wbs_dat_o[11],
    wbs_dat_o[10],
    wbs_dat_o[9],
    wbs_dat_o[8],
    wbs_dat_o[7],
    wbs_dat_o[6],
    wbs_dat_o[5],
    wbs_dat_o[4],
    wbs_dat_o[3],
    wbs_dat_o[2],
    wbs_dat_o[1],
    wbs_dat_o[0]}),
    .wbm_sel_i({wbs_sel_i[3],
    wbs_sel_i[2],
    wbs_sel_i[1],
    wbs_sel_i[0]}),
    .wbs_adr_o({\wbd_int_adr_i[31] ,
    \wbd_int_adr_i[30] ,
    \wbd_int_adr_i[29] ,
    \wbd_int_adr_i[28] ,
    \wbd_int_adr_i[27] ,
    \wbd_int_adr_i[26] ,
    \wbd_int_adr_i[25] ,
    \wbd_int_adr_i[24] ,
    \wbd_int_adr_i[23] ,
    \wbd_int_adr_i[22] ,
    \wbd_int_adr_i[21] ,
    \wbd_int_adr_i[20] ,
    \wbd_int_adr_i[19] ,
    \wbd_int_adr_i[18] ,
    \wbd_int_adr_i[17] ,
    \wbd_int_adr_i[16] ,
    \wbd_int_adr_i[15] ,
    \wbd_int_adr_i[14] ,
    \wbd_int_adr_i[13] ,
    \wbd_int_adr_i[12] ,
    \wbd_int_adr_i[11] ,
    \wbd_int_adr_i[10] ,
    \wbd_int_adr_i[9] ,
    \wbd_int_adr_i[8] ,
    \wbd_int_adr_i[7] ,
    \wbd_int_adr_i[6] ,
    \wbd_int_adr_i[5] ,
    \wbd_int_adr_i[4] ,
    \wbd_int_adr_i[3] ,
    \wbd_int_adr_i[2] ,
    \wbd_int_adr_i[1] ,
    \wbd_int_adr_i[0] }),
    .wbs_dat_i({\wbd_int_dat_o[31] ,
    \wbd_int_dat_o[30] ,
    \wbd_int_dat_o[29] ,
    \wbd_int_dat_o[28] ,
    \wbd_int_dat_o[27] ,
    \wbd_int_dat_o[26] ,
    \wbd_int_dat_o[25] ,
    \wbd_int_dat_o[24] ,
    \wbd_int_dat_o[23] ,
    \wbd_int_dat_o[22] ,
    \wbd_int_dat_o[21] ,
    \wbd_int_dat_o[20] ,
    \wbd_int_dat_o[19] ,
    \wbd_int_dat_o[18] ,
    \wbd_int_dat_o[17] ,
    \wbd_int_dat_o[16] ,
    \wbd_int_dat_o[15] ,
    \wbd_int_dat_o[14] ,
    \wbd_int_dat_o[13] ,
    \wbd_int_dat_o[12] ,
    \wbd_int_dat_o[11] ,
    \wbd_int_dat_o[10] ,
    \wbd_int_dat_o[9] ,
    \wbd_int_dat_o[8] ,
    \wbd_int_dat_o[7] ,
    \wbd_int_dat_o[6] ,
    \wbd_int_dat_o[5] ,
    \wbd_int_dat_o[4] ,
    \wbd_int_dat_o[3] ,
    \wbd_int_dat_o[2] ,
    \wbd_int_dat_o[1] ,
    \wbd_int_dat_o[0] }),
    .wbs_dat_o({\wbd_int_dat_i[31] ,
    \wbd_int_dat_i[30] ,
    \wbd_int_dat_i[29] ,
    \wbd_int_dat_i[28] ,
    \wbd_int_dat_i[27] ,
    \wbd_int_dat_i[26] ,
    \wbd_int_dat_i[25] ,
    \wbd_int_dat_i[24] ,
    \wbd_int_dat_i[23] ,
    \wbd_int_dat_i[22] ,
    \wbd_int_dat_i[21] ,
    \wbd_int_dat_i[20] ,
    \wbd_int_dat_i[19] ,
    \wbd_int_dat_i[18] ,
    \wbd_int_dat_i[17] ,
    \wbd_int_dat_i[16] ,
    \wbd_int_dat_i[15] ,
    \wbd_int_dat_i[14] ,
    \wbd_int_dat_i[13] ,
    \wbd_int_dat_i[12] ,
    \wbd_int_dat_i[11] ,
    \wbd_int_dat_i[10] ,
    \wbd_int_dat_i[9] ,
    \wbd_int_dat_i[8] ,
    \wbd_int_dat_i[7] ,
    \wbd_int_dat_i[6] ,
    \wbd_int_dat_i[5] ,
    \wbd_int_dat_i[4] ,
    \wbd_int_dat_i[3] ,
    \wbd_int_dat_i[2] ,
    \wbd_int_dat_i[1] ,
    \wbd_int_dat_i[0] }),
    .wbs_sel_o({\wbd_int_sel_i[3] ,
    \wbd_int_sel_i[2] ,
    \wbd_int_sel_i[1] ,
    \wbd_int_sel_i[0] }));
endmodule
