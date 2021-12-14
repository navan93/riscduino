module user_project_wrapper (user_clock2,
    vccd1,
    vssd1,
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
 input vssd1;
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

 wire \bist_correct[0] ;
 wire \bist_correct[1] ;
 wire \bist_correct[2] ;
 wire \bist_correct[3] ;
 wire \bist_correct_rp[0] ;
 wire \bist_correct_rp[1] ;
 wire \bist_correct_rp[2] ;
 wire \bist_correct_rp[3] ;
 wire \bist_done[0] ;
 wire \bist_done[1] ;
 wire \bist_done[2] ;
 wire \bist_done[3] ;
 wire \bist_done_rp[0] ;
 wire \bist_done_rp[1] ;
 wire \bist_done_rp[2] ;
 wire \bist_done_rp[3] ;
 wire \bist_en[0] ;
 wire \bist_en[1] ;
 wire \bist_en[2] ;
 wire \bist_en[3] ;
 wire \bist_en_rp[0] ;
 wire \bist_en_rp[1] ;
 wire \bist_en_rp[2] ;
 wire \bist_en_rp[3] ;
 wire \bist_error[0] ;
 wire \bist_error[1] ;
 wire \bist_error[2] ;
 wire \bist_error[3] ;
 wire \bist_error_cnt0[0] ;
 wire \bist_error_cnt0[1] ;
 wire \bist_error_cnt0[2] ;
 wire \bist_error_cnt0[3] ;
 wire \bist_error_cnt0_rp[0] ;
 wire \bist_error_cnt0_rp[1] ;
 wire \bist_error_cnt0_rp[2] ;
 wire \bist_error_cnt0_rp[3] ;
 wire \bist_error_cnt1[0] ;
 wire \bist_error_cnt1[1] ;
 wire \bist_error_cnt1[2] ;
 wire \bist_error_cnt1[3] ;
 wire \bist_error_cnt1_rp[0] ;
 wire \bist_error_cnt1_rp[1] ;
 wire \bist_error_cnt1_rp[2] ;
 wire \bist_error_cnt1_rp[3] ;
 wire \bist_error_cnt2[0] ;
 wire \bist_error_cnt2[1] ;
 wire \bist_error_cnt2[2] ;
 wire \bist_error_cnt2[3] ;
 wire \bist_error_cnt2_rp[0] ;
 wire \bist_error_cnt2_rp[1] ;
 wire \bist_error_cnt2_rp[2] ;
 wire \bist_error_cnt2_rp[3] ;
 wire \bist_error_cnt3[0] ;
 wire \bist_error_cnt3[1] ;
 wire \bist_error_cnt3[2] ;
 wire \bist_error_cnt3[3] ;
 wire \bist_error_cnt3_rp[0] ;
 wire \bist_error_cnt3_rp[1] ;
 wire \bist_error_cnt3_rp[2] ;
 wire \bist_error_cnt3_rp[3] ;
 wire \bist_error_rp[0] ;
 wire \bist_error_rp[1] ;
 wire \bist_error_rp[2] ;
 wire \bist_error_rp[3] ;
 wire \bist_load[0] ;
 wire \bist_load[1] ;
 wire \bist_load[2] ;
 wire \bist_load[3] ;
 wire \bist_load_rp[0] ;
 wire \bist_load_rp[1] ;
 wire \bist_load_rp[2] ;
 wire \bist_load_rp[3] ;
 wire bist_rst_n;
 wire \bist_run[0] ;
 wire \bist_run[1] ;
 wire \bist_run[2] ;
 wire \bist_run[3] ;
 wire \bist_run_rp[0] ;
 wire \bist_run_rp[1] ;
 wire \bist_run_rp[2] ;
 wire \bist_run_rp[3] ;
 wire \bist_sdi[0] ;
 wire \bist_sdi[1] ;
 wire \bist_sdi[2] ;
 wire \bist_sdi[3] ;
 wire \bist_sdi_rp[0] ;
 wire \bist_sdi_rp[1] ;
 wire \bist_sdi_rp[2] ;
 wire \bist_sdi_rp[3] ;
 wire \bist_sdo[0] ;
 wire \bist_sdo[1] ;
 wire \bist_sdo[2] ;
 wire \bist_sdo[3] ;
 wire \bist_sdo_rp[0] ;
 wire \bist_sdo_rp[1] ;
 wire \bist_sdo_rp[2] ;
 wire \bist_sdo_rp[3] ;
 wire \bist_shift[0] ;
 wire \bist_shift[1] ;
 wire \bist_shift[2] ;
 wire \bist_shift[3] ;
 wire \bist_shift_rp[0] ;
 wire \bist_shift_rp[1] ;
 wire \bist_shift_rp[2] ;
 wire \bist_shift_rp[3] ;
 wire \boot_remap[0] ;
 wire \boot_remap[1] ;
 wire \boot_remap[2] ;
 wire \boot_remap[3] ;
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
 wire \cfg_clk_ctrl2[2] ;
 wire \cfg_clk_ctrl2[3] ;
 wire \cfg_clk_ctrl2[4] ;
 wire \cfg_clk_ctrl2[5] ;
 wire \cfg_clk_ctrl2[6] ;
 wire \cfg_clk_ctrl2[7] ;
 wire \cfg_clk_ctrl2[8] ;
 wire \cfg_clk_ctrl2[9] ;
 wire \cfg_cska_mbist1_rp[0] ;
 wire \cfg_cska_mbist1_rp[1] ;
 wire \cfg_cska_mbist1_rp[2] ;
 wire \cfg_cska_mbist1_rp[3] ;
 wire \cfg_cska_mbist2_rp[0] ;
 wire \cfg_cska_mbist2_rp[1] ;
 wire \cfg_cska_mbist2_rp[2] ;
 wire \cfg_cska_mbist2_rp[3] ;
 wire \cfg_cska_mbist3_rp[0] ;
 wire \cfg_cska_mbist3_rp[1] ;
 wire \cfg_cska_mbist3_rp[2] ;
 wire \cfg_cska_mbist3_rp[3] ;
 wire \cfg_cska_mbist4_rp[0] ;
 wire \cfg_cska_mbist4_rp[1] ;
 wire \cfg_cska_mbist4_rp[2] ;
 wire \cfg_cska_mbist4_rp[3] ;
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
 wire cpu_rst_n;
 wire \fuse_mhartid[0] ;
 wire \fuse_mhartid[10] ;
 wire \fuse_mhartid[11] ;
 wire \fuse_mhartid[12] ;
 wire \fuse_mhartid[13] ;
 wire \fuse_mhartid[14] ;
 wire \fuse_mhartid[15] ;
 wire \fuse_mhartid[16] ;
 wire \fuse_mhartid[17] ;
 wire \fuse_mhartid[18] ;
 wire \fuse_mhartid[19] ;
 wire \fuse_mhartid[1] ;
 wire \fuse_mhartid[20] ;
 wire \fuse_mhartid[21] ;
 wire \fuse_mhartid[22] ;
 wire \fuse_mhartid[23] ;
 wire \fuse_mhartid[24] ;
 wire \fuse_mhartid[25] ;
 wire \fuse_mhartid[26] ;
 wire \fuse_mhartid[27] ;
 wire \fuse_mhartid[28] ;
 wire \fuse_mhartid[29] ;
 wire \fuse_mhartid[2] ;
 wire \fuse_mhartid[30] ;
 wire \fuse_mhartid[31] ;
 wire \fuse_mhartid[3] ;
 wire \fuse_mhartid[4] ;
 wire \fuse_mhartid[5] ;
 wire \fuse_mhartid[6] ;
 wire \fuse_mhartid[7] ;
 wire \fuse_mhartid[8] ;
 wire \fuse_mhartid[9] ;
 wire \fuse_mhartid_rp[0] ;
 wire \fuse_mhartid_rp[10] ;
 wire \fuse_mhartid_rp[11] ;
 wire \fuse_mhartid_rp[12] ;
 wire \fuse_mhartid_rp[13] ;
 wire \fuse_mhartid_rp[14] ;
 wire \fuse_mhartid_rp[15] ;
 wire \fuse_mhartid_rp[16] ;
 wire \fuse_mhartid_rp[17] ;
 wire \fuse_mhartid_rp[18] ;
 wire \fuse_mhartid_rp[19] ;
 wire \fuse_mhartid_rp[1] ;
 wire \fuse_mhartid_rp[20] ;
 wire \fuse_mhartid_rp[21] ;
 wire \fuse_mhartid_rp[22] ;
 wire \fuse_mhartid_rp[23] ;
 wire \fuse_mhartid_rp[24] ;
 wire \fuse_mhartid_rp[25] ;
 wire \fuse_mhartid_rp[26] ;
 wire \fuse_mhartid_rp[27] ;
 wire \fuse_mhartid_rp[28] ;
 wire \fuse_mhartid_rp[29] ;
 wire \fuse_mhartid_rp[2] ;
 wire \fuse_mhartid_rp[30] ;
 wire \fuse_mhartid_rp[31] ;
 wire \fuse_mhartid_rp[3] ;
 wire \fuse_mhartid_rp[4] ;
 wire \fuse_mhartid_rp[5] ;
 wire \fuse_mhartid_rp[6] ;
 wire \fuse_mhartid_rp[7] ;
 wire \fuse_mhartid_rp[8] ;
 wire \fuse_mhartid_rp[9] ;
 wire i2c_rst_n;
 wire i2cm_clk_i;
 wire i2cm_clk_o;
 wire i2cm_clk_oen;
 wire i2cm_data_i;
 wire i2cm_data_o;
 wire i2cm_data_oen;
 wire i2cm_intr_o;
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
 wire \mem1_addr_a[10] ;
 wire \mem1_addr_a[2] ;
 wire \mem1_addr_a[3] ;
 wire \mem1_addr_a[4] ;
 wire \mem1_addr_a[5] ;
 wire \mem1_addr_a[6] ;
 wire \mem1_addr_a[7] ;
 wire \mem1_addr_a[8] ;
 wire \mem1_addr_a[9] ;
 wire \mem1_addr_b[10] ;
 wire \mem1_addr_b[2] ;
 wire \mem1_addr_b[3] ;
 wire \mem1_addr_b[4] ;
 wire \mem1_addr_b[5] ;
 wire \mem1_addr_b[6] ;
 wire \mem1_addr_b[7] ;
 wire \mem1_addr_b[8] ;
 wire \mem1_addr_b[9] ;
 wire mem1_cen_a;
 wire mem1_cen_b;
 wire mem1_clk_a;
 wire mem1_clk_b;
 wire \mem1_din_b[0] ;
 wire \mem1_din_b[10] ;
 wire \mem1_din_b[11] ;
 wire \mem1_din_b[12] ;
 wire \mem1_din_b[13] ;
 wire \mem1_din_b[14] ;
 wire \mem1_din_b[15] ;
 wire \mem1_din_b[16] ;
 wire \mem1_din_b[17] ;
 wire \mem1_din_b[18] ;
 wire \mem1_din_b[19] ;
 wire \mem1_din_b[1] ;
 wire \mem1_din_b[20] ;
 wire \mem1_din_b[21] ;
 wire \mem1_din_b[22] ;
 wire \mem1_din_b[23] ;
 wire \mem1_din_b[24] ;
 wire \mem1_din_b[25] ;
 wire \mem1_din_b[26] ;
 wire \mem1_din_b[27] ;
 wire \mem1_din_b[28] ;
 wire \mem1_din_b[29] ;
 wire \mem1_din_b[2] ;
 wire \mem1_din_b[30] ;
 wire \mem1_din_b[31] ;
 wire \mem1_din_b[3] ;
 wire \mem1_din_b[4] ;
 wire \mem1_din_b[5] ;
 wire \mem1_din_b[6] ;
 wire \mem1_din_b[7] ;
 wire \mem1_din_b[8] ;
 wire \mem1_din_b[9] ;
 wire \mem1_dout_a[0] ;
 wire \mem1_dout_a[10] ;
 wire \mem1_dout_a[11] ;
 wire \mem1_dout_a[12] ;
 wire \mem1_dout_a[13] ;
 wire \mem1_dout_a[14] ;
 wire \mem1_dout_a[15] ;
 wire \mem1_dout_a[16] ;
 wire \mem1_dout_a[17] ;
 wire \mem1_dout_a[18] ;
 wire \mem1_dout_a[19] ;
 wire \mem1_dout_a[1] ;
 wire \mem1_dout_a[20] ;
 wire \mem1_dout_a[21] ;
 wire \mem1_dout_a[22] ;
 wire \mem1_dout_a[23] ;
 wire \mem1_dout_a[24] ;
 wire \mem1_dout_a[25] ;
 wire \mem1_dout_a[26] ;
 wire \mem1_dout_a[27] ;
 wire \mem1_dout_a[28] ;
 wire \mem1_dout_a[29] ;
 wire \mem1_dout_a[2] ;
 wire \mem1_dout_a[30] ;
 wire \mem1_dout_a[31] ;
 wire \mem1_dout_a[3] ;
 wire \mem1_dout_a[4] ;
 wire \mem1_dout_a[5] ;
 wire \mem1_dout_a[6] ;
 wire \mem1_dout_a[7] ;
 wire \mem1_dout_a[8] ;
 wire \mem1_dout_a[9] ;
 wire \mem1_mask_b[0] ;
 wire \mem1_mask_b[1] ;
 wire \mem1_mask_b[2] ;
 wire \mem1_mask_b[3] ;
 wire mem1_web_b;
 wire \mem2_addr_a[10] ;
 wire \mem2_addr_a[2] ;
 wire \mem2_addr_a[3] ;
 wire \mem2_addr_a[4] ;
 wire \mem2_addr_a[5] ;
 wire \mem2_addr_a[6] ;
 wire \mem2_addr_a[7] ;
 wire \mem2_addr_a[8] ;
 wire \mem2_addr_a[9] ;
 wire \mem2_addr_b[10] ;
 wire \mem2_addr_b[2] ;
 wire \mem2_addr_b[3] ;
 wire \mem2_addr_b[4] ;
 wire \mem2_addr_b[5] ;
 wire \mem2_addr_b[6] ;
 wire \mem2_addr_b[7] ;
 wire \mem2_addr_b[8] ;
 wire \mem2_addr_b[9] ;
 wire mem2_cen_a;
 wire mem2_cen_b;
 wire mem2_clk_a;
 wire mem2_clk_b;
 wire \mem2_din_b[0] ;
 wire \mem2_din_b[10] ;
 wire \mem2_din_b[11] ;
 wire \mem2_din_b[12] ;
 wire \mem2_din_b[13] ;
 wire \mem2_din_b[14] ;
 wire \mem2_din_b[15] ;
 wire \mem2_din_b[16] ;
 wire \mem2_din_b[17] ;
 wire \mem2_din_b[18] ;
 wire \mem2_din_b[19] ;
 wire \mem2_din_b[1] ;
 wire \mem2_din_b[20] ;
 wire \mem2_din_b[21] ;
 wire \mem2_din_b[22] ;
 wire \mem2_din_b[23] ;
 wire \mem2_din_b[24] ;
 wire \mem2_din_b[25] ;
 wire \mem2_din_b[26] ;
 wire \mem2_din_b[27] ;
 wire \mem2_din_b[28] ;
 wire \mem2_din_b[29] ;
 wire \mem2_din_b[2] ;
 wire \mem2_din_b[30] ;
 wire \mem2_din_b[31] ;
 wire \mem2_din_b[3] ;
 wire \mem2_din_b[4] ;
 wire \mem2_din_b[5] ;
 wire \mem2_din_b[6] ;
 wire \mem2_din_b[7] ;
 wire \mem2_din_b[8] ;
 wire \mem2_din_b[9] ;
 wire \mem2_dout_a[0] ;
 wire \mem2_dout_a[10] ;
 wire \mem2_dout_a[11] ;
 wire \mem2_dout_a[12] ;
 wire \mem2_dout_a[13] ;
 wire \mem2_dout_a[14] ;
 wire \mem2_dout_a[15] ;
 wire \mem2_dout_a[16] ;
 wire \mem2_dout_a[17] ;
 wire \mem2_dout_a[18] ;
 wire \mem2_dout_a[19] ;
 wire \mem2_dout_a[1] ;
 wire \mem2_dout_a[20] ;
 wire \mem2_dout_a[21] ;
 wire \mem2_dout_a[22] ;
 wire \mem2_dout_a[23] ;
 wire \mem2_dout_a[24] ;
 wire \mem2_dout_a[25] ;
 wire \mem2_dout_a[26] ;
 wire \mem2_dout_a[27] ;
 wire \mem2_dout_a[28] ;
 wire \mem2_dout_a[29] ;
 wire \mem2_dout_a[2] ;
 wire \mem2_dout_a[30] ;
 wire \mem2_dout_a[31] ;
 wire \mem2_dout_a[3] ;
 wire \mem2_dout_a[4] ;
 wire \mem2_dout_a[5] ;
 wire \mem2_dout_a[6] ;
 wire \mem2_dout_a[7] ;
 wire \mem2_dout_a[8] ;
 wire \mem2_dout_a[9] ;
 wire \mem2_mask_b[0] ;
 wire \mem2_mask_b[1] ;
 wire \mem2_mask_b[2] ;
 wire \mem2_mask_b[3] ;
 wire mem2_web_b;
 wire \mem3_addr_a[10] ;
 wire \mem3_addr_a[2] ;
 wire \mem3_addr_a[3] ;
 wire \mem3_addr_a[4] ;
 wire \mem3_addr_a[5] ;
 wire \mem3_addr_a[6] ;
 wire \mem3_addr_a[7] ;
 wire \mem3_addr_a[8] ;
 wire \mem3_addr_a[9] ;
 wire \mem3_addr_b[10] ;
 wire \mem3_addr_b[2] ;
 wire \mem3_addr_b[3] ;
 wire \mem3_addr_b[4] ;
 wire \mem3_addr_b[5] ;
 wire \mem3_addr_b[6] ;
 wire \mem3_addr_b[7] ;
 wire \mem3_addr_b[8] ;
 wire \mem3_addr_b[9] ;
 wire mem3_cen_a;
 wire mem3_cen_b;
 wire mem3_clk_a;
 wire mem3_clk_b;
 wire \mem3_din_b[0] ;
 wire \mem3_din_b[10] ;
 wire \mem3_din_b[11] ;
 wire \mem3_din_b[12] ;
 wire \mem3_din_b[13] ;
 wire \mem3_din_b[14] ;
 wire \mem3_din_b[15] ;
 wire \mem3_din_b[16] ;
 wire \mem3_din_b[17] ;
 wire \mem3_din_b[18] ;
 wire \mem3_din_b[19] ;
 wire \mem3_din_b[1] ;
 wire \mem3_din_b[20] ;
 wire \mem3_din_b[21] ;
 wire \mem3_din_b[22] ;
 wire \mem3_din_b[23] ;
 wire \mem3_din_b[24] ;
 wire \mem3_din_b[25] ;
 wire \mem3_din_b[26] ;
 wire \mem3_din_b[27] ;
 wire \mem3_din_b[28] ;
 wire \mem3_din_b[29] ;
 wire \mem3_din_b[2] ;
 wire \mem3_din_b[30] ;
 wire \mem3_din_b[31] ;
 wire \mem3_din_b[3] ;
 wire \mem3_din_b[4] ;
 wire \mem3_din_b[5] ;
 wire \mem3_din_b[6] ;
 wire \mem3_din_b[7] ;
 wire \mem3_din_b[8] ;
 wire \mem3_din_b[9] ;
 wire \mem3_dout_a[0] ;
 wire \mem3_dout_a[10] ;
 wire \mem3_dout_a[11] ;
 wire \mem3_dout_a[12] ;
 wire \mem3_dout_a[13] ;
 wire \mem3_dout_a[14] ;
 wire \mem3_dout_a[15] ;
 wire \mem3_dout_a[16] ;
 wire \mem3_dout_a[17] ;
 wire \mem3_dout_a[18] ;
 wire \mem3_dout_a[19] ;
 wire \mem3_dout_a[1] ;
 wire \mem3_dout_a[20] ;
 wire \mem3_dout_a[21] ;
 wire \mem3_dout_a[22] ;
 wire \mem3_dout_a[23] ;
 wire \mem3_dout_a[24] ;
 wire \mem3_dout_a[25] ;
 wire \mem3_dout_a[26] ;
 wire \mem3_dout_a[27] ;
 wire \mem3_dout_a[28] ;
 wire \mem3_dout_a[29] ;
 wire \mem3_dout_a[2] ;
 wire \mem3_dout_a[30] ;
 wire \mem3_dout_a[31] ;
 wire \mem3_dout_a[3] ;
 wire \mem3_dout_a[4] ;
 wire \mem3_dout_a[5] ;
 wire \mem3_dout_a[6] ;
 wire \mem3_dout_a[7] ;
 wire \mem3_dout_a[8] ;
 wire \mem3_dout_a[9] ;
 wire \mem3_mask_b[0] ;
 wire \mem3_mask_b[1] ;
 wire \mem3_mask_b[2] ;
 wire \mem3_mask_b[3] ;
 wire mem3_web_b;
 wire \mem4_addr_a[10] ;
 wire \mem4_addr_a[2] ;
 wire \mem4_addr_a[3] ;
 wire \mem4_addr_a[4] ;
 wire \mem4_addr_a[5] ;
 wire \mem4_addr_a[6] ;
 wire \mem4_addr_a[7] ;
 wire \mem4_addr_a[8] ;
 wire \mem4_addr_a[9] ;
 wire \mem4_addr_b[10] ;
 wire \mem4_addr_b[2] ;
 wire \mem4_addr_b[3] ;
 wire \mem4_addr_b[4] ;
 wire \mem4_addr_b[5] ;
 wire \mem4_addr_b[6] ;
 wire \mem4_addr_b[7] ;
 wire \mem4_addr_b[8] ;
 wire \mem4_addr_b[9] ;
 wire mem4_cen_a;
 wire mem4_cen_b;
 wire mem4_clk_a;
 wire mem4_clk_b;
 wire \mem4_din_b[0] ;
 wire \mem4_din_b[10] ;
 wire \mem4_din_b[11] ;
 wire \mem4_din_b[12] ;
 wire \mem4_din_b[13] ;
 wire \mem4_din_b[14] ;
 wire \mem4_din_b[15] ;
 wire \mem4_din_b[16] ;
 wire \mem4_din_b[17] ;
 wire \mem4_din_b[18] ;
 wire \mem4_din_b[19] ;
 wire \mem4_din_b[1] ;
 wire \mem4_din_b[20] ;
 wire \mem4_din_b[21] ;
 wire \mem4_din_b[22] ;
 wire \mem4_din_b[23] ;
 wire \mem4_din_b[24] ;
 wire \mem4_din_b[25] ;
 wire \mem4_din_b[26] ;
 wire \mem4_din_b[27] ;
 wire \mem4_din_b[28] ;
 wire \mem4_din_b[29] ;
 wire \mem4_din_b[2] ;
 wire \mem4_din_b[30] ;
 wire \mem4_din_b[31] ;
 wire \mem4_din_b[3] ;
 wire \mem4_din_b[4] ;
 wire \mem4_din_b[5] ;
 wire \mem4_din_b[6] ;
 wire \mem4_din_b[7] ;
 wire \mem4_din_b[8] ;
 wire \mem4_din_b[9] ;
 wire \mem4_dout_a[0] ;
 wire \mem4_dout_a[10] ;
 wire \mem4_dout_a[11] ;
 wire \mem4_dout_a[12] ;
 wire \mem4_dout_a[13] ;
 wire \mem4_dout_a[14] ;
 wire \mem4_dout_a[15] ;
 wire \mem4_dout_a[16] ;
 wire \mem4_dout_a[17] ;
 wire \mem4_dout_a[18] ;
 wire \mem4_dout_a[19] ;
 wire \mem4_dout_a[1] ;
 wire \mem4_dout_a[20] ;
 wire \mem4_dout_a[21] ;
 wire \mem4_dout_a[22] ;
 wire \mem4_dout_a[23] ;
 wire \mem4_dout_a[24] ;
 wire \mem4_dout_a[25] ;
 wire \mem4_dout_a[26] ;
 wire \mem4_dout_a[27] ;
 wire \mem4_dout_a[28] ;
 wire \mem4_dout_a[29] ;
 wire \mem4_dout_a[2] ;
 wire \mem4_dout_a[30] ;
 wire \mem4_dout_a[31] ;
 wire \mem4_dout_a[3] ;
 wire \mem4_dout_a[4] ;
 wire \mem4_dout_a[5] ;
 wire \mem4_dout_a[6] ;
 wire \mem4_dout_a[7] ;
 wire \mem4_dout_a[8] ;
 wire \mem4_dout_a[9] ;
 wire \mem4_mask_b[0] ;
 wire \mem4_mask_b[1] ;
 wire \mem4_mask_b[2] ;
 wire \mem4_mask_b[3] ;
 wire mem4_web_b;
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
 wire sflash_ss;
 wire soft_irq;
 wire soft_irq_rp;
 wire \sram_addr0[0] ;
 wire \sram_addr0[1] ;
 wire \sram_addr0[2] ;
 wire \sram_addr0[3] ;
 wire \sram_addr0[4] ;
 wire \sram_addr0[5] ;
 wire \sram_addr0[6] ;
 wire \sram_addr0[7] ;
 wire \sram_addr0[8] ;
 wire \sram_addr1[0] ;
 wire \sram_addr1[1] ;
 wire \sram_addr1[2] ;
 wire \sram_addr1[3] ;
 wire \sram_addr1[4] ;
 wire \sram_addr1[5] ;
 wire \sram_addr1[6] ;
 wire \sram_addr1[7] ;
 wire \sram_addr1[8] ;
 wire sram_csb0;
 wire sram_csb1;
 wire \sram_din0[0] ;
 wire \sram_din0[10] ;
 wire \sram_din0[11] ;
 wire \sram_din0[12] ;
 wire \sram_din0[13] ;
 wire \sram_din0[14] ;
 wire \sram_din0[15] ;
 wire \sram_din0[16] ;
 wire \sram_din0[17] ;
 wire \sram_din0[18] ;
 wire \sram_din0[19] ;
 wire \sram_din0[1] ;
 wire \sram_din0[20] ;
 wire \sram_din0[21] ;
 wire \sram_din0[22] ;
 wire \sram_din0[23] ;
 wire \sram_din0[24] ;
 wire \sram_din0[25] ;
 wire \sram_din0[26] ;
 wire \sram_din0[27] ;
 wire \sram_din0[28] ;
 wire \sram_din0[29] ;
 wire \sram_din0[2] ;
 wire \sram_din0[30] ;
 wire \sram_din0[31] ;
 wire \sram_din0[3] ;
 wire \sram_din0[4] ;
 wire \sram_din0[5] ;
 wire \sram_din0[6] ;
 wire \sram_din0[7] ;
 wire \sram_din0[8] ;
 wire \sram_din0[9] ;
 wire \sram_dout0[0] ;
 wire \sram_dout0[10] ;
 wire \sram_dout0[11] ;
 wire \sram_dout0[12] ;
 wire \sram_dout0[13] ;
 wire \sram_dout0[14] ;
 wire \sram_dout0[15] ;
 wire \sram_dout0[16] ;
 wire \sram_dout0[17] ;
 wire \sram_dout0[18] ;
 wire \sram_dout0[19] ;
 wire \sram_dout0[1] ;
 wire \sram_dout0[20] ;
 wire \sram_dout0[21] ;
 wire \sram_dout0[22] ;
 wire \sram_dout0[23] ;
 wire \sram_dout0[24] ;
 wire \sram_dout0[25] ;
 wire \sram_dout0[26] ;
 wire \sram_dout0[27] ;
 wire \sram_dout0[28] ;
 wire \sram_dout0[29] ;
 wire \sram_dout0[2] ;
 wire \sram_dout0[30] ;
 wire \sram_dout0[31] ;
 wire \sram_dout0[3] ;
 wire \sram_dout0[4] ;
 wire \sram_dout0[5] ;
 wire \sram_dout0[6] ;
 wire \sram_dout0[7] ;
 wire \sram_dout0[8] ;
 wire \sram_dout0[9] ;
 wire \sram_dout1[0] ;
 wire \sram_dout1[10] ;
 wire \sram_dout1[11] ;
 wire \sram_dout1[12] ;
 wire \sram_dout1[13] ;
 wire \sram_dout1[14] ;
 wire \sram_dout1[15] ;
 wire \sram_dout1[16] ;
 wire \sram_dout1[17] ;
 wire \sram_dout1[18] ;
 wire \sram_dout1[19] ;
 wire \sram_dout1[1] ;
 wire \sram_dout1[20] ;
 wire \sram_dout1[21] ;
 wire \sram_dout1[22] ;
 wire \sram_dout1[23] ;
 wire \sram_dout1[24] ;
 wire \sram_dout1[25] ;
 wire \sram_dout1[26] ;
 wire \sram_dout1[27] ;
 wire \sram_dout1[28] ;
 wire \sram_dout1[29] ;
 wire \sram_dout1[2] ;
 wire \sram_dout1[30] ;
 wire \sram_dout1[31] ;
 wire \sram_dout1[3] ;
 wire \sram_dout1[4] ;
 wire \sram_dout1[5] ;
 wire \sram_dout1[6] ;
 wire \sram_dout1[7] ;
 wire \sram_dout1[8] ;
 wire \sram_dout1[9] ;
 wire sram_web0;
 wire \sram_wmask0[0] ;
 wire \sram_wmask0[1] ;
 wire \sram_wmask0[2] ;
 wire \sram_wmask0[3] ;
 wire sspim_rst_n;
 wire sspim_sck;
 wire sspim_si;
 wire sspim_so;
 wire sspim_ssn;
 wire uart_rst_n;
 wire uart_rxd;
 wire uart_txd;
 wire usb_clk;
 wire usb_dn_i;
 wire usb_dn_o;
 wire usb_dp_i;
 wire usb_dp_o;
 wire usb_intr_o;
 wire usb_oen;
 wire usb_rst_n;
 wire wbd_clk_int;
 wire wbd_clk_mbist1_rp;
 wire wbd_clk_mbist1_skew;
 wire wbd_clk_mbist2_rp;
 wire wbd_clk_mbist2_skew;
 wire wbd_clk_mbist3_rp;
 wire wbd_clk_mbist3_skew;
 wire wbd_clk_mbist4_rp;
 wire wbd_clk_mbist4_skew;
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
 wire wbd_mbist1_ack_i;
 wire \wbd_mbist1_adr_o[0] ;
 wire \wbd_mbist1_adr_o[10] ;
 wire \wbd_mbist1_adr_o[1] ;
 wire \wbd_mbist1_adr_o[2] ;
 wire \wbd_mbist1_adr_o[3] ;
 wire \wbd_mbist1_adr_o[4] ;
 wire \wbd_mbist1_adr_o[5] ;
 wire \wbd_mbist1_adr_o[6] ;
 wire \wbd_mbist1_adr_o[7] ;
 wire \wbd_mbist1_adr_o[8] ;
 wire \wbd_mbist1_adr_o[9] ;
 wire wbd_mbist1_cyc_o;
 wire \wbd_mbist1_dat_i[0] ;
 wire \wbd_mbist1_dat_i[10] ;
 wire \wbd_mbist1_dat_i[11] ;
 wire \wbd_mbist1_dat_i[12] ;
 wire \wbd_mbist1_dat_i[13] ;
 wire \wbd_mbist1_dat_i[14] ;
 wire \wbd_mbist1_dat_i[15] ;
 wire \wbd_mbist1_dat_i[16] ;
 wire \wbd_mbist1_dat_i[17] ;
 wire \wbd_mbist1_dat_i[18] ;
 wire \wbd_mbist1_dat_i[19] ;
 wire \wbd_mbist1_dat_i[1] ;
 wire \wbd_mbist1_dat_i[20] ;
 wire \wbd_mbist1_dat_i[21] ;
 wire \wbd_mbist1_dat_i[22] ;
 wire \wbd_mbist1_dat_i[23] ;
 wire \wbd_mbist1_dat_i[24] ;
 wire \wbd_mbist1_dat_i[25] ;
 wire \wbd_mbist1_dat_i[26] ;
 wire \wbd_mbist1_dat_i[27] ;
 wire \wbd_mbist1_dat_i[28] ;
 wire \wbd_mbist1_dat_i[29] ;
 wire \wbd_mbist1_dat_i[2] ;
 wire \wbd_mbist1_dat_i[30] ;
 wire \wbd_mbist1_dat_i[31] ;
 wire \wbd_mbist1_dat_i[3] ;
 wire \wbd_mbist1_dat_i[4] ;
 wire \wbd_mbist1_dat_i[5] ;
 wire \wbd_mbist1_dat_i[6] ;
 wire \wbd_mbist1_dat_i[7] ;
 wire \wbd_mbist1_dat_i[8] ;
 wire \wbd_mbist1_dat_i[9] ;
 wire \wbd_mbist1_dat_o[0] ;
 wire \wbd_mbist1_dat_o[10] ;
 wire \wbd_mbist1_dat_o[11] ;
 wire \wbd_mbist1_dat_o[12] ;
 wire \wbd_mbist1_dat_o[13] ;
 wire \wbd_mbist1_dat_o[14] ;
 wire \wbd_mbist1_dat_o[15] ;
 wire \wbd_mbist1_dat_o[16] ;
 wire \wbd_mbist1_dat_o[17] ;
 wire \wbd_mbist1_dat_o[18] ;
 wire \wbd_mbist1_dat_o[19] ;
 wire \wbd_mbist1_dat_o[1] ;
 wire \wbd_mbist1_dat_o[20] ;
 wire \wbd_mbist1_dat_o[21] ;
 wire \wbd_mbist1_dat_o[22] ;
 wire \wbd_mbist1_dat_o[23] ;
 wire \wbd_mbist1_dat_o[24] ;
 wire \wbd_mbist1_dat_o[25] ;
 wire \wbd_mbist1_dat_o[26] ;
 wire \wbd_mbist1_dat_o[27] ;
 wire \wbd_mbist1_dat_o[28] ;
 wire \wbd_mbist1_dat_o[29] ;
 wire \wbd_mbist1_dat_o[2] ;
 wire \wbd_mbist1_dat_o[30] ;
 wire \wbd_mbist1_dat_o[31] ;
 wire \wbd_mbist1_dat_o[3] ;
 wire \wbd_mbist1_dat_o[4] ;
 wire \wbd_mbist1_dat_o[5] ;
 wire \wbd_mbist1_dat_o[6] ;
 wire \wbd_mbist1_dat_o[7] ;
 wire \wbd_mbist1_dat_o[8] ;
 wire \wbd_mbist1_dat_o[9] ;
 wire \wbd_mbist1_sel_o[0] ;
 wire \wbd_mbist1_sel_o[1] ;
 wire \wbd_mbist1_sel_o[2] ;
 wire \wbd_mbist1_sel_o[3] ;
 wire wbd_mbist1_stb_o;
 wire wbd_mbist1_we_o;
 wire wbd_mbist2_ack_i;
 wire \wbd_mbist2_adr_o[0] ;
 wire \wbd_mbist2_adr_o[10] ;
 wire \wbd_mbist2_adr_o[1] ;
 wire \wbd_mbist2_adr_o[2] ;
 wire \wbd_mbist2_adr_o[3] ;
 wire \wbd_mbist2_adr_o[4] ;
 wire \wbd_mbist2_adr_o[5] ;
 wire \wbd_mbist2_adr_o[6] ;
 wire \wbd_mbist2_adr_o[7] ;
 wire \wbd_mbist2_adr_o[8] ;
 wire \wbd_mbist2_adr_o[9] ;
 wire wbd_mbist2_cyc_o;
 wire \wbd_mbist2_dat_i[0] ;
 wire \wbd_mbist2_dat_i[10] ;
 wire \wbd_mbist2_dat_i[11] ;
 wire \wbd_mbist2_dat_i[12] ;
 wire \wbd_mbist2_dat_i[13] ;
 wire \wbd_mbist2_dat_i[14] ;
 wire \wbd_mbist2_dat_i[15] ;
 wire \wbd_mbist2_dat_i[16] ;
 wire \wbd_mbist2_dat_i[17] ;
 wire \wbd_mbist2_dat_i[18] ;
 wire \wbd_mbist2_dat_i[19] ;
 wire \wbd_mbist2_dat_i[1] ;
 wire \wbd_mbist2_dat_i[20] ;
 wire \wbd_mbist2_dat_i[21] ;
 wire \wbd_mbist2_dat_i[22] ;
 wire \wbd_mbist2_dat_i[23] ;
 wire \wbd_mbist2_dat_i[24] ;
 wire \wbd_mbist2_dat_i[25] ;
 wire \wbd_mbist2_dat_i[26] ;
 wire \wbd_mbist2_dat_i[27] ;
 wire \wbd_mbist2_dat_i[28] ;
 wire \wbd_mbist2_dat_i[29] ;
 wire \wbd_mbist2_dat_i[2] ;
 wire \wbd_mbist2_dat_i[30] ;
 wire \wbd_mbist2_dat_i[31] ;
 wire \wbd_mbist2_dat_i[3] ;
 wire \wbd_mbist2_dat_i[4] ;
 wire \wbd_mbist2_dat_i[5] ;
 wire \wbd_mbist2_dat_i[6] ;
 wire \wbd_mbist2_dat_i[7] ;
 wire \wbd_mbist2_dat_i[8] ;
 wire \wbd_mbist2_dat_i[9] ;
 wire \wbd_mbist2_dat_o[0] ;
 wire \wbd_mbist2_dat_o[10] ;
 wire \wbd_mbist2_dat_o[11] ;
 wire \wbd_mbist2_dat_o[12] ;
 wire \wbd_mbist2_dat_o[13] ;
 wire \wbd_mbist2_dat_o[14] ;
 wire \wbd_mbist2_dat_o[15] ;
 wire \wbd_mbist2_dat_o[16] ;
 wire \wbd_mbist2_dat_o[17] ;
 wire \wbd_mbist2_dat_o[18] ;
 wire \wbd_mbist2_dat_o[19] ;
 wire \wbd_mbist2_dat_o[1] ;
 wire \wbd_mbist2_dat_o[20] ;
 wire \wbd_mbist2_dat_o[21] ;
 wire \wbd_mbist2_dat_o[22] ;
 wire \wbd_mbist2_dat_o[23] ;
 wire \wbd_mbist2_dat_o[24] ;
 wire \wbd_mbist2_dat_o[25] ;
 wire \wbd_mbist2_dat_o[26] ;
 wire \wbd_mbist2_dat_o[27] ;
 wire \wbd_mbist2_dat_o[28] ;
 wire \wbd_mbist2_dat_o[29] ;
 wire \wbd_mbist2_dat_o[2] ;
 wire \wbd_mbist2_dat_o[30] ;
 wire \wbd_mbist2_dat_o[31] ;
 wire \wbd_mbist2_dat_o[3] ;
 wire \wbd_mbist2_dat_o[4] ;
 wire \wbd_mbist2_dat_o[5] ;
 wire \wbd_mbist2_dat_o[6] ;
 wire \wbd_mbist2_dat_o[7] ;
 wire \wbd_mbist2_dat_o[8] ;
 wire \wbd_mbist2_dat_o[9] ;
 wire \wbd_mbist2_sel_o[0] ;
 wire \wbd_mbist2_sel_o[1] ;
 wire \wbd_mbist2_sel_o[2] ;
 wire \wbd_mbist2_sel_o[3] ;
 wire wbd_mbist2_stb_o;
 wire wbd_mbist2_we_o;
 wire wbd_mbist3_ack_i;
 wire \wbd_mbist3_adr_o[0] ;
 wire \wbd_mbist3_adr_o[10] ;
 wire \wbd_mbist3_adr_o[1] ;
 wire \wbd_mbist3_adr_o[2] ;
 wire \wbd_mbist3_adr_o[3] ;
 wire \wbd_mbist3_adr_o[4] ;
 wire \wbd_mbist3_adr_o[5] ;
 wire \wbd_mbist3_adr_o[6] ;
 wire \wbd_mbist3_adr_o[7] ;
 wire \wbd_mbist3_adr_o[8] ;
 wire \wbd_mbist3_adr_o[9] ;
 wire wbd_mbist3_cyc_o;
 wire \wbd_mbist3_dat_i[0] ;
 wire \wbd_mbist3_dat_i[10] ;
 wire \wbd_mbist3_dat_i[11] ;
 wire \wbd_mbist3_dat_i[12] ;
 wire \wbd_mbist3_dat_i[13] ;
 wire \wbd_mbist3_dat_i[14] ;
 wire \wbd_mbist3_dat_i[15] ;
 wire \wbd_mbist3_dat_i[16] ;
 wire \wbd_mbist3_dat_i[17] ;
 wire \wbd_mbist3_dat_i[18] ;
 wire \wbd_mbist3_dat_i[19] ;
 wire \wbd_mbist3_dat_i[1] ;
 wire \wbd_mbist3_dat_i[20] ;
 wire \wbd_mbist3_dat_i[21] ;
 wire \wbd_mbist3_dat_i[22] ;
 wire \wbd_mbist3_dat_i[23] ;
 wire \wbd_mbist3_dat_i[24] ;
 wire \wbd_mbist3_dat_i[25] ;
 wire \wbd_mbist3_dat_i[26] ;
 wire \wbd_mbist3_dat_i[27] ;
 wire \wbd_mbist3_dat_i[28] ;
 wire \wbd_mbist3_dat_i[29] ;
 wire \wbd_mbist3_dat_i[2] ;
 wire \wbd_mbist3_dat_i[30] ;
 wire \wbd_mbist3_dat_i[31] ;
 wire \wbd_mbist3_dat_i[3] ;
 wire \wbd_mbist3_dat_i[4] ;
 wire \wbd_mbist3_dat_i[5] ;
 wire \wbd_mbist3_dat_i[6] ;
 wire \wbd_mbist3_dat_i[7] ;
 wire \wbd_mbist3_dat_i[8] ;
 wire \wbd_mbist3_dat_i[9] ;
 wire \wbd_mbist3_dat_o[0] ;
 wire \wbd_mbist3_dat_o[10] ;
 wire \wbd_mbist3_dat_o[11] ;
 wire \wbd_mbist3_dat_o[12] ;
 wire \wbd_mbist3_dat_o[13] ;
 wire \wbd_mbist3_dat_o[14] ;
 wire \wbd_mbist3_dat_o[15] ;
 wire \wbd_mbist3_dat_o[16] ;
 wire \wbd_mbist3_dat_o[17] ;
 wire \wbd_mbist3_dat_o[18] ;
 wire \wbd_mbist3_dat_o[19] ;
 wire \wbd_mbist3_dat_o[1] ;
 wire \wbd_mbist3_dat_o[20] ;
 wire \wbd_mbist3_dat_o[21] ;
 wire \wbd_mbist3_dat_o[22] ;
 wire \wbd_mbist3_dat_o[23] ;
 wire \wbd_mbist3_dat_o[24] ;
 wire \wbd_mbist3_dat_o[25] ;
 wire \wbd_mbist3_dat_o[26] ;
 wire \wbd_mbist3_dat_o[27] ;
 wire \wbd_mbist3_dat_o[28] ;
 wire \wbd_mbist3_dat_o[29] ;
 wire \wbd_mbist3_dat_o[2] ;
 wire \wbd_mbist3_dat_o[30] ;
 wire \wbd_mbist3_dat_o[31] ;
 wire \wbd_mbist3_dat_o[3] ;
 wire \wbd_mbist3_dat_o[4] ;
 wire \wbd_mbist3_dat_o[5] ;
 wire \wbd_mbist3_dat_o[6] ;
 wire \wbd_mbist3_dat_o[7] ;
 wire \wbd_mbist3_dat_o[8] ;
 wire \wbd_mbist3_dat_o[9] ;
 wire \wbd_mbist3_sel_o[0] ;
 wire \wbd_mbist3_sel_o[1] ;
 wire \wbd_mbist3_sel_o[2] ;
 wire \wbd_mbist3_sel_o[3] ;
 wire wbd_mbist3_stb_o;
 wire wbd_mbist3_we_o;
 wire wbd_mbist4_ack_i;
 wire \wbd_mbist4_adr_o[0] ;
 wire \wbd_mbist4_adr_o[10] ;
 wire \wbd_mbist4_adr_o[1] ;
 wire \wbd_mbist4_adr_o[2] ;
 wire \wbd_mbist4_adr_o[3] ;
 wire \wbd_mbist4_adr_o[4] ;
 wire \wbd_mbist4_adr_o[5] ;
 wire \wbd_mbist4_adr_o[6] ;
 wire \wbd_mbist4_adr_o[7] ;
 wire \wbd_mbist4_adr_o[8] ;
 wire \wbd_mbist4_adr_o[9] ;
 wire wbd_mbist4_cyc_o;
 wire \wbd_mbist4_dat_i[0] ;
 wire \wbd_mbist4_dat_i[10] ;
 wire \wbd_mbist4_dat_i[11] ;
 wire \wbd_mbist4_dat_i[12] ;
 wire \wbd_mbist4_dat_i[13] ;
 wire \wbd_mbist4_dat_i[14] ;
 wire \wbd_mbist4_dat_i[15] ;
 wire \wbd_mbist4_dat_i[16] ;
 wire \wbd_mbist4_dat_i[17] ;
 wire \wbd_mbist4_dat_i[18] ;
 wire \wbd_mbist4_dat_i[19] ;
 wire \wbd_mbist4_dat_i[1] ;
 wire \wbd_mbist4_dat_i[20] ;
 wire \wbd_mbist4_dat_i[21] ;
 wire \wbd_mbist4_dat_i[22] ;
 wire \wbd_mbist4_dat_i[23] ;
 wire \wbd_mbist4_dat_i[24] ;
 wire \wbd_mbist4_dat_i[25] ;
 wire \wbd_mbist4_dat_i[26] ;
 wire \wbd_mbist4_dat_i[27] ;
 wire \wbd_mbist4_dat_i[28] ;
 wire \wbd_mbist4_dat_i[29] ;
 wire \wbd_mbist4_dat_i[2] ;
 wire \wbd_mbist4_dat_i[30] ;
 wire \wbd_mbist4_dat_i[31] ;
 wire \wbd_mbist4_dat_i[3] ;
 wire \wbd_mbist4_dat_i[4] ;
 wire \wbd_mbist4_dat_i[5] ;
 wire \wbd_mbist4_dat_i[6] ;
 wire \wbd_mbist4_dat_i[7] ;
 wire \wbd_mbist4_dat_i[8] ;
 wire \wbd_mbist4_dat_i[9] ;
 wire \wbd_mbist4_dat_o[0] ;
 wire \wbd_mbist4_dat_o[10] ;
 wire \wbd_mbist4_dat_o[11] ;
 wire \wbd_mbist4_dat_o[12] ;
 wire \wbd_mbist4_dat_o[13] ;
 wire \wbd_mbist4_dat_o[14] ;
 wire \wbd_mbist4_dat_o[15] ;
 wire \wbd_mbist4_dat_o[16] ;
 wire \wbd_mbist4_dat_o[17] ;
 wire \wbd_mbist4_dat_o[18] ;
 wire \wbd_mbist4_dat_o[19] ;
 wire \wbd_mbist4_dat_o[1] ;
 wire \wbd_mbist4_dat_o[20] ;
 wire \wbd_mbist4_dat_o[21] ;
 wire \wbd_mbist4_dat_o[22] ;
 wire \wbd_mbist4_dat_o[23] ;
 wire \wbd_mbist4_dat_o[24] ;
 wire \wbd_mbist4_dat_o[25] ;
 wire \wbd_mbist4_dat_o[26] ;
 wire \wbd_mbist4_dat_o[27] ;
 wire \wbd_mbist4_dat_o[28] ;
 wire \wbd_mbist4_dat_o[29] ;
 wire \wbd_mbist4_dat_o[2] ;
 wire \wbd_mbist4_dat_o[30] ;
 wire \wbd_mbist4_dat_o[31] ;
 wire \wbd_mbist4_dat_o[3] ;
 wire \wbd_mbist4_dat_o[4] ;
 wire \wbd_mbist4_dat_o[5] ;
 wire \wbd_mbist4_dat_o[6] ;
 wire \wbd_mbist4_dat_o[7] ;
 wire \wbd_mbist4_dat_o[8] ;
 wire \wbd_mbist4_dat_o[9] ;
 wire \wbd_mbist4_sel_o[0] ;
 wire \wbd_mbist4_sel_o[1] ;
 wire \wbd_mbist4_sel_o[2] ;
 wire \wbd_mbist4_sel_o[3] ;
 wire wbd_mbist4_stb_o;
 wire wbd_mbist4_we_o;
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
 wire wbd_riscv_imem_ack_o;
 wire \wbd_riscv_imem_adr_i[0] ;
 wire \wbd_riscv_imem_adr_i[10] ;
 wire \wbd_riscv_imem_adr_i[11] ;
 wire \wbd_riscv_imem_adr_i[12] ;
 wire \wbd_riscv_imem_adr_i[13] ;
 wire \wbd_riscv_imem_adr_i[14] ;
 wire \wbd_riscv_imem_adr_i[15] ;
 wire \wbd_riscv_imem_adr_i[16] ;
 wire \wbd_riscv_imem_adr_i[17] ;
 wire \wbd_riscv_imem_adr_i[18] ;
 wire \wbd_riscv_imem_adr_i[19] ;
 wire \wbd_riscv_imem_adr_i[1] ;
 wire \wbd_riscv_imem_adr_i[20] ;
 wire \wbd_riscv_imem_adr_i[21] ;
 wire \wbd_riscv_imem_adr_i[22] ;
 wire \wbd_riscv_imem_adr_i[23] ;
 wire \wbd_riscv_imem_adr_i[24] ;
 wire \wbd_riscv_imem_adr_i[25] ;
 wire \wbd_riscv_imem_adr_i[26] ;
 wire \wbd_riscv_imem_adr_i[27] ;
 wire \wbd_riscv_imem_adr_i[28] ;
 wire \wbd_riscv_imem_adr_i[29] ;
 wire \wbd_riscv_imem_adr_i[2] ;
 wire \wbd_riscv_imem_adr_i[30] ;
 wire \wbd_riscv_imem_adr_i[31] ;
 wire \wbd_riscv_imem_adr_i[3] ;
 wire \wbd_riscv_imem_adr_i[4] ;
 wire \wbd_riscv_imem_adr_i[5] ;
 wire \wbd_riscv_imem_adr_i[6] ;
 wire \wbd_riscv_imem_adr_i[7] ;
 wire \wbd_riscv_imem_adr_i[8] ;
 wire \wbd_riscv_imem_adr_i[9] ;
 wire \wbd_riscv_imem_dat_i[0] ;
 wire \wbd_riscv_imem_dat_i[10] ;
 wire \wbd_riscv_imem_dat_i[11] ;
 wire \wbd_riscv_imem_dat_i[12] ;
 wire \wbd_riscv_imem_dat_i[13] ;
 wire \wbd_riscv_imem_dat_i[14] ;
 wire \wbd_riscv_imem_dat_i[15] ;
 wire \wbd_riscv_imem_dat_i[16] ;
 wire \wbd_riscv_imem_dat_i[17] ;
 wire \wbd_riscv_imem_dat_i[18] ;
 wire \wbd_riscv_imem_dat_i[19] ;
 wire \wbd_riscv_imem_dat_i[1] ;
 wire \wbd_riscv_imem_dat_i[20] ;
 wire \wbd_riscv_imem_dat_i[21] ;
 wire \wbd_riscv_imem_dat_i[22] ;
 wire \wbd_riscv_imem_dat_i[23] ;
 wire \wbd_riscv_imem_dat_i[24] ;
 wire \wbd_riscv_imem_dat_i[25] ;
 wire \wbd_riscv_imem_dat_i[26] ;
 wire \wbd_riscv_imem_dat_i[27] ;
 wire \wbd_riscv_imem_dat_i[28] ;
 wire \wbd_riscv_imem_dat_i[29] ;
 wire \wbd_riscv_imem_dat_i[2] ;
 wire \wbd_riscv_imem_dat_i[30] ;
 wire \wbd_riscv_imem_dat_i[31] ;
 wire \wbd_riscv_imem_dat_i[3] ;
 wire \wbd_riscv_imem_dat_i[4] ;
 wire \wbd_riscv_imem_dat_i[5] ;
 wire \wbd_riscv_imem_dat_i[6] ;
 wire \wbd_riscv_imem_dat_i[7] ;
 wire \wbd_riscv_imem_dat_i[8] ;
 wire \wbd_riscv_imem_dat_i[9] ;
 wire \wbd_riscv_imem_dat_o[0] ;
 wire \wbd_riscv_imem_dat_o[10] ;
 wire \wbd_riscv_imem_dat_o[11] ;
 wire \wbd_riscv_imem_dat_o[12] ;
 wire \wbd_riscv_imem_dat_o[13] ;
 wire \wbd_riscv_imem_dat_o[14] ;
 wire \wbd_riscv_imem_dat_o[15] ;
 wire \wbd_riscv_imem_dat_o[16] ;
 wire \wbd_riscv_imem_dat_o[17] ;
 wire \wbd_riscv_imem_dat_o[18] ;
 wire \wbd_riscv_imem_dat_o[19] ;
 wire \wbd_riscv_imem_dat_o[1] ;
 wire \wbd_riscv_imem_dat_o[20] ;
 wire \wbd_riscv_imem_dat_o[21] ;
 wire \wbd_riscv_imem_dat_o[22] ;
 wire \wbd_riscv_imem_dat_o[23] ;
 wire \wbd_riscv_imem_dat_o[24] ;
 wire \wbd_riscv_imem_dat_o[25] ;
 wire \wbd_riscv_imem_dat_o[26] ;
 wire \wbd_riscv_imem_dat_o[27] ;
 wire \wbd_riscv_imem_dat_o[28] ;
 wire \wbd_riscv_imem_dat_o[29] ;
 wire \wbd_riscv_imem_dat_o[2] ;
 wire \wbd_riscv_imem_dat_o[30] ;
 wire \wbd_riscv_imem_dat_o[31] ;
 wire \wbd_riscv_imem_dat_o[3] ;
 wire \wbd_riscv_imem_dat_o[4] ;
 wire \wbd_riscv_imem_dat_o[5] ;
 wire \wbd_riscv_imem_dat_o[6] ;
 wire \wbd_riscv_imem_dat_o[7] ;
 wire \wbd_riscv_imem_dat_o[8] ;
 wire \wbd_riscv_imem_dat_o[9] ;
 wire wbd_riscv_imem_err_o;
 wire \wbd_riscv_imem_sel_i[0] ;
 wire \wbd_riscv_imem_sel_i[1] ;
 wire \wbd_riscv_imem_sel_i[2] ;
 wire \wbd_riscv_imem_sel_i[3] ;
 wire wbd_riscv_imem_stb_i;
 wire wbd_riscv_imem_we_i;
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

 wb_interconnect u_intercon (.clk_i(wbd_clk_wi_skew),
    .m0_wbd_ack_o(wbd_int_ack_o),
    .m0_wbd_cyc_i(wbd_int_cyc_i),
    .m0_wbd_err_o(wbd_int_err_o),
    .m0_wbd_stb_i(wbd_int_stb_i),
    .m0_wbd_we_i(wbd_int_we_i),
    .m1_wbd_ack_o(wbd_riscv_imem_ack_o),
    .m1_wbd_cyc_i(wbd_riscv_imem_stb_i),
    .m1_wbd_err_o(wbd_riscv_imem_err_o),
    .m1_wbd_stb_i(wbd_riscv_imem_stb_i),
    .m1_wbd_we_i(wbd_riscv_imem_we_i),
    .m2_wbd_ack_o(wbd_riscv_dmem_ack_o),
    .m2_wbd_cyc_i(wbd_riscv_dmem_stb_i),
    .m2_wbd_err_o(wbd_riscv_dmem_err_o),
    .m2_wbd_stb_i(wbd_riscv_dmem_stb_i),
    .m2_wbd_we_i(wbd_riscv_dmem_we_i),
    .rst_n(wbd_int_rst_n),
    .s0_wbd_ack_i(wbd_spim_ack_i),
    .s0_wbd_cyc_o(wbd_spim_cyc_o),
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
    .s3_wbd_ack_i(wbd_mbist1_ack_i),
    .s3_wbd_cyc_o(wbd_mbist1_cyc_o),
    .s3_wbd_stb_o(wbd_mbist1_stb_o),
    .s3_wbd_we_o(wbd_mbist1_we_o),
    .s4_wbd_ack_i(wbd_mbist2_ack_i),
    .s4_wbd_cyc_o(wbd_mbist2_cyc_o),
    .s4_wbd_stb_o(wbd_mbist2_stb_o),
    .s4_wbd_we_o(wbd_mbist2_we_o),
    .s5_wbd_ack_i(wbd_mbist3_ack_i),
    .s5_wbd_cyc_o(wbd_mbist3_cyc_o),
    .s5_wbd_stb_o(wbd_mbist3_stb_o),
    .s5_wbd_we_o(wbd_mbist3_we_o),
    .s6_wbd_ack_i(wbd_mbist4_ack_i),
    .s6_wbd_cyc_o(wbd_mbist4_cyc_o),
    .s6_wbd_stb_o(wbd_mbist4_stb_o),
    .s6_wbd_we_o(wbd_mbist4_we_o),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wbd_clk_int(wbd_clk_int),
    .wbd_clk_wi(wbd_clk_wi_skew),
    .boot_remap({\boot_remap[3] ,
    \boot_remap[2] ,
    \boot_remap[1] ,
    \boot_remap[0] }),
    .cfg_cska_wi({\cfg_clk_ctrl1[3] ,
    \cfg_clk_ctrl1[2] ,
    \cfg_clk_ctrl1[1] ,
    \cfg_clk_ctrl1[0] }),
    .ch_clk_in({wbd_clk_int,
    wbd_clk_int,
    wbd_clk_int,
    wbd_clk_int,
    wbd_clk_int,
    wbd_clk_int,
    wbd_clk_int,
    wbd_clk_int}),
    .ch_clk_out({wbd_clk_mbist4_rp,
    wbd_clk_mbist3_rp,
    wbd_clk_mbist2_rp,
    wbd_clk_mbist1_rp,
    wbd_clk_pinmux_rp,
    wbd_clk_uart_rp,
    wbd_clk_qspi_rp,
    wbd_clk_risc_rp}),
    .ch_data_in({\bist_error_cnt3[3] ,
    \bist_error_cnt3[2] ,
    \bist_error_cnt3[1] ,
    \bist_error_cnt3[0] ,
    \bist_correct[3] ,
    \bist_error[3] ,
    \bist_done[3] ,
    \bist_sdo[3] ,
    \bist_shift[3] ,
    \bist_sdi[3] ,
    \bist_load[3] ,
    \bist_run[3] ,
    \bist_en[3] ,
    \bist_error_cnt2[3] ,
    \bist_error_cnt2[2] ,
    \bist_error_cnt2[1] ,
    \bist_error_cnt2[0] ,
    \bist_correct[2] ,
    \bist_error[2] ,
    \bist_done[2] ,
    \bist_sdo[2] ,
    \bist_shift[2] ,
    \bist_sdi[2] ,
    \bist_load[2] ,
    \bist_run[2] ,
    \bist_en[2] ,
    \bist_error_cnt1[3] ,
    \bist_error_cnt1[2] ,
    \bist_error_cnt1[1] ,
    \bist_error_cnt1[0] ,
    \bist_correct[1] ,
    \bist_error[1] ,
    \bist_done[1] ,
    \bist_sdo[1] ,
    \bist_shift[1] ,
    \bist_sdi[1] ,
    \bist_load[1] ,
    \bist_run[1] ,
    \bist_en[1] ,
    \bist_error_cnt0[3] ,
    \bist_error_cnt0[2] ,
    \bist_error_cnt0[1] ,
    \bist_error_cnt0[0] ,
    \bist_correct[0] ,
    \bist_error[0] ,
    \bist_done[0] ,
    \bist_sdo[0] ,
    \bist_shift[0] ,
    \bist_sdi[0] ,
    \bist_load[0] ,
    \bist_run[0] ,
    \bist_en[0] ,
    soft_irq,
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
    \fuse_mhartid[31] ,
    \fuse_mhartid[30] ,
    \fuse_mhartid[29] ,
    \fuse_mhartid[28] ,
    \fuse_mhartid[27] ,
    \fuse_mhartid[26] ,
    \fuse_mhartid[25] ,
    \fuse_mhartid[24] ,
    \fuse_mhartid[23] ,
    \fuse_mhartid[22] ,
    \fuse_mhartid[21] ,
    \fuse_mhartid[20] ,
    \fuse_mhartid[19] ,
    \fuse_mhartid[18] ,
    \fuse_mhartid[17] ,
    \fuse_mhartid[16] ,
    \fuse_mhartid[15] ,
    \fuse_mhartid[14] ,
    \fuse_mhartid[13] ,
    \fuse_mhartid[12] ,
    \fuse_mhartid[11] ,
    \fuse_mhartid[10] ,
    \fuse_mhartid[9] ,
    \fuse_mhartid[8] ,
    \fuse_mhartid[7] ,
    \fuse_mhartid[6] ,
    \fuse_mhartid[5] ,
    \fuse_mhartid[4] ,
    \fuse_mhartid[3] ,
    \fuse_mhartid[2] ,
    \fuse_mhartid[1] ,
    \fuse_mhartid[0] ,
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
    \cfg_clk_ctrl2[0] ,
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
    .ch_data_out({\bist_error_cnt3_rp[3] ,
    \bist_error_cnt3_rp[2] ,
    \bist_error_cnt3_rp[1] ,
    \bist_error_cnt3_rp[0] ,
    \bist_correct_rp[3] ,
    \bist_error_rp[3] ,
    \bist_done_rp[3] ,
    \bist_sdo_rp[3] ,
    \bist_shift_rp[3] ,
    \bist_sdi_rp[3] ,
    \bist_load_rp[3] ,
    \bist_run_rp[3] ,
    \bist_en_rp[3] ,
    \bist_error_cnt2_rp[3] ,
    \bist_error_cnt2_rp[2] ,
    \bist_error_cnt2_rp[1] ,
    \bist_error_cnt2_rp[0] ,
    \bist_correct_rp[2] ,
    \bist_error_rp[2] ,
    \bist_done_rp[2] ,
    \bist_sdo_rp[2] ,
    \bist_shift_rp[2] ,
    \bist_sdi_rp[2] ,
    \bist_load_rp[2] ,
    \bist_run_rp[2] ,
    \bist_en_rp[2] ,
    \bist_error_cnt1_rp[3] ,
    \bist_error_cnt1_rp[2] ,
    \bist_error_cnt1_rp[1] ,
    \bist_error_cnt1_rp[0] ,
    \bist_correct_rp[1] ,
    \bist_error_rp[1] ,
    \bist_done_rp[1] ,
    \bist_sdo_rp[1] ,
    \bist_shift_rp[1] ,
    \bist_sdi_rp[1] ,
    \bist_load_rp[1] ,
    \bist_run_rp[1] ,
    \bist_en_rp[1] ,
    \bist_error_cnt0_rp[3] ,
    \bist_error_cnt0_rp[2] ,
    \bist_error_cnt0_rp[1] ,
    \bist_error_cnt0_rp[0] ,
    \bist_correct_rp[0] ,
    \bist_error_rp[0] ,
    \bist_done_rp[0] ,
    \bist_sdo_rp[0] ,
    \bist_shift_rp[0] ,
    \bist_sdi_rp[0] ,
    \bist_load_rp[0] ,
    \bist_run_rp[0] ,
    \bist_en_rp[0] ,
    soft_irq_rp,
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
    \fuse_mhartid_rp[31] ,
    \fuse_mhartid_rp[30] ,
    \fuse_mhartid_rp[29] ,
    \fuse_mhartid_rp[28] ,
    \fuse_mhartid_rp[27] ,
    \fuse_mhartid_rp[26] ,
    \fuse_mhartid_rp[25] ,
    \fuse_mhartid_rp[24] ,
    \fuse_mhartid_rp[23] ,
    \fuse_mhartid_rp[22] ,
    \fuse_mhartid_rp[21] ,
    \fuse_mhartid_rp[20] ,
    \fuse_mhartid_rp[19] ,
    \fuse_mhartid_rp[18] ,
    \fuse_mhartid_rp[17] ,
    \fuse_mhartid_rp[16] ,
    \fuse_mhartid_rp[15] ,
    \fuse_mhartid_rp[14] ,
    \fuse_mhartid_rp[13] ,
    \fuse_mhartid_rp[12] ,
    \fuse_mhartid_rp[11] ,
    \fuse_mhartid_rp[10] ,
    \fuse_mhartid_rp[9] ,
    \fuse_mhartid_rp[8] ,
    \fuse_mhartid_rp[7] ,
    \fuse_mhartid_rp[6] ,
    \fuse_mhartid_rp[5] ,
    \fuse_mhartid_rp[4] ,
    \fuse_mhartid_rp[3] ,
    \fuse_mhartid_rp[2] ,
    \fuse_mhartid_rp[1] ,
    \fuse_mhartid_rp[0] ,
    \cfg_cska_mbist4_rp[3] ,
    \cfg_cska_mbist4_rp[2] ,
    \cfg_cska_mbist4_rp[1] ,
    \cfg_cska_mbist4_rp[0] ,
    \cfg_cska_mbist3_rp[3] ,
    \cfg_cska_mbist3_rp[2] ,
    \cfg_cska_mbist3_rp[1] ,
    \cfg_cska_mbist3_rp[0] ,
    \cfg_cska_mbist2_rp[3] ,
    \cfg_cska_mbist2_rp[2] ,
    \cfg_cska_mbist2_rp[1] ,
    \cfg_cska_mbist2_rp[0] ,
    \cfg_cska_mbist1_rp[3] ,
    \cfg_cska_mbist1_rp[2] ,
    \cfg_cska_mbist1_rp[1] ,
    \cfg_cska_mbist1_rp[0] ,
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
    .m1_wbd_adr_i({\wbd_riscv_imem_adr_i[31] ,
    \wbd_riscv_imem_adr_i[30] ,
    \wbd_riscv_imem_adr_i[29] ,
    \wbd_riscv_imem_adr_i[28] ,
    \wbd_riscv_imem_adr_i[27] ,
    \wbd_riscv_imem_adr_i[26] ,
    \wbd_riscv_imem_adr_i[25] ,
    \wbd_riscv_imem_adr_i[24] ,
    \wbd_riscv_imem_adr_i[23] ,
    \wbd_riscv_imem_adr_i[22] ,
    \wbd_riscv_imem_adr_i[21] ,
    \wbd_riscv_imem_adr_i[20] ,
    \wbd_riscv_imem_adr_i[19] ,
    \wbd_riscv_imem_adr_i[18] ,
    \wbd_riscv_imem_adr_i[17] ,
    \wbd_riscv_imem_adr_i[16] ,
    \wbd_riscv_imem_adr_i[15] ,
    \wbd_riscv_imem_adr_i[14] ,
    \wbd_riscv_imem_adr_i[13] ,
    \wbd_riscv_imem_adr_i[12] ,
    \wbd_riscv_imem_adr_i[11] ,
    \wbd_riscv_imem_adr_i[10] ,
    \wbd_riscv_imem_adr_i[9] ,
    \wbd_riscv_imem_adr_i[8] ,
    \wbd_riscv_imem_adr_i[7] ,
    \wbd_riscv_imem_adr_i[6] ,
    \wbd_riscv_imem_adr_i[5] ,
    \wbd_riscv_imem_adr_i[4] ,
    \wbd_riscv_imem_adr_i[3] ,
    \wbd_riscv_imem_adr_i[2] ,
    \wbd_riscv_imem_adr_i[1] ,
    \wbd_riscv_imem_adr_i[0] }),
    .m1_wbd_dat_i({\wbd_riscv_imem_dat_i[31] ,
    \wbd_riscv_imem_dat_i[30] ,
    \wbd_riscv_imem_dat_i[29] ,
    \wbd_riscv_imem_dat_i[28] ,
    \wbd_riscv_imem_dat_i[27] ,
    \wbd_riscv_imem_dat_i[26] ,
    \wbd_riscv_imem_dat_i[25] ,
    \wbd_riscv_imem_dat_i[24] ,
    \wbd_riscv_imem_dat_i[23] ,
    \wbd_riscv_imem_dat_i[22] ,
    \wbd_riscv_imem_dat_i[21] ,
    \wbd_riscv_imem_dat_i[20] ,
    \wbd_riscv_imem_dat_i[19] ,
    \wbd_riscv_imem_dat_i[18] ,
    \wbd_riscv_imem_dat_i[17] ,
    \wbd_riscv_imem_dat_i[16] ,
    \wbd_riscv_imem_dat_i[15] ,
    \wbd_riscv_imem_dat_i[14] ,
    \wbd_riscv_imem_dat_i[13] ,
    \wbd_riscv_imem_dat_i[12] ,
    \wbd_riscv_imem_dat_i[11] ,
    \wbd_riscv_imem_dat_i[10] ,
    \wbd_riscv_imem_dat_i[9] ,
    \wbd_riscv_imem_dat_i[8] ,
    \wbd_riscv_imem_dat_i[7] ,
    \wbd_riscv_imem_dat_i[6] ,
    \wbd_riscv_imem_dat_i[5] ,
    \wbd_riscv_imem_dat_i[4] ,
    \wbd_riscv_imem_dat_i[3] ,
    \wbd_riscv_imem_dat_i[2] ,
    \wbd_riscv_imem_dat_i[1] ,
    \wbd_riscv_imem_dat_i[0] }),
    .m1_wbd_dat_o({\wbd_riscv_imem_dat_o[31] ,
    \wbd_riscv_imem_dat_o[30] ,
    \wbd_riscv_imem_dat_o[29] ,
    \wbd_riscv_imem_dat_o[28] ,
    \wbd_riscv_imem_dat_o[27] ,
    \wbd_riscv_imem_dat_o[26] ,
    \wbd_riscv_imem_dat_o[25] ,
    \wbd_riscv_imem_dat_o[24] ,
    \wbd_riscv_imem_dat_o[23] ,
    \wbd_riscv_imem_dat_o[22] ,
    \wbd_riscv_imem_dat_o[21] ,
    \wbd_riscv_imem_dat_o[20] ,
    \wbd_riscv_imem_dat_o[19] ,
    \wbd_riscv_imem_dat_o[18] ,
    \wbd_riscv_imem_dat_o[17] ,
    \wbd_riscv_imem_dat_o[16] ,
    \wbd_riscv_imem_dat_o[15] ,
    \wbd_riscv_imem_dat_o[14] ,
    \wbd_riscv_imem_dat_o[13] ,
    \wbd_riscv_imem_dat_o[12] ,
    \wbd_riscv_imem_dat_o[11] ,
    \wbd_riscv_imem_dat_o[10] ,
    \wbd_riscv_imem_dat_o[9] ,
    \wbd_riscv_imem_dat_o[8] ,
    \wbd_riscv_imem_dat_o[7] ,
    \wbd_riscv_imem_dat_o[6] ,
    \wbd_riscv_imem_dat_o[5] ,
    \wbd_riscv_imem_dat_o[4] ,
    \wbd_riscv_imem_dat_o[3] ,
    \wbd_riscv_imem_dat_o[2] ,
    \wbd_riscv_imem_dat_o[1] ,
    \wbd_riscv_imem_dat_o[0] }),
    .m1_wbd_sel_i({\wbd_riscv_imem_sel_i[3] ,
    \wbd_riscv_imem_sel_i[2] ,
    \wbd_riscv_imem_sel_i[1] ,
    \wbd_riscv_imem_sel_i[0] }),
    .m2_wbd_adr_i({\wbd_riscv_dmem_adr_i[31] ,
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
    .m2_wbd_dat_i({\wbd_riscv_dmem_dat_i[31] ,
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
    .m2_wbd_dat_o({\wbd_riscv_dmem_dat_o[31] ,
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
    .m2_wbd_sel_i({\wbd_riscv_dmem_sel_i[3] ,
    \wbd_riscv_dmem_sel_i[2] ,
    \wbd_riscv_dmem_sel_i[1] ,
    \wbd_riscv_dmem_sel_i[0] }),
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
    \wbd_glbl_sel_o[0] }),
    .s3_wbd_adr_o({\wbd_mbist1_adr_o[10] ,
    \wbd_mbist1_adr_o[9] ,
    \wbd_mbist1_adr_o[8] ,
    \wbd_mbist1_adr_o[7] ,
    \wbd_mbist1_adr_o[6] ,
    \wbd_mbist1_adr_o[5] ,
    \wbd_mbist1_adr_o[4] ,
    \wbd_mbist1_adr_o[3] ,
    \wbd_mbist1_adr_o[2] ,
    \wbd_mbist1_adr_o[1] ,
    \wbd_mbist1_adr_o[0] }),
    .s3_wbd_dat_i({\wbd_mbist1_dat_i[31] ,
    \wbd_mbist1_dat_i[30] ,
    \wbd_mbist1_dat_i[29] ,
    \wbd_mbist1_dat_i[28] ,
    \wbd_mbist1_dat_i[27] ,
    \wbd_mbist1_dat_i[26] ,
    \wbd_mbist1_dat_i[25] ,
    \wbd_mbist1_dat_i[24] ,
    \wbd_mbist1_dat_i[23] ,
    \wbd_mbist1_dat_i[22] ,
    \wbd_mbist1_dat_i[21] ,
    \wbd_mbist1_dat_i[20] ,
    \wbd_mbist1_dat_i[19] ,
    \wbd_mbist1_dat_i[18] ,
    \wbd_mbist1_dat_i[17] ,
    \wbd_mbist1_dat_i[16] ,
    \wbd_mbist1_dat_i[15] ,
    \wbd_mbist1_dat_i[14] ,
    \wbd_mbist1_dat_i[13] ,
    \wbd_mbist1_dat_i[12] ,
    \wbd_mbist1_dat_i[11] ,
    \wbd_mbist1_dat_i[10] ,
    \wbd_mbist1_dat_i[9] ,
    \wbd_mbist1_dat_i[8] ,
    \wbd_mbist1_dat_i[7] ,
    \wbd_mbist1_dat_i[6] ,
    \wbd_mbist1_dat_i[5] ,
    \wbd_mbist1_dat_i[4] ,
    \wbd_mbist1_dat_i[3] ,
    \wbd_mbist1_dat_i[2] ,
    \wbd_mbist1_dat_i[1] ,
    \wbd_mbist1_dat_i[0] }),
    .s3_wbd_dat_o({\wbd_mbist1_dat_o[31] ,
    \wbd_mbist1_dat_o[30] ,
    \wbd_mbist1_dat_o[29] ,
    \wbd_mbist1_dat_o[28] ,
    \wbd_mbist1_dat_o[27] ,
    \wbd_mbist1_dat_o[26] ,
    \wbd_mbist1_dat_o[25] ,
    \wbd_mbist1_dat_o[24] ,
    \wbd_mbist1_dat_o[23] ,
    \wbd_mbist1_dat_o[22] ,
    \wbd_mbist1_dat_o[21] ,
    \wbd_mbist1_dat_o[20] ,
    \wbd_mbist1_dat_o[19] ,
    \wbd_mbist1_dat_o[18] ,
    \wbd_mbist1_dat_o[17] ,
    \wbd_mbist1_dat_o[16] ,
    \wbd_mbist1_dat_o[15] ,
    \wbd_mbist1_dat_o[14] ,
    \wbd_mbist1_dat_o[13] ,
    \wbd_mbist1_dat_o[12] ,
    \wbd_mbist1_dat_o[11] ,
    \wbd_mbist1_dat_o[10] ,
    \wbd_mbist1_dat_o[9] ,
    \wbd_mbist1_dat_o[8] ,
    \wbd_mbist1_dat_o[7] ,
    \wbd_mbist1_dat_o[6] ,
    \wbd_mbist1_dat_o[5] ,
    \wbd_mbist1_dat_o[4] ,
    \wbd_mbist1_dat_o[3] ,
    \wbd_mbist1_dat_o[2] ,
    \wbd_mbist1_dat_o[1] ,
    \wbd_mbist1_dat_o[0] }),
    .s3_wbd_sel_o({\wbd_mbist1_sel_o[3] ,
    \wbd_mbist1_sel_o[2] ,
    \wbd_mbist1_sel_o[1] ,
    \wbd_mbist1_sel_o[0] }),
    .s4_wbd_adr_o({\wbd_mbist2_adr_o[10] ,
    \wbd_mbist2_adr_o[9] ,
    \wbd_mbist2_adr_o[8] ,
    \wbd_mbist2_adr_o[7] ,
    \wbd_mbist2_adr_o[6] ,
    \wbd_mbist2_adr_o[5] ,
    \wbd_mbist2_adr_o[4] ,
    \wbd_mbist2_adr_o[3] ,
    \wbd_mbist2_adr_o[2] ,
    \wbd_mbist2_adr_o[1] ,
    \wbd_mbist2_adr_o[0] }),
    .s4_wbd_dat_i({\wbd_mbist2_dat_i[31] ,
    \wbd_mbist2_dat_i[30] ,
    \wbd_mbist2_dat_i[29] ,
    \wbd_mbist2_dat_i[28] ,
    \wbd_mbist2_dat_i[27] ,
    \wbd_mbist2_dat_i[26] ,
    \wbd_mbist2_dat_i[25] ,
    \wbd_mbist2_dat_i[24] ,
    \wbd_mbist2_dat_i[23] ,
    \wbd_mbist2_dat_i[22] ,
    \wbd_mbist2_dat_i[21] ,
    \wbd_mbist2_dat_i[20] ,
    \wbd_mbist2_dat_i[19] ,
    \wbd_mbist2_dat_i[18] ,
    \wbd_mbist2_dat_i[17] ,
    \wbd_mbist2_dat_i[16] ,
    \wbd_mbist2_dat_i[15] ,
    \wbd_mbist2_dat_i[14] ,
    \wbd_mbist2_dat_i[13] ,
    \wbd_mbist2_dat_i[12] ,
    \wbd_mbist2_dat_i[11] ,
    \wbd_mbist2_dat_i[10] ,
    \wbd_mbist2_dat_i[9] ,
    \wbd_mbist2_dat_i[8] ,
    \wbd_mbist2_dat_i[7] ,
    \wbd_mbist2_dat_i[6] ,
    \wbd_mbist2_dat_i[5] ,
    \wbd_mbist2_dat_i[4] ,
    \wbd_mbist2_dat_i[3] ,
    \wbd_mbist2_dat_i[2] ,
    \wbd_mbist2_dat_i[1] ,
    \wbd_mbist2_dat_i[0] }),
    .s4_wbd_dat_o({\wbd_mbist2_dat_o[31] ,
    \wbd_mbist2_dat_o[30] ,
    \wbd_mbist2_dat_o[29] ,
    \wbd_mbist2_dat_o[28] ,
    \wbd_mbist2_dat_o[27] ,
    \wbd_mbist2_dat_o[26] ,
    \wbd_mbist2_dat_o[25] ,
    \wbd_mbist2_dat_o[24] ,
    \wbd_mbist2_dat_o[23] ,
    \wbd_mbist2_dat_o[22] ,
    \wbd_mbist2_dat_o[21] ,
    \wbd_mbist2_dat_o[20] ,
    \wbd_mbist2_dat_o[19] ,
    \wbd_mbist2_dat_o[18] ,
    \wbd_mbist2_dat_o[17] ,
    \wbd_mbist2_dat_o[16] ,
    \wbd_mbist2_dat_o[15] ,
    \wbd_mbist2_dat_o[14] ,
    \wbd_mbist2_dat_o[13] ,
    \wbd_mbist2_dat_o[12] ,
    \wbd_mbist2_dat_o[11] ,
    \wbd_mbist2_dat_o[10] ,
    \wbd_mbist2_dat_o[9] ,
    \wbd_mbist2_dat_o[8] ,
    \wbd_mbist2_dat_o[7] ,
    \wbd_mbist2_dat_o[6] ,
    \wbd_mbist2_dat_o[5] ,
    \wbd_mbist2_dat_o[4] ,
    \wbd_mbist2_dat_o[3] ,
    \wbd_mbist2_dat_o[2] ,
    \wbd_mbist2_dat_o[1] ,
    \wbd_mbist2_dat_o[0] }),
    .s4_wbd_sel_o({\wbd_mbist2_sel_o[3] ,
    \wbd_mbist2_sel_o[2] ,
    \wbd_mbist2_sel_o[1] ,
    \wbd_mbist2_sel_o[0] }),
    .s5_wbd_adr_o({\wbd_mbist3_adr_o[10] ,
    \wbd_mbist3_adr_o[9] ,
    \wbd_mbist3_adr_o[8] ,
    \wbd_mbist3_adr_o[7] ,
    \wbd_mbist3_adr_o[6] ,
    \wbd_mbist3_adr_o[5] ,
    \wbd_mbist3_adr_o[4] ,
    \wbd_mbist3_adr_o[3] ,
    \wbd_mbist3_adr_o[2] ,
    \wbd_mbist3_adr_o[1] ,
    \wbd_mbist3_adr_o[0] }),
    .s5_wbd_dat_i({\wbd_mbist3_dat_i[31] ,
    \wbd_mbist3_dat_i[30] ,
    \wbd_mbist3_dat_i[29] ,
    \wbd_mbist3_dat_i[28] ,
    \wbd_mbist3_dat_i[27] ,
    \wbd_mbist3_dat_i[26] ,
    \wbd_mbist3_dat_i[25] ,
    \wbd_mbist3_dat_i[24] ,
    \wbd_mbist3_dat_i[23] ,
    \wbd_mbist3_dat_i[22] ,
    \wbd_mbist3_dat_i[21] ,
    \wbd_mbist3_dat_i[20] ,
    \wbd_mbist3_dat_i[19] ,
    \wbd_mbist3_dat_i[18] ,
    \wbd_mbist3_dat_i[17] ,
    \wbd_mbist3_dat_i[16] ,
    \wbd_mbist3_dat_i[15] ,
    \wbd_mbist3_dat_i[14] ,
    \wbd_mbist3_dat_i[13] ,
    \wbd_mbist3_dat_i[12] ,
    \wbd_mbist3_dat_i[11] ,
    \wbd_mbist3_dat_i[10] ,
    \wbd_mbist3_dat_i[9] ,
    \wbd_mbist3_dat_i[8] ,
    \wbd_mbist3_dat_i[7] ,
    \wbd_mbist3_dat_i[6] ,
    \wbd_mbist3_dat_i[5] ,
    \wbd_mbist3_dat_i[4] ,
    \wbd_mbist3_dat_i[3] ,
    \wbd_mbist3_dat_i[2] ,
    \wbd_mbist3_dat_i[1] ,
    \wbd_mbist3_dat_i[0] }),
    .s5_wbd_dat_o({\wbd_mbist3_dat_o[31] ,
    \wbd_mbist3_dat_o[30] ,
    \wbd_mbist3_dat_o[29] ,
    \wbd_mbist3_dat_o[28] ,
    \wbd_mbist3_dat_o[27] ,
    \wbd_mbist3_dat_o[26] ,
    \wbd_mbist3_dat_o[25] ,
    \wbd_mbist3_dat_o[24] ,
    \wbd_mbist3_dat_o[23] ,
    \wbd_mbist3_dat_o[22] ,
    \wbd_mbist3_dat_o[21] ,
    \wbd_mbist3_dat_o[20] ,
    \wbd_mbist3_dat_o[19] ,
    \wbd_mbist3_dat_o[18] ,
    \wbd_mbist3_dat_o[17] ,
    \wbd_mbist3_dat_o[16] ,
    \wbd_mbist3_dat_o[15] ,
    \wbd_mbist3_dat_o[14] ,
    \wbd_mbist3_dat_o[13] ,
    \wbd_mbist3_dat_o[12] ,
    \wbd_mbist3_dat_o[11] ,
    \wbd_mbist3_dat_o[10] ,
    \wbd_mbist3_dat_o[9] ,
    \wbd_mbist3_dat_o[8] ,
    \wbd_mbist3_dat_o[7] ,
    \wbd_mbist3_dat_o[6] ,
    \wbd_mbist3_dat_o[5] ,
    \wbd_mbist3_dat_o[4] ,
    \wbd_mbist3_dat_o[3] ,
    \wbd_mbist3_dat_o[2] ,
    \wbd_mbist3_dat_o[1] ,
    \wbd_mbist3_dat_o[0] }),
    .s5_wbd_sel_o({\wbd_mbist3_sel_o[3] ,
    \wbd_mbist3_sel_o[2] ,
    \wbd_mbist3_sel_o[1] ,
    \wbd_mbist3_sel_o[0] }),
    .s6_wbd_adr_o({\wbd_mbist4_adr_o[10] ,
    \wbd_mbist4_adr_o[9] ,
    \wbd_mbist4_adr_o[8] ,
    \wbd_mbist4_adr_o[7] ,
    \wbd_mbist4_adr_o[6] ,
    \wbd_mbist4_adr_o[5] ,
    \wbd_mbist4_adr_o[4] ,
    \wbd_mbist4_adr_o[3] ,
    \wbd_mbist4_adr_o[2] ,
    \wbd_mbist4_adr_o[1] ,
    \wbd_mbist4_adr_o[0] }),
    .s6_wbd_dat_i({\wbd_mbist4_dat_i[31] ,
    \wbd_mbist4_dat_i[30] ,
    \wbd_mbist4_dat_i[29] ,
    \wbd_mbist4_dat_i[28] ,
    \wbd_mbist4_dat_i[27] ,
    \wbd_mbist4_dat_i[26] ,
    \wbd_mbist4_dat_i[25] ,
    \wbd_mbist4_dat_i[24] ,
    \wbd_mbist4_dat_i[23] ,
    \wbd_mbist4_dat_i[22] ,
    \wbd_mbist4_dat_i[21] ,
    \wbd_mbist4_dat_i[20] ,
    \wbd_mbist4_dat_i[19] ,
    \wbd_mbist4_dat_i[18] ,
    \wbd_mbist4_dat_i[17] ,
    \wbd_mbist4_dat_i[16] ,
    \wbd_mbist4_dat_i[15] ,
    \wbd_mbist4_dat_i[14] ,
    \wbd_mbist4_dat_i[13] ,
    \wbd_mbist4_dat_i[12] ,
    \wbd_mbist4_dat_i[11] ,
    \wbd_mbist4_dat_i[10] ,
    \wbd_mbist4_dat_i[9] ,
    \wbd_mbist4_dat_i[8] ,
    \wbd_mbist4_dat_i[7] ,
    \wbd_mbist4_dat_i[6] ,
    \wbd_mbist4_dat_i[5] ,
    \wbd_mbist4_dat_i[4] ,
    \wbd_mbist4_dat_i[3] ,
    \wbd_mbist4_dat_i[2] ,
    \wbd_mbist4_dat_i[1] ,
    \wbd_mbist4_dat_i[0] }),
    .s6_wbd_dat_o({\wbd_mbist4_dat_o[31] ,
    \wbd_mbist4_dat_o[30] ,
    \wbd_mbist4_dat_o[29] ,
    \wbd_mbist4_dat_o[28] ,
    \wbd_mbist4_dat_o[27] ,
    \wbd_mbist4_dat_o[26] ,
    \wbd_mbist4_dat_o[25] ,
    \wbd_mbist4_dat_o[24] ,
    \wbd_mbist4_dat_o[23] ,
    \wbd_mbist4_dat_o[22] ,
    \wbd_mbist4_dat_o[21] ,
    \wbd_mbist4_dat_o[20] ,
    \wbd_mbist4_dat_o[19] ,
    \wbd_mbist4_dat_o[18] ,
    \wbd_mbist4_dat_o[17] ,
    \wbd_mbist4_dat_o[16] ,
    \wbd_mbist4_dat_o[15] ,
    \wbd_mbist4_dat_o[14] ,
    \wbd_mbist4_dat_o[13] ,
    \wbd_mbist4_dat_o[12] ,
    \wbd_mbist4_dat_o[11] ,
    \wbd_mbist4_dat_o[10] ,
    \wbd_mbist4_dat_o[9] ,
    \wbd_mbist4_dat_o[8] ,
    \wbd_mbist4_dat_o[7] ,
    \wbd_mbist4_dat_o[6] ,
    \wbd_mbist4_dat_o[5] ,
    \wbd_mbist4_dat_o[4] ,
    \wbd_mbist4_dat_o[3] ,
    \wbd_mbist4_dat_o[2] ,
    \wbd_mbist4_dat_o[1] ,
    \wbd_mbist4_dat_o[0] }),
    .s6_wbd_sel_o({\wbd_mbist4_sel_o[3] ,
    \wbd_mbist4_sel_o[2] ,
    \wbd_mbist4_sel_o[1] ,
    \wbd_mbist4_sel_o[0] }));
 mbist_top1 u_mbist1 (.bist_correct(\bist_correct[0] ),
    .bist_done(\bist_done[0] ),
    .bist_en(\bist_en_rp[0] ),
    .bist_error(\bist_error[0] ),
    .bist_load(\bist_load_rp[0] ),
    .bist_run(\bist_run_rp[0] ),
    .bist_sdi(\bist_sdi_rp[0] ),
    .bist_sdo(\bist_sdo[0] ),
    .bist_shift(\bist_shift_rp[0] ),
    .mem_cen_a(mem1_cen_a),
    .mem_cen_b(mem1_cen_b),
    .mem_clk_a(mem1_clk_a),
    .mem_clk_b(mem1_clk_b),
    .mem_web_b(mem1_web_b),
    .rst_n(bist_rst_n),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_ack_o(wbd_mbist1_ack_i),
    .wb_clk_i(wbd_clk_mbist1_skew),
    .wb_cyc_i(wbd_mbist1_cyc_o),
    .wb_stb_i(wbd_mbist1_stb_o),
    .wb_we_i(wbd_mbist1_we_o),
    .wbd_clk_int(wbd_clk_mbist1_rp),
    .wbd_clk_mbist(wbd_clk_mbist1_skew),
    .bist_error_cnt({\bist_error_cnt0[3] ,
    \bist_error_cnt0[2] ,
    \bist_error_cnt0[1] ,
    \bist_error_cnt0[0] }),
    .cfg_cska_mbist({\cfg_cska_mbist1_rp[3] ,
    \cfg_cska_mbist1_rp[2] ,
    \cfg_cska_mbist1_rp[1] ,
    \cfg_cska_mbist1_rp[0] }),
    .mem_addr_a({\mem1_addr_a[10] ,
    \mem1_addr_a[9] ,
    \mem1_addr_a[8] ,
    \mem1_addr_a[7] ,
    \mem1_addr_a[6] ,
    \mem1_addr_a[5] ,
    \mem1_addr_a[4] ,
    \mem1_addr_a[3] ,
    \mem1_addr_a[2] }),
    .mem_addr_b({\mem1_addr_b[10] ,
    \mem1_addr_b[9] ,
    \mem1_addr_b[8] ,
    \mem1_addr_b[7] ,
    \mem1_addr_b[6] ,
    \mem1_addr_b[5] ,
    \mem1_addr_b[4] ,
    \mem1_addr_b[3] ,
    \mem1_addr_b[2] }),
    .mem_din_b({\mem1_din_b[31] ,
    \mem1_din_b[30] ,
    \mem1_din_b[29] ,
    \mem1_din_b[28] ,
    \mem1_din_b[27] ,
    \mem1_din_b[26] ,
    \mem1_din_b[25] ,
    \mem1_din_b[24] ,
    \mem1_din_b[23] ,
    \mem1_din_b[22] ,
    \mem1_din_b[21] ,
    \mem1_din_b[20] ,
    \mem1_din_b[19] ,
    \mem1_din_b[18] ,
    \mem1_din_b[17] ,
    \mem1_din_b[16] ,
    \mem1_din_b[15] ,
    \mem1_din_b[14] ,
    \mem1_din_b[13] ,
    \mem1_din_b[12] ,
    \mem1_din_b[11] ,
    \mem1_din_b[10] ,
    \mem1_din_b[9] ,
    \mem1_din_b[8] ,
    \mem1_din_b[7] ,
    \mem1_din_b[6] ,
    \mem1_din_b[5] ,
    \mem1_din_b[4] ,
    \mem1_din_b[3] ,
    \mem1_din_b[2] ,
    \mem1_din_b[1] ,
    \mem1_din_b[0] }),
    .mem_dout_a({\mem1_dout_a[31] ,
    \mem1_dout_a[30] ,
    \mem1_dout_a[29] ,
    \mem1_dout_a[28] ,
    \mem1_dout_a[27] ,
    \mem1_dout_a[26] ,
    \mem1_dout_a[25] ,
    \mem1_dout_a[24] ,
    \mem1_dout_a[23] ,
    \mem1_dout_a[22] ,
    \mem1_dout_a[21] ,
    \mem1_dout_a[20] ,
    \mem1_dout_a[19] ,
    \mem1_dout_a[18] ,
    \mem1_dout_a[17] ,
    \mem1_dout_a[16] ,
    \mem1_dout_a[15] ,
    \mem1_dout_a[14] ,
    \mem1_dout_a[13] ,
    \mem1_dout_a[12] ,
    \mem1_dout_a[11] ,
    \mem1_dout_a[10] ,
    \mem1_dout_a[9] ,
    \mem1_dout_a[8] ,
    \mem1_dout_a[7] ,
    \mem1_dout_a[6] ,
    \mem1_dout_a[5] ,
    \mem1_dout_a[4] ,
    \mem1_dout_a[3] ,
    \mem1_dout_a[2] ,
    \mem1_dout_a[1] ,
    \mem1_dout_a[0] }),
    .mem_mask_b({\mem1_mask_b[3] ,
    \mem1_mask_b[2] ,
    \mem1_mask_b[1] ,
    \mem1_mask_b[0] }),
    .wb_adr_i({\wbd_mbist1_adr_o[10] ,
    \wbd_mbist1_adr_o[9] ,
    \wbd_mbist1_adr_o[8] ,
    \wbd_mbist1_adr_o[7] ,
    \wbd_mbist1_adr_o[6] ,
    \wbd_mbist1_adr_o[5] ,
    \wbd_mbist1_adr_o[4] ,
    \wbd_mbist1_adr_o[3] ,
    \wbd_mbist1_adr_o[2] }),
    .wb_dat_i({\wbd_mbist1_dat_o[31] ,
    \wbd_mbist1_dat_o[30] ,
    \wbd_mbist1_dat_o[29] ,
    \wbd_mbist1_dat_o[28] ,
    \wbd_mbist1_dat_o[27] ,
    \wbd_mbist1_dat_o[26] ,
    \wbd_mbist1_dat_o[25] ,
    \wbd_mbist1_dat_o[24] ,
    \wbd_mbist1_dat_o[23] ,
    \wbd_mbist1_dat_o[22] ,
    \wbd_mbist1_dat_o[21] ,
    \wbd_mbist1_dat_o[20] ,
    \wbd_mbist1_dat_o[19] ,
    \wbd_mbist1_dat_o[18] ,
    \wbd_mbist1_dat_o[17] ,
    \wbd_mbist1_dat_o[16] ,
    \wbd_mbist1_dat_o[15] ,
    \wbd_mbist1_dat_o[14] ,
    \wbd_mbist1_dat_o[13] ,
    \wbd_mbist1_dat_o[12] ,
    \wbd_mbist1_dat_o[11] ,
    \wbd_mbist1_dat_o[10] ,
    \wbd_mbist1_dat_o[9] ,
    \wbd_mbist1_dat_o[8] ,
    \wbd_mbist1_dat_o[7] ,
    \wbd_mbist1_dat_o[6] ,
    \wbd_mbist1_dat_o[5] ,
    \wbd_mbist1_dat_o[4] ,
    \wbd_mbist1_dat_o[3] ,
    \wbd_mbist1_dat_o[2] ,
    \wbd_mbist1_dat_o[1] ,
    \wbd_mbist1_dat_o[0] }),
    .wb_dat_o({\wbd_mbist1_dat_i[31] ,
    \wbd_mbist1_dat_i[30] ,
    \wbd_mbist1_dat_i[29] ,
    \wbd_mbist1_dat_i[28] ,
    \wbd_mbist1_dat_i[27] ,
    \wbd_mbist1_dat_i[26] ,
    \wbd_mbist1_dat_i[25] ,
    \wbd_mbist1_dat_i[24] ,
    \wbd_mbist1_dat_i[23] ,
    \wbd_mbist1_dat_i[22] ,
    \wbd_mbist1_dat_i[21] ,
    \wbd_mbist1_dat_i[20] ,
    \wbd_mbist1_dat_i[19] ,
    \wbd_mbist1_dat_i[18] ,
    \wbd_mbist1_dat_i[17] ,
    \wbd_mbist1_dat_i[16] ,
    \wbd_mbist1_dat_i[15] ,
    \wbd_mbist1_dat_i[14] ,
    \wbd_mbist1_dat_i[13] ,
    \wbd_mbist1_dat_i[12] ,
    \wbd_mbist1_dat_i[11] ,
    \wbd_mbist1_dat_i[10] ,
    \wbd_mbist1_dat_i[9] ,
    \wbd_mbist1_dat_i[8] ,
    \wbd_mbist1_dat_i[7] ,
    \wbd_mbist1_dat_i[6] ,
    \wbd_mbist1_dat_i[5] ,
    \wbd_mbist1_dat_i[4] ,
    \wbd_mbist1_dat_i[3] ,
    \wbd_mbist1_dat_i[2] ,
    \wbd_mbist1_dat_i[1] ,
    \wbd_mbist1_dat_i[0] }),
    .wb_sel_i({\wbd_mbist1_sel_o[3] ,
    \wbd_mbist1_sel_o[2] ,
    \wbd_mbist1_sel_o[1] ,
    \wbd_mbist1_sel_o[0] }));
 mbist_top1 u_mbist2 (.bist_correct(\bist_correct[1] ),
    .bist_done(\bist_done[1] ),
    .bist_en(\bist_en_rp[1] ),
    .bist_error(\bist_error[1] ),
    .bist_load(\bist_load_rp[1] ),
    .bist_run(\bist_run_rp[1] ),
    .bist_sdi(\bist_sdi_rp[1] ),
    .bist_sdo(\bist_sdo[1] ),
    .bist_shift(\bist_shift_rp[1] ),
    .mem_cen_a(mem2_cen_a),
    .mem_cen_b(mem2_cen_b),
    .mem_clk_a(mem2_clk_a),
    .mem_clk_b(mem2_clk_b),
    .mem_web_b(mem2_web_b),
    .rst_n(bist_rst_n),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_ack_o(wbd_mbist2_ack_i),
    .wb_clk_i(wbd_clk_mbist2_skew),
    .wb_cyc_i(wbd_mbist2_cyc_o),
    .wb_stb_i(wbd_mbist2_stb_o),
    .wb_we_i(wbd_mbist2_we_o),
    .wbd_clk_int(wbd_clk_mbist2_rp),
    .wbd_clk_mbist(wbd_clk_mbist2_skew),
    .bist_error_cnt({\bist_error_cnt1[3] ,
    \bist_error_cnt1[2] ,
    \bist_error_cnt1[1] ,
    \bist_error_cnt1[0] }),
    .cfg_cska_mbist({\cfg_cska_mbist2_rp[3] ,
    \cfg_cska_mbist2_rp[2] ,
    \cfg_cska_mbist2_rp[1] ,
    \cfg_cska_mbist2_rp[0] }),
    .mem_addr_a({\mem2_addr_a[10] ,
    \mem2_addr_a[9] ,
    \mem2_addr_a[8] ,
    \mem2_addr_a[7] ,
    \mem2_addr_a[6] ,
    \mem2_addr_a[5] ,
    \mem2_addr_a[4] ,
    \mem2_addr_a[3] ,
    \mem2_addr_a[2] }),
    .mem_addr_b({\mem2_addr_b[10] ,
    \mem2_addr_b[9] ,
    \mem2_addr_b[8] ,
    \mem2_addr_b[7] ,
    \mem2_addr_b[6] ,
    \mem2_addr_b[5] ,
    \mem2_addr_b[4] ,
    \mem2_addr_b[3] ,
    \mem2_addr_b[2] }),
    .mem_din_b({\mem2_din_b[31] ,
    \mem2_din_b[30] ,
    \mem2_din_b[29] ,
    \mem2_din_b[28] ,
    \mem2_din_b[27] ,
    \mem2_din_b[26] ,
    \mem2_din_b[25] ,
    \mem2_din_b[24] ,
    \mem2_din_b[23] ,
    \mem2_din_b[22] ,
    \mem2_din_b[21] ,
    \mem2_din_b[20] ,
    \mem2_din_b[19] ,
    \mem2_din_b[18] ,
    \mem2_din_b[17] ,
    \mem2_din_b[16] ,
    \mem2_din_b[15] ,
    \mem2_din_b[14] ,
    \mem2_din_b[13] ,
    \mem2_din_b[12] ,
    \mem2_din_b[11] ,
    \mem2_din_b[10] ,
    \mem2_din_b[9] ,
    \mem2_din_b[8] ,
    \mem2_din_b[7] ,
    \mem2_din_b[6] ,
    \mem2_din_b[5] ,
    \mem2_din_b[4] ,
    \mem2_din_b[3] ,
    \mem2_din_b[2] ,
    \mem2_din_b[1] ,
    \mem2_din_b[0] }),
    .mem_dout_a({\mem2_dout_a[31] ,
    \mem2_dout_a[30] ,
    \mem2_dout_a[29] ,
    \mem2_dout_a[28] ,
    \mem2_dout_a[27] ,
    \mem2_dout_a[26] ,
    \mem2_dout_a[25] ,
    \mem2_dout_a[24] ,
    \mem2_dout_a[23] ,
    \mem2_dout_a[22] ,
    \mem2_dout_a[21] ,
    \mem2_dout_a[20] ,
    \mem2_dout_a[19] ,
    \mem2_dout_a[18] ,
    \mem2_dout_a[17] ,
    \mem2_dout_a[16] ,
    \mem2_dout_a[15] ,
    \mem2_dout_a[14] ,
    \mem2_dout_a[13] ,
    \mem2_dout_a[12] ,
    \mem2_dout_a[11] ,
    \mem2_dout_a[10] ,
    \mem2_dout_a[9] ,
    \mem2_dout_a[8] ,
    \mem2_dout_a[7] ,
    \mem2_dout_a[6] ,
    \mem2_dout_a[5] ,
    \mem2_dout_a[4] ,
    \mem2_dout_a[3] ,
    \mem2_dout_a[2] ,
    \mem2_dout_a[1] ,
    \mem2_dout_a[0] }),
    .mem_mask_b({\mem2_mask_b[3] ,
    \mem2_mask_b[2] ,
    \mem2_mask_b[1] ,
    \mem2_mask_b[0] }),
    .wb_adr_i({\wbd_mbist2_adr_o[10] ,
    \wbd_mbist2_adr_o[9] ,
    \wbd_mbist2_adr_o[8] ,
    \wbd_mbist2_adr_o[7] ,
    \wbd_mbist2_adr_o[6] ,
    \wbd_mbist2_adr_o[5] ,
    \wbd_mbist2_adr_o[4] ,
    \wbd_mbist2_adr_o[3] ,
    \wbd_mbist2_adr_o[2] }),
    .wb_dat_i({\wbd_mbist2_dat_o[31] ,
    \wbd_mbist2_dat_o[30] ,
    \wbd_mbist2_dat_o[29] ,
    \wbd_mbist2_dat_o[28] ,
    \wbd_mbist2_dat_o[27] ,
    \wbd_mbist2_dat_o[26] ,
    \wbd_mbist2_dat_o[25] ,
    \wbd_mbist2_dat_o[24] ,
    \wbd_mbist2_dat_o[23] ,
    \wbd_mbist2_dat_o[22] ,
    \wbd_mbist2_dat_o[21] ,
    \wbd_mbist2_dat_o[20] ,
    \wbd_mbist2_dat_o[19] ,
    \wbd_mbist2_dat_o[18] ,
    \wbd_mbist2_dat_o[17] ,
    \wbd_mbist2_dat_o[16] ,
    \wbd_mbist2_dat_o[15] ,
    \wbd_mbist2_dat_o[14] ,
    \wbd_mbist2_dat_o[13] ,
    \wbd_mbist2_dat_o[12] ,
    \wbd_mbist2_dat_o[11] ,
    \wbd_mbist2_dat_o[10] ,
    \wbd_mbist2_dat_o[9] ,
    \wbd_mbist2_dat_o[8] ,
    \wbd_mbist2_dat_o[7] ,
    \wbd_mbist2_dat_o[6] ,
    \wbd_mbist2_dat_o[5] ,
    \wbd_mbist2_dat_o[4] ,
    \wbd_mbist2_dat_o[3] ,
    \wbd_mbist2_dat_o[2] ,
    \wbd_mbist2_dat_o[1] ,
    \wbd_mbist2_dat_o[0] }),
    .wb_dat_o({\wbd_mbist2_dat_i[31] ,
    \wbd_mbist2_dat_i[30] ,
    \wbd_mbist2_dat_i[29] ,
    \wbd_mbist2_dat_i[28] ,
    \wbd_mbist2_dat_i[27] ,
    \wbd_mbist2_dat_i[26] ,
    \wbd_mbist2_dat_i[25] ,
    \wbd_mbist2_dat_i[24] ,
    \wbd_mbist2_dat_i[23] ,
    \wbd_mbist2_dat_i[22] ,
    \wbd_mbist2_dat_i[21] ,
    \wbd_mbist2_dat_i[20] ,
    \wbd_mbist2_dat_i[19] ,
    \wbd_mbist2_dat_i[18] ,
    \wbd_mbist2_dat_i[17] ,
    \wbd_mbist2_dat_i[16] ,
    \wbd_mbist2_dat_i[15] ,
    \wbd_mbist2_dat_i[14] ,
    \wbd_mbist2_dat_i[13] ,
    \wbd_mbist2_dat_i[12] ,
    \wbd_mbist2_dat_i[11] ,
    \wbd_mbist2_dat_i[10] ,
    \wbd_mbist2_dat_i[9] ,
    \wbd_mbist2_dat_i[8] ,
    \wbd_mbist2_dat_i[7] ,
    \wbd_mbist2_dat_i[6] ,
    \wbd_mbist2_dat_i[5] ,
    \wbd_mbist2_dat_i[4] ,
    \wbd_mbist2_dat_i[3] ,
    \wbd_mbist2_dat_i[2] ,
    \wbd_mbist2_dat_i[1] ,
    \wbd_mbist2_dat_i[0] }),
    .wb_sel_i({\wbd_mbist2_sel_o[3] ,
    \wbd_mbist2_sel_o[2] ,
    \wbd_mbist2_sel_o[1] ,
    \wbd_mbist2_sel_o[0] }));
 mbist_top1 u_mbist3 (.bist_correct(\bist_correct[2] ),
    .bist_done(\bist_done[2] ),
    .bist_en(\bist_en_rp[2] ),
    .bist_error(\bist_error[2] ),
    .bist_load(\bist_load_rp[2] ),
    .bist_run(\bist_run_rp[2] ),
    .bist_sdi(\bist_sdi_rp[2] ),
    .bist_sdo(\bist_sdo[2] ),
    .bist_shift(\bist_shift_rp[2] ),
    .mem_cen_a(mem3_cen_a),
    .mem_cen_b(mem3_cen_b),
    .mem_clk_a(mem3_clk_a),
    .mem_clk_b(mem3_clk_b),
    .mem_web_b(mem3_web_b),
    .rst_n(bist_rst_n),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_ack_o(wbd_mbist3_ack_i),
    .wb_clk_i(wbd_clk_mbist3_skew),
    .wb_cyc_i(wbd_mbist3_cyc_o),
    .wb_stb_i(wbd_mbist3_stb_o),
    .wb_we_i(wbd_mbist3_we_o),
    .wbd_clk_int(wbd_clk_mbist3_rp),
    .wbd_clk_mbist(wbd_clk_mbist3_skew),
    .bist_error_cnt({\bist_error_cnt2[3] ,
    \bist_error_cnt2[2] ,
    \bist_error_cnt2[1] ,
    \bist_error_cnt2[0] }),
    .cfg_cska_mbist({\cfg_cska_mbist3_rp[3] ,
    \cfg_cska_mbist3_rp[2] ,
    \cfg_cska_mbist3_rp[1] ,
    \cfg_cska_mbist3_rp[0] }),
    .mem_addr_a({\mem3_addr_a[10] ,
    \mem3_addr_a[9] ,
    \mem3_addr_a[8] ,
    \mem3_addr_a[7] ,
    \mem3_addr_a[6] ,
    \mem3_addr_a[5] ,
    \mem3_addr_a[4] ,
    \mem3_addr_a[3] ,
    \mem3_addr_a[2] }),
    .mem_addr_b({\mem3_addr_b[10] ,
    \mem3_addr_b[9] ,
    \mem3_addr_b[8] ,
    \mem3_addr_b[7] ,
    \mem3_addr_b[6] ,
    \mem3_addr_b[5] ,
    \mem3_addr_b[4] ,
    \mem3_addr_b[3] ,
    \mem3_addr_b[2] }),
    .mem_din_b({\mem3_din_b[31] ,
    \mem3_din_b[30] ,
    \mem3_din_b[29] ,
    \mem3_din_b[28] ,
    \mem3_din_b[27] ,
    \mem3_din_b[26] ,
    \mem3_din_b[25] ,
    \mem3_din_b[24] ,
    \mem3_din_b[23] ,
    \mem3_din_b[22] ,
    \mem3_din_b[21] ,
    \mem3_din_b[20] ,
    \mem3_din_b[19] ,
    \mem3_din_b[18] ,
    \mem3_din_b[17] ,
    \mem3_din_b[16] ,
    \mem3_din_b[15] ,
    \mem3_din_b[14] ,
    \mem3_din_b[13] ,
    \mem3_din_b[12] ,
    \mem3_din_b[11] ,
    \mem3_din_b[10] ,
    \mem3_din_b[9] ,
    \mem3_din_b[8] ,
    \mem3_din_b[7] ,
    \mem3_din_b[6] ,
    \mem3_din_b[5] ,
    \mem3_din_b[4] ,
    \mem3_din_b[3] ,
    \mem3_din_b[2] ,
    \mem3_din_b[1] ,
    \mem3_din_b[0] }),
    .mem_dout_a({\mem3_dout_a[31] ,
    \mem3_dout_a[30] ,
    \mem3_dout_a[29] ,
    \mem3_dout_a[28] ,
    \mem3_dout_a[27] ,
    \mem3_dout_a[26] ,
    \mem3_dout_a[25] ,
    \mem3_dout_a[24] ,
    \mem3_dout_a[23] ,
    \mem3_dout_a[22] ,
    \mem3_dout_a[21] ,
    \mem3_dout_a[20] ,
    \mem3_dout_a[19] ,
    \mem3_dout_a[18] ,
    \mem3_dout_a[17] ,
    \mem3_dout_a[16] ,
    \mem3_dout_a[15] ,
    \mem3_dout_a[14] ,
    \mem3_dout_a[13] ,
    \mem3_dout_a[12] ,
    \mem3_dout_a[11] ,
    \mem3_dout_a[10] ,
    \mem3_dout_a[9] ,
    \mem3_dout_a[8] ,
    \mem3_dout_a[7] ,
    \mem3_dout_a[6] ,
    \mem3_dout_a[5] ,
    \mem3_dout_a[4] ,
    \mem3_dout_a[3] ,
    \mem3_dout_a[2] ,
    \mem3_dout_a[1] ,
    \mem3_dout_a[0] }),
    .mem_mask_b({\mem3_mask_b[3] ,
    \mem3_mask_b[2] ,
    \mem3_mask_b[1] ,
    \mem3_mask_b[0] }),
    .wb_adr_i({\wbd_mbist3_adr_o[10] ,
    \wbd_mbist3_adr_o[9] ,
    \wbd_mbist3_adr_o[8] ,
    \wbd_mbist3_adr_o[7] ,
    \wbd_mbist3_adr_o[6] ,
    \wbd_mbist3_adr_o[5] ,
    \wbd_mbist3_adr_o[4] ,
    \wbd_mbist3_adr_o[3] ,
    \wbd_mbist3_adr_o[2] }),
    .wb_dat_i({\wbd_mbist3_dat_o[31] ,
    \wbd_mbist3_dat_o[30] ,
    \wbd_mbist3_dat_o[29] ,
    \wbd_mbist3_dat_o[28] ,
    \wbd_mbist3_dat_o[27] ,
    \wbd_mbist3_dat_o[26] ,
    \wbd_mbist3_dat_o[25] ,
    \wbd_mbist3_dat_o[24] ,
    \wbd_mbist3_dat_o[23] ,
    \wbd_mbist3_dat_o[22] ,
    \wbd_mbist3_dat_o[21] ,
    \wbd_mbist3_dat_o[20] ,
    \wbd_mbist3_dat_o[19] ,
    \wbd_mbist3_dat_o[18] ,
    \wbd_mbist3_dat_o[17] ,
    \wbd_mbist3_dat_o[16] ,
    \wbd_mbist3_dat_o[15] ,
    \wbd_mbist3_dat_o[14] ,
    \wbd_mbist3_dat_o[13] ,
    \wbd_mbist3_dat_o[12] ,
    \wbd_mbist3_dat_o[11] ,
    \wbd_mbist3_dat_o[10] ,
    \wbd_mbist3_dat_o[9] ,
    \wbd_mbist3_dat_o[8] ,
    \wbd_mbist3_dat_o[7] ,
    \wbd_mbist3_dat_o[6] ,
    \wbd_mbist3_dat_o[5] ,
    \wbd_mbist3_dat_o[4] ,
    \wbd_mbist3_dat_o[3] ,
    \wbd_mbist3_dat_o[2] ,
    \wbd_mbist3_dat_o[1] ,
    \wbd_mbist3_dat_o[0] }),
    .wb_dat_o({\wbd_mbist3_dat_i[31] ,
    \wbd_mbist3_dat_i[30] ,
    \wbd_mbist3_dat_i[29] ,
    \wbd_mbist3_dat_i[28] ,
    \wbd_mbist3_dat_i[27] ,
    \wbd_mbist3_dat_i[26] ,
    \wbd_mbist3_dat_i[25] ,
    \wbd_mbist3_dat_i[24] ,
    \wbd_mbist3_dat_i[23] ,
    \wbd_mbist3_dat_i[22] ,
    \wbd_mbist3_dat_i[21] ,
    \wbd_mbist3_dat_i[20] ,
    \wbd_mbist3_dat_i[19] ,
    \wbd_mbist3_dat_i[18] ,
    \wbd_mbist3_dat_i[17] ,
    \wbd_mbist3_dat_i[16] ,
    \wbd_mbist3_dat_i[15] ,
    \wbd_mbist3_dat_i[14] ,
    \wbd_mbist3_dat_i[13] ,
    \wbd_mbist3_dat_i[12] ,
    \wbd_mbist3_dat_i[11] ,
    \wbd_mbist3_dat_i[10] ,
    \wbd_mbist3_dat_i[9] ,
    \wbd_mbist3_dat_i[8] ,
    \wbd_mbist3_dat_i[7] ,
    \wbd_mbist3_dat_i[6] ,
    \wbd_mbist3_dat_i[5] ,
    \wbd_mbist3_dat_i[4] ,
    \wbd_mbist3_dat_i[3] ,
    \wbd_mbist3_dat_i[2] ,
    \wbd_mbist3_dat_i[1] ,
    \wbd_mbist3_dat_i[0] }),
    .wb_sel_i({\wbd_mbist3_sel_o[3] ,
    \wbd_mbist3_sel_o[2] ,
    \wbd_mbist3_sel_o[1] ,
    \wbd_mbist3_sel_o[0] }));
 mbist_top1 u_mbist4 (.bist_correct(\bist_correct[3] ),
    .bist_done(\bist_done[3] ),
    .bist_en(\bist_en_rp[3] ),
    .bist_error(\bist_error[3] ),
    .bist_load(\bist_load_rp[3] ),
    .bist_run(\bist_run_rp[3] ),
    .bist_sdi(\bist_sdi_rp[3] ),
    .bist_sdo(\bist_sdo[3] ),
    .bist_shift(\bist_shift_rp[3] ),
    .mem_cen_a(mem4_cen_a),
    .mem_cen_b(mem4_cen_b),
    .mem_clk_a(mem4_clk_a),
    .mem_clk_b(mem4_clk_b),
    .mem_web_b(mem4_web_b),
    .rst_n(bist_rst_n),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_ack_o(wbd_mbist4_ack_i),
    .wb_clk_i(wbd_clk_mbist4_skew),
    .wb_cyc_i(wbd_mbist4_cyc_o),
    .wb_stb_i(wbd_mbist4_stb_o),
    .wb_we_i(wbd_mbist4_we_o),
    .wbd_clk_int(wbd_clk_mbist4_rp),
    .wbd_clk_mbist(wbd_clk_mbist4_skew),
    .bist_error_cnt({\bist_error_cnt3[3] ,
    \bist_error_cnt3[2] ,
    \bist_error_cnt3[1] ,
    \bist_error_cnt3[0] }),
    .cfg_cska_mbist({\cfg_cska_mbist4_rp[3] ,
    \cfg_cska_mbist4_rp[2] ,
    \cfg_cska_mbist4_rp[1] ,
    \cfg_cska_mbist4_rp[0] }),
    .mem_addr_a({\mem4_addr_a[10] ,
    \mem4_addr_a[9] ,
    \mem4_addr_a[8] ,
    \mem4_addr_a[7] ,
    \mem4_addr_a[6] ,
    \mem4_addr_a[5] ,
    \mem4_addr_a[4] ,
    \mem4_addr_a[3] ,
    \mem4_addr_a[2] }),
    .mem_addr_b({\mem4_addr_b[10] ,
    \mem4_addr_b[9] ,
    \mem4_addr_b[8] ,
    \mem4_addr_b[7] ,
    \mem4_addr_b[6] ,
    \mem4_addr_b[5] ,
    \mem4_addr_b[4] ,
    \mem4_addr_b[3] ,
    \mem4_addr_b[2] }),
    .mem_din_b({\mem4_din_b[31] ,
    \mem4_din_b[30] ,
    \mem4_din_b[29] ,
    \mem4_din_b[28] ,
    \mem4_din_b[27] ,
    \mem4_din_b[26] ,
    \mem4_din_b[25] ,
    \mem4_din_b[24] ,
    \mem4_din_b[23] ,
    \mem4_din_b[22] ,
    \mem4_din_b[21] ,
    \mem4_din_b[20] ,
    \mem4_din_b[19] ,
    \mem4_din_b[18] ,
    \mem4_din_b[17] ,
    \mem4_din_b[16] ,
    \mem4_din_b[15] ,
    \mem4_din_b[14] ,
    \mem4_din_b[13] ,
    \mem4_din_b[12] ,
    \mem4_din_b[11] ,
    \mem4_din_b[10] ,
    \mem4_din_b[9] ,
    \mem4_din_b[8] ,
    \mem4_din_b[7] ,
    \mem4_din_b[6] ,
    \mem4_din_b[5] ,
    \mem4_din_b[4] ,
    \mem4_din_b[3] ,
    \mem4_din_b[2] ,
    \mem4_din_b[1] ,
    \mem4_din_b[0] }),
    .mem_dout_a({\mem4_dout_a[31] ,
    \mem4_dout_a[30] ,
    \mem4_dout_a[29] ,
    \mem4_dout_a[28] ,
    \mem4_dout_a[27] ,
    \mem4_dout_a[26] ,
    \mem4_dout_a[25] ,
    \mem4_dout_a[24] ,
    \mem4_dout_a[23] ,
    \mem4_dout_a[22] ,
    \mem4_dout_a[21] ,
    \mem4_dout_a[20] ,
    \mem4_dout_a[19] ,
    \mem4_dout_a[18] ,
    \mem4_dout_a[17] ,
    \mem4_dout_a[16] ,
    \mem4_dout_a[15] ,
    \mem4_dout_a[14] ,
    \mem4_dout_a[13] ,
    \mem4_dout_a[12] ,
    \mem4_dout_a[11] ,
    \mem4_dout_a[10] ,
    \mem4_dout_a[9] ,
    \mem4_dout_a[8] ,
    \mem4_dout_a[7] ,
    \mem4_dout_a[6] ,
    \mem4_dout_a[5] ,
    \mem4_dout_a[4] ,
    \mem4_dout_a[3] ,
    \mem4_dout_a[2] ,
    \mem4_dout_a[1] ,
    \mem4_dout_a[0] }),
    .mem_mask_b({\mem4_mask_b[3] ,
    \mem4_mask_b[2] ,
    \mem4_mask_b[1] ,
    \mem4_mask_b[0] }),
    .wb_adr_i({\wbd_mbist4_adr_o[10] ,
    \wbd_mbist4_adr_o[9] ,
    \wbd_mbist4_adr_o[8] ,
    \wbd_mbist4_adr_o[7] ,
    \wbd_mbist4_adr_o[6] ,
    \wbd_mbist4_adr_o[5] ,
    \wbd_mbist4_adr_o[4] ,
    \wbd_mbist4_adr_o[3] ,
    \wbd_mbist4_adr_o[2] }),
    .wb_dat_i({\wbd_mbist4_dat_o[31] ,
    \wbd_mbist4_dat_o[30] ,
    \wbd_mbist4_dat_o[29] ,
    \wbd_mbist4_dat_o[28] ,
    \wbd_mbist4_dat_o[27] ,
    \wbd_mbist4_dat_o[26] ,
    \wbd_mbist4_dat_o[25] ,
    \wbd_mbist4_dat_o[24] ,
    \wbd_mbist4_dat_o[23] ,
    \wbd_mbist4_dat_o[22] ,
    \wbd_mbist4_dat_o[21] ,
    \wbd_mbist4_dat_o[20] ,
    \wbd_mbist4_dat_o[19] ,
    \wbd_mbist4_dat_o[18] ,
    \wbd_mbist4_dat_o[17] ,
    \wbd_mbist4_dat_o[16] ,
    \wbd_mbist4_dat_o[15] ,
    \wbd_mbist4_dat_o[14] ,
    \wbd_mbist4_dat_o[13] ,
    \wbd_mbist4_dat_o[12] ,
    \wbd_mbist4_dat_o[11] ,
    \wbd_mbist4_dat_o[10] ,
    \wbd_mbist4_dat_o[9] ,
    \wbd_mbist4_dat_o[8] ,
    \wbd_mbist4_dat_o[7] ,
    \wbd_mbist4_dat_o[6] ,
    \wbd_mbist4_dat_o[5] ,
    \wbd_mbist4_dat_o[4] ,
    \wbd_mbist4_dat_o[3] ,
    \wbd_mbist4_dat_o[2] ,
    \wbd_mbist4_dat_o[1] ,
    \wbd_mbist4_dat_o[0] }),
    .wb_dat_o({\wbd_mbist4_dat_i[31] ,
    \wbd_mbist4_dat_i[30] ,
    \wbd_mbist4_dat_i[29] ,
    \wbd_mbist4_dat_i[28] ,
    \wbd_mbist4_dat_i[27] ,
    \wbd_mbist4_dat_i[26] ,
    \wbd_mbist4_dat_i[25] ,
    \wbd_mbist4_dat_i[24] ,
    \wbd_mbist4_dat_i[23] ,
    \wbd_mbist4_dat_i[22] ,
    \wbd_mbist4_dat_i[21] ,
    \wbd_mbist4_dat_i[20] ,
    \wbd_mbist4_dat_i[19] ,
    \wbd_mbist4_dat_i[18] ,
    \wbd_mbist4_dat_i[17] ,
    \wbd_mbist4_dat_i[16] ,
    \wbd_mbist4_dat_i[15] ,
    \wbd_mbist4_dat_i[14] ,
    \wbd_mbist4_dat_i[13] ,
    \wbd_mbist4_dat_i[12] ,
    \wbd_mbist4_dat_i[11] ,
    \wbd_mbist4_dat_i[10] ,
    \wbd_mbist4_dat_i[9] ,
    \wbd_mbist4_dat_i[8] ,
    \wbd_mbist4_dat_i[7] ,
    \wbd_mbist4_dat_i[6] ,
    \wbd_mbist4_dat_i[5] ,
    \wbd_mbist4_dat_i[4] ,
    \wbd_mbist4_dat_i[3] ,
    \wbd_mbist4_dat_i[2] ,
    \wbd_mbist4_dat_i[1] ,
    \wbd_mbist4_dat_i[0] }),
    .wb_sel_i({\wbd_mbist4_sel_o[3] ,
    \wbd_mbist4_sel_o[2] ,
    \wbd_mbist4_sel_o[1] ,
    \wbd_mbist4_sel_o[0] }));
 pinmux u_pinmux (.h_reset_n(wbd_int_rst_n),
    .i2cm_clk_i(i2cm_clk_i),
    .i2cm_clk_o(i2cm_clk_o),
    .i2cm_clk_oen(i2cm_clk_oen),
    .i2cm_data_i(i2cm_data_i),
    .i2cm_data_o(i2cm_data_o),
    .i2cm_data_oen(i2cm_data_oen),
    .i2cm_intr(i2cm_intr_o),
    .mclk(wbd_clk_pinmux_skew),
    .pulse1m_mclk(pulse1m_mclk),
    .reg_ack(wbd_glbl_ack_i),
    .reg_cs(wbd_glbl_stb_o),
    .reg_wr(wbd_glbl_we_o),
    .sflash_sck(sflash_sck),
    .sflash_ss(sflash_ss),
    .soft_irq(soft_irq),
    .spim_miso(sspim_so),
    .spim_mosi(sspim_si),
    .spim_sck(sspim_sck),
    .spim_ss(sspim_ssn),
    .uart_rxd(uart_rxd),
    .uart_txd(uart_txd),
    .usb_dn_i(usb_dn_i),
    .usb_dn_o(usb_dn_o),
    .usb_dp_i(usb_dp_i),
    .usb_dp_o(usb_dp_o),
    .usb_intr(usb_intr_o),
    .usb_oen(usb_oen),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wbd_clk_int(wbd_clk_pinmux_rp),
    .wbd_clk_pinmux(wbd_clk_pinmux_skew),
    .bist_correct({\bist_correct_rp[3] ,
    \bist_correct_rp[2] ,
    \bist_correct_rp[1] ,
    \bist_correct_rp[0] }),
    .bist_done({\bist_done_rp[3] ,
    \bist_done_rp[2] ,
    \bist_done_rp[1] ,
    \bist_done_rp[0] }),
    .bist_en({\bist_en[3] ,
    \bist_en[2] ,
    \bist_en[1] ,
    \bist_en[0] }),
    .bist_error({\bist_error_rp[3] ,
    \bist_error_rp[2] ,
    \bist_error_rp[1] ,
    \bist_error_rp[0] }),
    .bist_error_cnt0({\bist_error_cnt0_rp[3] ,
    \bist_error_cnt0_rp[2] ,
    \bist_error_cnt0_rp[1] ,
    \bist_error_cnt0_rp[0] }),
    .bist_error_cnt1({\bist_error_cnt1_rp[3] ,
    \bist_error_cnt1_rp[2] ,
    \bist_error_cnt1_rp[1] ,
    \bist_error_cnt1_rp[0] }),
    .bist_error_cnt2({\bist_error_cnt2_rp[3] ,
    \bist_error_cnt2_rp[2] ,
    \bist_error_cnt2_rp[1] ,
    \bist_error_cnt2_rp[0] }),
    .bist_error_cnt3({\bist_error_cnt3_rp[3] ,
    \bist_error_cnt3_rp[2] ,
    \bist_error_cnt3_rp[1] ,
    \bist_error_cnt3_rp[0] }),
    .bist_load({\bist_load[3] ,
    \bist_load[2] ,
    \bist_load[1] ,
    \bist_load[0] }),
    .bist_run({\bist_run[3] ,
    \bist_run[2] ,
    \bist_run[1] ,
    \bist_run[0] }),
    .bist_sdi({\bist_sdi[3] ,
    \bist_sdi[2] ,
    \bist_sdi[1] ,
    \bist_sdi[0] }),
    .bist_sdo({\bist_sdo_rp[3] ,
    \bist_sdo_rp[2] ,
    \bist_sdo_rp[1] ,
    \bist_sdo_rp[0] }),
    .bist_shift({\bist_shift[3] ,
    \bist_shift[2] ,
    \bist_shift[1] ,
    \bist_shift[0] }),
    .cfg_cska_pinmux({\cfg_cska_pinmux_rp[3] ,
    \cfg_cska_pinmux_rp[2] ,
    \cfg_cska_pinmux_rp[1] ,
    \cfg_cska_pinmux_rp[0] }),
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
    .fuse_mhartid({\fuse_mhartid[31] ,
    \fuse_mhartid[30] ,
    \fuse_mhartid[29] ,
    \fuse_mhartid[28] ,
    \fuse_mhartid[27] ,
    \fuse_mhartid[26] ,
    \fuse_mhartid[25] ,
    \fuse_mhartid[24] ,
    \fuse_mhartid[23] ,
    \fuse_mhartid[22] ,
    \fuse_mhartid[21] ,
    \fuse_mhartid[20] ,
    \fuse_mhartid[19] ,
    \fuse_mhartid[18] ,
    \fuse_mhartid[17] ,
    \fuse_mhartid[16] ,
    \fuse_mhartid[15] ,
    \fuse_mhartid[14] ,
    \fuse_mhartid[13] ,
    \fuse_mhartid[12] ,
    \fuse_mhartid[11] ,
    \fuse_mhartid[10] ,
    \fuse_mhartid[9] ,
    \fuse_mhartid[8] ,
    \fuse_mhartid[7] ,
    \fuse_mhartid[6] ,
    \fuse_mhartid[5] ,
    \fuse_mhartid[4] ,
    \fuse_mhartid[3] ,
    \fuse_mhartid[2] ,
    \fuse_mhartid[1] ,
    \fuse_mhartid[0] }),
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
    .user_irq({user_irq[2],
    user_irq[1],
    user_irq[0]}));
 qspim_top u_qspi_master (.mclk(wbd_clk_spi),
    .rst_n(qspim_rst_n),
    .spi_clk(sflash_sck),
    .spi_csn0(sflash_ss),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wbd_ack_o(wbd_spim_ack_i),
    .wbd_clk_int(wbd_clk_qspi_rp),
    .wbd_clk_spi(wbd_clk_spi),
    .wbd_err_o(wbd_spim_err_i),
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
 scr1_top_wb u_riscv_top (.core_clk(cpu_clk),
    .cpu_rst_n(cpu_rst_n),
    .pwrup_rst_n(wbd_int_rst_n),
    .rst_n(wbd_int_rst_n),
    .rtc_clk(rtc_clk),
    .soft_irq(soft_irq_rp),
    .sram_csb0(sram_csb0),
    .sram_csb1(sram_csb1),
    .sram_web0(sram_web0),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_clk(wbd_clk_riscv_skew),
    .wb_rst_n(wbd_int_rst_n),
    .wbd_clk_int(wbd_clk_risc_rp),
    .wbd_clk_riscv(wbd_clk_riscv_skew),
    .wbd_dmem_ack_i(wbd_riscv_dmem_ack_o),
    .wbd_dmem_err_i(wbd_riscv_dmem_err_o),
    .wbd_dmem_stb_o(wbd_riscv_dmem_stb_i),
    .wbd_dmem_we_o(wbd_riscv_dmem_we_i),
    .wbd_imem_ack_i(wbd_riscv_imem_ack_o),
    .wbd_imem_err_i(wbd_riscv_imem_err_o),
    .wbd_imem_stb_o(wbd_riscv_imem_stb_i),
    .wbd_imem_we_o(wbd_riscv_imem_we_i),
    .cfg_cska_riscv({\cfg_cska_riscv_rp[3] ,
    \cfg_cska_riscv_rp[2] ,
    \cfg_cska_riscv_rp[1] ,
    \cfg_cska_riscv_rp[0] }),
    .fuse_mhartid({\fuse_mhartid_rp[31] ,
    \fuse_mhartid_rp[30] ,
    \fuse_mhartid_rp[29] ,
    \fuse_mhartid_rp[28] ,
    \fuse_mhartid_rp[27] ,
    \fuse_mhartid_rp[26] ,
    \fuse_mhartid_rp[25] ,
    \fuse_mhartid_rp[24] ,
    \fuse_mhartid_rp[23] ,
    \fuse_mhartid_rp[22] ,
    \fuse_mhartid_rp[21] ,
    \fuse_mhartid_rp[20] ,
    \fuse_mhartid_rp[19] ,
    \fuse_mhartid_rp[18] ,
    \fuse_mhartid_rp[17] ,
    \fuse_mhartid_rp[16] ,
    \fuse_mhartid_rp[15] ,
    \fuse_mhartid_rp[14] ,
    \fuse_mhartid_rp[13] ,
    \fuse_mhartid_rp[12] ,
    \fuse_mhartid_rp[11] ,
    \fuse_mhartid_rp[10] ,
    \fuse_mhartid_rp[9] ,
    \fuse_mhartid_rp[8] ,
    \fuse_mhartid_rp[7] ,
    \fuse_mhartid_rp[6] ,
    \fuse_mhartid_rp[5] ,
    \fuse_mhartid_rp[4] ,
    \fuse_mhartid_rp[3] ,
    \fuse_mhartid_rp[2] ,
    \fuse_mhartid_rp[1] ,
    \fuse_mhartid_rp[0] }),
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
    .sram_addr0({\sram_addr0[8] ,
    \sram_addr0[7] ,
    \sram_addr0[6] ,
    \sram_addr0[5] ,
    \sram_addr0[4] ,
    \sram_addr0[3] ,
    \sram_addr0[2] ,
    \sram_addr0[1] ,
    \sram_addr0[0] }),
    .sram_addr1({\sram_addr1[8] ,
    \sram_addr1[7] ,
    \sram_addr1[6] ,
    \sram_addr1[5] ,
    \sram_addr1[4] ,
    \sram_addr1[3] ,
    \sram_addr1[2] ,
    \sram_addr1[1] ,
    \sram_addr1[0] }),
    .sram_din0({\sram_din0[31] ,
    \sram_din0[30] ,
    \sram_din0[29] ,
    \sram_din0[28] ,
    \sram_din0[27] ,
    \sram_din0[26] ,
    \sram_din0[25] ,
    \sram_din0[24] ,
    \sram_din0[23] ,
    \sram_din0[22] ,
    \sram_din0[21] ,
    \sram_din0[20] ,
    \sram_din0[19] ,
    \sram_din0[18] ,
    \sram_din0[17] ,
    \sram_din0[16] ,
    \sram_din0[15] ,
    \sram_din0[14] ,
    \sram_din0[13] ,
    \sram_din0[12] ,
    \sram_din0[11] ,
    \sram_din0[10] ,
    \sram_din0[9] ,
    \sram_din0[8] ,
    \sram_din0[7] ,
    \sram_din0[6] ,
    \sram_din0[5] ,
    \sram_din0[4] ,
    \sram_din0[3] ,
    \sram_din0[2] ,
    \sram_din0[1] ,
    \sram_din0[0] }),
    .sram_dout0({\sram_dout0[31] ,
    \sram_dout0[30] ,
    \sram_dout0[29] ,
    \sram_dout0[28] ,
    \sram_dout0[27] ,
    \sram_dout0[26] ,
    \sram_dout0[25] ,
    \sram_dout0[24] ,
    \sram_dout0[23] ,
    \sram_dout0[22] ,
    \sram_dout0[21] ,
    \sram_dout0[20] ,
    \sram_dout0[19] ,
    \sram_dout0[18] ,
    \sram_dout0[17] ,
    \sram_dout0[16] ,
    \sram_dout0[15] ,
    \sram_dout0[14] ,
    \sram_dout0[13] ,
    \sram_dout0[12] ,
    \sram_dout0[11] ,
    \sram_dout0[10] ,
    \sram_dout0[9] ,
    \sram_dout0[8] ,
    \sram_dout0[7] ,
    \sram_dout0[6] ,
    \sram_dout0[5] ,
    \sram_dout0[4] ,
    \sram_dout0[3] ,
    \sram_dout0[2] ,
    \sram_dout0[1] ,
    \sram_dout0[0] }),
    .sram_dout1({\sram_dout1[31] ,
    \sram_dout1[30] ,
    \sram_dout1[29] ,
    \sram_dout1[28] ,
    \sram_dout1[27] ,
    \sram_dout1[26] ,
    \sram_dout1[25] ,
    \sram_dout1[24] ,
    \sram_dout1[23] ,
    \sram_dout1[22] ,
    \sram_dout1[21] ,
    \sram_dout1[20] ,
    \sram_dout1[19] ,
    \sram_dout1[18] ,
    \sram_dout1[17] ,
    \sram_dout1[16] ,
    \sram_dout1[15] ,
    \sram_dout1[14] ,
    \sram_dout1[13] ,
    \sram_dout1[12] ,
    \sram_dout1[11] ,
    \sram_dout1[10] ,
    \sram_dout1[9] ,
    \sram_dout1[8] ,
    \sram_dout1[7] ,
    \sram_dout1[6] ,
    \sram_dout1[5] ,
    \sram_dout1[4] ,
    \sram_dout1[3] ,
    \sram_dout1[2] ,
    \sram_dout1[1] ,
    \sram_dout1[0] }),
    .sram_wmask0({\sram_wmask0[3] ,
    \sram_wmask0[2] ,
    \sram_wmask0[1] ,
    \sram_wmask0[0] }),
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
    \wbd_riscv_dmem_sel_i[0] }),
    .wbd_imem_adr_o({\wbd_riscv_imem_adr_i[31] ,
    \wbd_riscv_imem_adr_i[30] ,
    \wbd_riscv_imem_adr_i[29] ,
    \wbd_riscv_imem_adr_i[28] ,
    \wbd_riscv_imem_adr_i[27] ,
    \wbd_riscv_imem_adr_i[26] ,
    \wbd_riscv_imem_adr_i[25] ,
    \wbd_riscv_imem_adr_i[24] ,
    \wbd_riscv_imem_adr_i[23] ,
    \wbd_riscv_imem_adr_i[22] ,
    \wbd_riscv_imem_adr_i[21] ,
    \wbd_riscv_imem_adr_i[20] ,
    \wbd_riscv_imem_adr_i[19] ,
    \wbd_riscv_imem_adr_i[18] ,
    \wbd_riscv_imem_adr_i[17] ,
    \wbd_riscv_imem_adr_i[16] ,
    \wbd_riscv_imem_adr_i[15] ,
    \wbd_riscv_imem_adr_i[14] ,
    \wbd_riscv_imem_adr_i[13] ,
    \wbd_riscv_imem_adr_i[12] ,
    \wbd_riscv_imem_adr_i[11] ,
    \wbd_riscv_imem_adr_i[10] ,
    \wbd_riscv_imem_adr_i[9] ,
    \wbd_riscv_imem_adr_i[8] ,
    \wbd_riscv_imem_adr_i[7] ,
    \wbd_riscv_imem_adr_i[6] ,
    \wbd_riscv_imem_adr_i[5] ,
    \wbd_riscv_imem_adr_i[4] ,
    \wbd_riscv_imem_adr_i[3] ,
    \wbd_riscv_imem_adr_i[2] ,
    \wbd_riscv_imem_adr_i[1] ,
    \wbd_riscv_imem_adr_i[0] }),
    .wbd_imem_dat_i({\wbd_riscv_imem_dat_o[31] ,
    \wbd_riscv_imem_dat_o[30] ,
    \wbd_riscv_imem_dat_o[29] ,
    \wbd_riscv_imem_dat_o[28] ,
    \wbd_riscv_imem_dat_o[27] ,
    \wbd_riscv_imem_dat_o[26] ,
    \wbd_riscv_imem_dat_o[25] ,
    \wbd_riscv_imem_dat_o[24] ,
    \wbd_riscv_imem_dat_o[23] ,
    \wbd_riscv_imem_dat_o[22] ,
    \wbd_riscv_imem_dat_o[21] ,
    \wbd_riscv_imem_dat_o[20] ,
    \wbd_riscv_imem_dat_o[19] ,
    \wbd_riscv_imem_dat_o[18] ,
    \wbd_riscv_imem_dat_o[17] ,
    \wbd_riscv_imem_dat_o[16] ,
    \wbd_riscv_imem_dat_o[15] ,
    \wbd_riscv_imem_dat_o[14] ,
    \wbd_riscv_imem_dat_o[13] ,
    \wbd_riscv_imem_dat_o[12] ,
    \wbd_riscv_imem_dat_o[11] ,
    \wbd_riscv_imem_dat_o[10] ,
    \wbd_riscv_imem_dat_o[9] ,
    \wbd_riscv_imem_dat_o[8] ,
    \wbd_riscv_imem_dat_o[7] ,
    \wbd_riscv_imem_dat_o[6] ,
    \wbd_riscv_imem_dat_o[5] ,
    \wbd_riscv_imem_dat_o[4] ,
    \wbd_riscv_imem_dat_o[3] ,
    \wbd_riscv_imem_dat_o[2] ,
    \wbd_riscv_imem_dat_o[1] ,
    \wbd_riscv_imem_dat_o[0] }),
    .wbd_imem_dat_o({\wbd_riscv_imem_dat_i[31] ,
    \wbd_riscv_imem_dat_i[30] ,
    \wbd_riscv_imem_dat_i[29] ,
    \wbd_riscv_imem_dat_i[28] ,
    \wbd_riscv_imem_dat_i[27] ,
    \wbd_riscv_imem_dat_i[26] ,
    \wbd_riscv_imem_dat_i[25] ,
    \wbd_riscv_imem_dat_i[24] ,
    \wbd_riscv_imem_dat_i[23] ,
    \wbd_riscv_imem_dat_i[22] ,
    \wbd_riscv_imem_dat_i[21] ,
    \wbd_riscv_imem_dat_i[20] ,
    \wbd_riscv_imem_dat_i[19] ,
    \wbd_riscv_imem_dat_i[18] ,
    \wbd_riscv_imem_dat_i[17] ,
    \wbd_riscv_imem_dat_i[16] ,
    \wbd_riscv_imem_dat_i[15] ,
    \wbd_riscv_imem_dat_i[14] ,
    \wbd_riscv_imem_dat_i[13] ,
    \wbd_riscv_imem_dat_i[12] ,
    \wbd_riscv_imem_dat_i[11] ,
    \wbd_riscv_imem_dat_i[10] ,
    \wbd_riscv_imem_dat_i[9] ,
    \wbd_riscv_imem_dat_i[8] ,
    \wbd_riscv_imem_dat_i[7] ,
    \wbd_riscv_imem_dat_i[6] ,
    \wbd_riscv_imem_dat_i[5] ,
    \wbd_riscv_imem_dat_i[4] ,
    \wbd_riscv_imem_dat_i[3] ,
    \wbd_riscv_imem_dat_i[2] ,
    \wbd_riscv_imem_dat_i[1] ,
    \wbd_riscv_imem_dat_i[0] }),
    .wbd_imem_sel_o({\wbd_riscv_imem_sel_i[3] ,
    \wbd_riscv_imem_sel_i[2] ,
    \wbd_riscv_imem_sel_i[1] ,
    \wbd_riscv_imem_sel_i[0] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 u_sram1_2kb (.csb0(mem1_cen_b),
    .csb1(mem1_cen_a),
    .web0(mem1_web_b),
    .clk0(mem1_clk_b),
    .clk1(mem1_clk_a),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\mem1_addr_b[10] ,
    \mem1_addr_b[9] ,
    \mem1_addr_b[8] ,
    \mem1_addr_b[7] ,
    \mem1_addr_b[6] ,
    \mem1_addr_b[5] ,
    \mem1_addr_b[4] ,
    \mem1_addr_b[3] ,
    \mem1_addr_b[2] }),
    .addr1({\mem1_addr_a[10] ,
    \mem1_addr_a[9] ,
    \mem1_addr_a[8] ,
    \mem1_addr_a[7] ,
    \mem1_addr_a[6] ,
    \mem1_addr_a[5] ,
    \mem1_addr_a[4] ,
    \mem1_addr_a[3] ,
    \mem1_addr_a[2] }),
    .din0({\mem1_din_b[31] ,
    \mem1_din_b[30] ,
    \mem1_din_b[29] ,
    \mem1_din_b[28] ,
    \mem1_din_b[27] ,
    \mem1_din_b[26] ,
    \mem1_din_b[25] ,
    \mem1_din_b[24] ,
    \mem1_din_b[23] ,
    \mem1_din_b[22] ,
    \mem1_din_b[21] ,
    \mem1_din_b[20] ,
    \mem1_din_b[19] ,
    \mem1_din_b[18] ,
    \mem1_din_b[17] ,
    \mem1_din_b[16] ,
    \mem1_din_b[15] ,
    \mem1_din_b[14] ,
    \mem1_din_b[13] ,
    \mem1_din_b[12] ,
    \mem1_din_b[11] ,
    \mem1_din_b[10] ,
    \mem1_din_b[9] ,
    \mem1_din_b[8] ,
    \mem1_din_b[7] ,
    \mem1_din_b[6] ,
    \mem1_din_b[5] ,
    \mem1_din_b[4] ,
    \mem1_din_b[3] ,
    \mem1_din_b[2] ,
    \mem1_din_b[1] ,
    \mem1_din_b[0] }),
    .dout0({_NC1,
    _NC2,
    _NC3,
    _NC4,
    _NC5,
    _NC6,
    _NC7,
    _NC8,
    _NC9,
    _NC10,
    _NC11,
    _NC12,
    _NC13,
    _NC14,
    _NC15,
    _NC16,
    _NC17,
    _NC18,
    _NC19,
    _NC20,
    _NC21,
    _NC22,
    _NC23,
    _NC24,
    _NC25,
    _NC26,
    _NC27,
    _NC28,
    _NC29,
    _NC30,
    _NC31,
    _NC32}),
    .dout1({\mem1_dout_a[31] ,
    \mem1_dout_a[30] ,
    \mem1_dout_a[29] ,
    \mem1_dout_a[28] ,
    \mem1_dout_a[27] ,
    \mem1_dout_a[26] ,
    \mem1_dout_a[25] ,
    \mem1_dout_a[24] ,
    \mem1_dout_a[23] ,
    \mem1_dout_a[22] ,
    \mem1_dout_a[21] ,
    \mem1_dout_a[20] ,
    \mem1_dout_a[19] ,
    \mem1_dout_a[18] ,
    \mem1_dout_a[17] ,
    \mem1_dout_a[16] ,
    \mem1_dout_a[15] ,
    \mem1_dout_a[14] ,
    \mem1_dout_a[13] ,
    \mem1_dout_a[12] ,
    \mem1_dout_a[11] ,
    \mem1_dout_a[10] ,
    \mem1_dout_a[9] ,
    \mem1_dout_a[8] ,
    \mem1_dout_a[7] ,
    \mem1_dout_a[6] ,
    \mem1_dout_a[5] ,
    \mem1_dout_a[4] ,
    \mem1_dout_a[3] ,
    \mem1_dout_a[2] ,
    \mem1_dout_a[1] ,
    \mem1_dout_a[0] }),
    .wmask0({\mem1_mask_b[3] ,
    \mem1_mask_b[2] ,
    \mem1_mask_b[1] ,
    \mem1_mask_b[0] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 u_sram2_2kb (.csb0(mem2_cen_b),
    .csb1(mem2_cen_a),
    .web0(mem2_web_b),
    .clk0(mem2_clk_b),
    .clk1(mem2_clk_a),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\mem2_addr_b[10] ,
    \mem2_addr_b[9] ,
    \mem2_addr_b[8] ,
    \mem2_addr_b[7] ,
    \mem2_addr_b[6] ,
    \mem2_addr_b[5] ,
    \mem2_addr_b[4] ,
    \mem2_addr_b[3] ,
    \mem2_addr_b[2] }),
    .addr1({\mem2_addr_a[10] ,
    \mem2_addr_a[9] ,
    \mem2_addr_a[8] ,
    \mem2_addr_a[7] ,
    \mem2_addr_a[6] ,
    \mem2_addr_a[5] ,
    \mem2_addr_a[4] ,
    \mem2_addr_a[3] ,
    \mem2_addr_a[2] }),
    .din0({\mem2_din_b[31] ,
    \mem2_din_b[30] ,
    \mem2_din_b[29] ,
    \mem2_din_b[28] ,
    \mem2_din_b[27] ,
    \mem2_din_b[26] ,
    \mem2_din_b[25] ,
    \mem2_din_b[24] ,
    \mem2_din_b[23] ,
    \mem2_din_b[22] ,
    \mem2_din_b[21] ,
    \mem2_din_b[20] ,
    \mem2_din_b[19] ,
    \mem2_din_b[18] ,
    \mem2_din_b[17] ,
    \mem2_din_b[16] ,
    \mem2_din_b[15] ,
    \mem2_din_b[14] ,
    \mem2_din_b[13] ,
    \mem2_din_b[12] ,
    \mem2_din_b[11] ,
    \mem2_din_b[10] ,
    \mem2_din_b[9] ,
    \mem2_din_b[8] ,
    \mem2_din_b[7] ,
    \mem2_din_b[6] ,
    \mem2_din_b[5] ,
    \mem2_din_b[4] ,
    \mem2_din_b[3] ,
    \mem2_din_b[2] ,
    \mem2_din_b[1] ,
    \mem2_din_b[0] }),
    .dout0({_NC33,
    _NC34,
    _NC35,
    _NC36,
    _NC37,
    _NC38,
    _NC39,
    _NC40,
    _NC41,
    _NC42,
    _NC43,
    _NC44,
    _NC45,
    _NC46,
    _NC47,
    _NC48,
    _NC49,
    _NC50,
    _NC51,
    _NC52,
    _NC53,
    _NC54,
    _NC55,
    _NC56,
    _NC57,
    _NC58,
    _NC59,
    _NC60,
    _NC61,
    _NC62,
    _NC63,
    _NC64}),
    .dout1({\mem2_dout_a[31] ,
    \mem2_dout_a[30] ,
    \mem2_dout_a[29] ,
    \mem2_dout_a[28] ,
    \mem2_dout_a[27] ,
    \mem2_dout_a[26] ,
    \mem2_dout_a[25] ,
    \mem2_dout_a[24] ,
    \mem2_dout_a[23] ,
    \mem2_dout_a[22] ,
    \mem2_dout_a[21] ,
    \mem2_dout_a[20] ,
    \mem2_dout_a[19] ,
    \mem2_dout_a[18] ,
    \mem2_dout_a[17] ,
    \mem2_dout_a[16] ,
    \mem2_dout_a[15] ,
    \mem2_dout_a[14] ,
    \mem2_dout_a[13] ,
    \mem2_dout_a[12] ,
    \mem2_dout_a[11] ,
    \mem2_dout_a[10] ,
    \mem2_dout_a[9] ,
    \mem2_dout_a[8] ,
    \mem2_dout_a[7] ,
    \mem2_dout_a[6] ,
    \mem2_dout_a[5] ,
    \mem2_dout_a[4] ,
    \mem2_dout_a[3] ,
    \mem2_dout_a[2] ,
    \mem2_dout_a[1] ,
    \mem2_dout_a[0] }),
    .wmask0({\mem2_mask_b[3] ,
    \mem2_mask_b[2] ,
    \mem2_mask_b[1] ,
    \mem2_mask_b[0] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 u_sram3_2kb (.csb0(mem3_cen_b),
    .csb1(mem3_cen_a),
    .web0(mem3_web_b),
    .clk0(mem3_clk_b),
    .clk1(mem3_clk_a),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\mem3_addr_b[10] ,
    \mem3_addr_b[9] ,
    \mem3_addr_b[8] ,
    \mem3_addr_b[7] ,
    \mem3_addr_b[6] ,
    \mem3_addr_b[5] ,
    \mem3_addr_b[4] ,
    \mem3_addr_b[3] ,
    \mem3_addr_b[2] }),
    .addr1({\mem3_addr_a[10] ,
    \mem3_addr_a[9] ,
    \mem3_addr_a[8] ,
    \mem3_addr_a[7] ,
    \mem3_addr_a[6] ,
    \mem3_addr_a[5] ,
    \mem3_addr_a[4] ,
    \mem3_addr_a[3] ,
    \mem3_addr_a[2] }),
    .din0({\mem3_din_b[31] ,
    \mem3_din_b[30] ,
    \mem3_din_b[29] ,
    \mem3_din_b[28] ,
    \mem3_din_b[27] ,
    \mem3_din_b[26] ,
    \mem3_din_b[25] ,
    \mem3_din_b[24] ,
    \mem3_din_b[23] ,
    \mem3_din_b[22] ,
    \mem3_din_b[21] ,
    \mem3_din_b[20] ,
    \mem3_din_b[19] ,
    \mem3_din_b[18] ,
    \mem3_din_b[17] ,
    \mem3_din_b[16] ,
    \mem3_din_b[15] ,
    \mem3_din_b[14] ,
    \mem3_din_b[13] ,
    \mem3_din_b[12] ,
    \mem3_din_b[11] ,
    \mem3_din_b[10] ,
    \mem3_din_b[9] ,
    \mem3_din_b[8] ,
    \mem3_din_b[7] ,
    \mem3_din_b[6] ,
    \mem3_din_b[5] ,
    \mem3_din_b[4] ,
    \mem3_din_b[3] ,
    \mem3_din_b[2] ,
    \mem3_din_b[1] ,
    \mem3_din_b[0] }),
    .dout0({_NC65,
    _NC66,
    _NC67,
    _NC68,
    _NC69,
    _NC70,
    _NC71,
    _NC72,
    _NC73,
    _NC74,
    _NC75,
    _NC76,
    _NC77,
    _NC78,
    _NC79,
    _NC80,
    _NC81,
    _NC82,
    _NC83,
    _NC84,
    _NC85,
    _NC86,
    _NC87,
    _NC88,
    _NC89,
    _NC90,
    _NC91,
    _NC92,
    _NC93,
    _NC94,
    _NC95,
    _NC96}),
    .dout1({\mem3_dout_a[31] ,
    \mem3_dout_a[30] ,
    \mem3_dout_a[29] ,
    \mem3_dout_a[28] ,
    \mem3_dout_a[27] ,
    \mem3_dout_a[26] ,
    \mem3_dout_a[25] ,
    \mem3_dout_a[24] ,
    \mem3_dout_a[23] ,
    \mem3_dout_a[22] ,
    \mem3_dout_a[21] ,
    \mem3_dout_a[20] ,
    \mem3_dout_a[19] ,
    \mem3_dout_a[18] ,
    \mem3_dout_a[17] ,
    \mem3_dout_a[16] ,
    \mem3_dout_a[15] ,
    \mem3_dout_a[14] ,
    \mem3_dout_a[13] ,
    \mem3_dout_a[12] ,
    \mem3_dout_a[11] ,
    \mem3_dout_a[10] ,
    \mem3_dout_a[9] ,
    \mem3_dout_a[8] ,
    \mem3_dout_a[7] ,
    \mem3_dout_a[6] ,
    \mem3_dout_a[5] ,
    \mem3_dout_a[4] ,
    \mem3_dout_a[3] ,
    \mem3_dout_a[2] ,
    \mem3_dout_a[1] ,
    \mem3_dout_a[0] }),
    .wmask0({\mem3_mask_b[3] ,
    \mem3_mask_b[2] ,
    \mem3_mask_b[1] ,
    \mem3_mask_b[0] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 u_sram4_2kb (.csb0(mem4_cen_b),
    .csb1(mem4_cen_a),
    .web0(mem4_web_b),
    .clk0(mem4_clk_b),
    .clk1(mem4_clk_a),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\mem4_addr_b[10] ,
    \mem4_addr_b[9] ,
    \mem4_addr_b[8] ,
    \mem4_addr_b[7] ,
    \mem4_addr_b[6] ,
    \mem4_addr_b[5] ,
    \mem4_addr_b[4] ,
    \mem4_addr_b[3] ,
    \mem4_addr_b[2] }),
    .addr1({\mem4_addr_a[10] ,
    \mem4_addr_a[9] ,
    \mem4_addr_a[8] ,
    \mem4_addr_a[7] ,
    \mem4_addr_a[6] ,
    \mem4_addr_a[5] ,
    \mem4_addr_a[4] ,
    \mem4_addr_a[3] ,
    \mem4_addr_a[2] }),
    .din0({\mem4_din_b[31] ,
    \mem4_din_b[30] ,
    \mem4_din_b[29] ,
    \mem4_din_b[28] ,
    \mem4_din_b[27] ,
    \mem4_din_b[26] ,
    \mem4_din_b[25] ,
    \mem4_din_b[24] ,
    \mem4_din_b[23] ,
    \mem4_din_b[22] ,
    \mem4_din_b[21] ,
    \mem4_din_b[20] ,
    \mem4_din_b[19] ,
    \mem4_din_b[18] ,
    \mem4_din_b[17] ,
    \mem4_din_b[16] ,
    \mem4_din_b[15] ,
    \mem4_din_b[14] ,
    \mem4_din_b[13] ,
    \mem4_din_b[12] ,
    \mem4_din_b[11] ,
    \mem4_din_b[10] ,
    \mem4_din_b[9] ,
    \mem4_din_b[8] ,
    \mem4_din_b[7] ,
    \mem4_din_b[6] ,
    \mem4_din_b[5] ,
    \mem4_din_b[4] ,
    \mem4_din_b[3] ,
    \mem4_din_b[2] ,
    \mem4_din_b[1] ,
    \mem4_din_b[0] }),
    .dout0({_NC97,
    _NC98,
    _NC99,
    _NC100,
    _NC101,
    _NC102,
    _NC103,
    _NC104,
    _NC105,
    _NC106,
    _NC107,
    _NC108,
    _NC109,
    _NC110,
    _NC111,
    _NC112,
    _NC113,
    _NC114,
    _NC115,
    _NC116,
    _NC117,
    _NC118,
    _NC119,
    _NC120,
    _NC121,
    _NC122,
    _NC123,
    _NC124,
    _NC125,
    _NC126,
    _NC127,
    _NC128}),
    .dout1({\mem4_dout_a[31] ,
    \mem4_dout_a[30] ,
    \mem4_dout_a[29] ,
    \mem4_dout_a[28] ,
    \mem4_dout_a[27] ,
    \mem4_dout_a[26] ,
    \mem4_dout_a[25] ,
    \mem4_dout_a[24] ,
    \mem4_dout_a[23] ,
    \mem4_dout_a[22] ,
    \mem4_dout_a[21] ,
    \mem4_dout_a[20] ,
    \mem4_dout_a[19] ,
    \mem4_dout_a[18] ,
    \mem4_dout_a[17] ,
    \mem4_dout_a[16] ,
    \mem4_dout_a[15] ,
    \mem4_dout_a[14] ,
    \mem4_dout_a[13] ,
    \mem4_dout_a[12] ,
    \mem4_dout_a[11] ,
    \mem4_dout_a[10] ,
    \mem4_dout_a[9] ,
    \mem4_dout_a[8] ,
    \mem4_dout_a[7] ,
    \mem4_dout_a[6] ,
    \mem4_dout_a[5] ,
    \mem4_dout_a[4] ,
    \mem4_dout_a[3] ,
    \mem4_dout_a[2] ,
    \mem4_dout_a[1] ,
    \mem4_dout_a[0] }),
    .wmask0({\mem4_mask_b[3] ,
    \mem4_mask_b[2] ,
    \mem4_mask_b[1] ,
    \mem4_mask_b[0] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 u_sram_2kb (.csb0(sram_csb0),
    .csb1(sram_csb1),
    .web0(sram_web0),
    .clk0(cpu_clk),
    .clk1(cpu_clk),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\sram_addr0[8] ,
    \sram_addr0[7] ,
    \sram_addr0[6] ,
    \sram_addr0[5] ,
    \sram_addr0[4] ,
    \sram_addr0[3] ,
    \sram_addr0[2] ,
    \sram_addr0[1] ,
    \sram_addr0[0] }),
    .addr1({\sram_addr1[8] ,
    \sram_addr1[7] ,
    \sram_addr1[6] ,
    \sram_addr1[5] ,
    \sram_addr1[4] ,
    \sram_addr1[3] ,
    \sram_addr1[2] ,
    \sram_addr1[1] ,
    \sram_addr1[0] }),
    .din0({\sram_din0[31] ,
    \sram_din0[30] ,
    \sram_din0[29] ,
    \sram_din0[28] ,
    \sram_din0[27] ,
    \sram_din0[26] ,
    \sram_din0[25] ,
    \sram_din0[24] ,
    \sram_din0[23] ,
    \sram_din0[22] ,
    \sram_din0[21] ,
    \sram_din0[20] ,
    \sram_din0[19] ,
    \sram_din0[18] ,
    \sram_din0[17] ,
    \sram_din0[16] ,
    \sram_din0[15] ,
    \sram_din0[14] ,
    \sram_din0[13] ,
    \sram_din0[12] ,
    \sram_din0[11] ,
    \sram_din0[10] ,
    \sram_din0[9] ,
    \sram_din0[8] ,
    \sram_din0[7] ,
    \sram_din0[6] ,
    \sram_din0[5] ,
    \sram_din0[4] ,
    \sram_din0[3] ,
    \sram_din0[2] ,
    \sram_din0[1] ,
    \sram_din0[0] }),
    .dout0({\sram_dout0[31] ,
    \sram_dout0[30] ,
    \sram_dout0[29] ,
    \sram_dout0[28] ,
    \sram_dout0[27] ,
    \sram_dout0[26] ,
    \sram_dout0[25] ,
    \sram_dout0[24] ,
    \sram_dout0[23] ,
    \sram_dout0[22] ,
    \sram_dout0[21] ,
    \sram_dout0[20] ,
    \sram_dout0[19] ,
    \sram_dout0[18] ,
    \sram_dout0[17] ,
    \sram_dout0[16] ,
    \sram_dout0[15] ,
    \sram_dout0[14] ,
    \sram_dout0[13] ,
    \sram_dout0[12] ,
    \sram_dout0[11] ,
    \sram_dout0[10] ,
    \sram_dout0[9] ,
    \sram_dout0[8] ,
    \sram_dout0[7] ,
    \sram_dout0[6] ,
    \sram_dout0[5] ,
    \sram_dout0[4] ,
    \sram_dout0[3] ,
    \sram_dout0[2] ,
    \sram_dout0[1] ,
    \sram_dout0[0] }),
    .dout1({\sram_dout1[31] ,
    \sram_dout1[30] ,
    \sram_dout1[29] ,
    \sram_dout1[28] ,
    \sram_dout1[27] ,
    \sram_dout1[26] ,
    \sram_dout1[25] ,
    \sram_dout1[24] ,
    \sram_dout1[23] ,
    \sram_dout1[22] ,
    \sram_dout1[21] ,
    \sram_dout1[20] ,
    \sram_dout1[19] ,
    \sram_dout1[18] ,
    \sram_dout1[17] ,
    \sram_dout1[16] ,
    \sram_dout1[15] ,
    \sram_dout1[14] ,
    \sram_dout1[13] ,
    \sram_dout1[12] ,
    \sram_dout1[11] ,
    \sram_dout1[10] ,
    \sram_dout1[9] ,
    \sram_dout1[8] ,
    \sram_dout1[7] ,
    \sram_dout1[6] ,
    \sram_dout1[5] ,
    \sram_dout1[4] ,
    \sram_dout1[3] ,
    \sram_dout1[2] ,
    \sram_dout1[1] ,
    \sram_dout1[0] }),
    .wmask0({\sram_wmask0[3] ,
    \sram_wmask0[2] ,
    \sram_wmask0[1] ,
    \sram_wmask0[0] }));
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
 wb_host u_wb_host (.bist_rst_n(bist_rst_n),
    .cpu_clk(cpu_clk),
    .cpu_rst_n(cpu_rst_n),
    .i2cm_rst_n(i2c_rst_n),
    .qspim_rst_n(qspim_rst_n),
    .rtc_clk(rtc_clk),
    .sspim_rst_n(sspim_rst_n),
    .uart_rst_n(uart_rst_n),
    .usb_clk(usb_clk),
    .usb_rst_n(usb_rst_n),
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
    .cfg_clk_ctrl2({\boot_remap[3] ,
    \boot_remap[2] ,
    \boot_remap[1] ,
    \boot_remap[0] ,
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
