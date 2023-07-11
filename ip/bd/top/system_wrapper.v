//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sun Jul  9 21:40:49 2023
//Host        : DESKTOP-0AT5U1B running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (S_AXIS_S2MM_tdata,
    S_AXIS_S2MM_tkeep,
    S_AXIS_S2MM_tlast,
    S_AXIS_S2MM_tready,
    S_AXIS_S2MM_tvalid,
    adc9361_spi_io0_io,
    adc9361_spi_io1_io,
    adc9361_spi_sck_io,
    adc9361_spi_ss_io);
  input [31:0]S_AXIS_S2MM_tdata;
  input [3:0]S_AXIS_S2MM_tkeep;
  input S_AXIS_S2MM_tlast;
  output S_AXIS_S2MM_tready;
  input S_AXIS_S2MM_tvalid;
  inout adc9361_spi_io0_io;
  inout adc9361_spi_io1_io;
  inout adc9361_spi_sck_io;
  inout adc9361_spi_ss_io;

  wire [31:0]S_AXIS_S2MM_tdata;
  wire [3:0]S_AXIS_S2MM_tkeep;
  wire S_AXIS_S2MM_tlast;
  wire S_AXIS_S2MM_tready;
  wire S_AXIS_S2MM_tvalid;
  wire adc9361_spi_io0_i;
  wire adc9361_spi_io0_io;
  wire adc9361_spi_io0_o;
  wire adc9361_spi_io0_t;
  wire adc9361_spi_io1_i;
  wire adc9361_spi_io1_io;
  wire adc9361_spi_io1_o;
  wire adc9361_spi_io1_t;
  wire adc9361_spi_sck_i;
  wire adc9361_spi_sck_io;
  wire adc9361_spi_sck_o;
  wire adc9361_spi_sck_t;
  wire adc9361_spi_ss_i;
  wire adc9361_spi_ss_io;
  wire adc9361_spi_ss_o;
  wire adc9361_spi_ss_t;

  IOBUF adc9361_spi_io0_iobuf
       (.I(adc9361_spi_io0_o),
        .IO(adc9361_spi_io0_io),
        .O(adc9361_spi_io0_i),
        .T(adc9361_spi_io0_t));
  IOBUF adc9361_spi_io1_iobuf
       (.I(adc9361_spi_io1_o),
        .IO(adc9361_spi_io1_io),
        .O(adc9361_spi_io1_i),
        .T(adc9361_spi_io1_t));
  IOBUF adc9361_spi_sck_iobuf
       (.I(adc9361_spi_sck_o),
        .IO(adc9361_spi_sck_io),
        .O(adc9361_spi_sck_i),
        .T(adc9361_spi_sck_t));
  IOBUF adc9361_spi_ss_iobuf
       (.I(adc9361_spi_ss_o),
        .IO(adc9361_spi_ss_io),
        .O(adc9361_spi_ss_i),
        .T(adc9361_spi_ss_t));
  system system_i
       (.S_AXIS_S2MM_tdata(S_AXIS_S2MM_tdata),
        .S_AXIS_S2MM_tkeep(S_AXIS_S2MM_tkeep),
        .S_AXIS_S2MM_tlast(S_AXIS_S2MM_tlast),
        .S_AXIS_S2MM_tready(S_AXIS_S2MM_tready),
        .S_AXIS_S2MM_tvalid(S_AXIS_S2MM_tvalid),
        .adc9361_spi_io0_i(adc9361_spi_io0_i),
        .adc9361_spi_io0_o(adc9361_spi_io0_o),
        .adc9361_spi_io0_t(adc9361_spi_io0_t),
        .adc9361_spi_io1_i(adc9361_spi_io1_i),
        .adc9361_spi_io1_o(adc9361_spi_io1_o),
        .adc9361_spi_io1_t(adc9361_spi_io1_t),
        .adc9361_spi_sck_i(adc9361_spi_sck_i),
        .adc9361_spi_sck_o(adc9361_spi_sck_o),
        .adc9361_spi_sck_t(adc9361_spi_sck_t),
        .adc9361_spi_ss_i(adc9361_spi_ss_i),
        .adc9361_spi_ss_o(adc9361_spi_ss_o),
        .adc9361_spi_ss_t(adc9361_spi_ss_t));
endmodule
