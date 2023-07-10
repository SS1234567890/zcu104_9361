module top 
(

  input               rx_clk_in_p   ,
  input               rx_clk_in_n   ,
  input               rx_frame_in_p ,
  input               rx_frame_in_n ,
  input   [ 5:0]      rx_data_in_p  ,
  input   [ 5:0]      rx_data_in_n  ,

  output              tx_clk_out_p  ,
  output              tx_clk_out_n  ,
  output              tx_frame_out_p,
  output              tx_frame_out_n,
  output  [ 5:0]      tx_data_out_p ,
  output  [ 5:0]      tx_data_out_n ,
  
  output  [7:0]       adc9361_ctr_o ,
  output  [3:0]       adc9361_ctr_i , 
  output              adc9361_enable,
  output              adc9361_txnrx ,
  output              adc9361_rst   ,
  output              adc9361_en_agc,
  output              adc9361_sync_in,

  inout               adc9361_spi_clk ,
  inout               adc9361_spi_miso,
  inout               adc9361_spi_mosi,     
  inout               adc9361_spi_ss    
);

assign adc9361_ctr_o = 'd0 ;
assign adc9361_ctr_i = 'd0 ;
assign adc9361_rst   = 'd1 ;
assign adc9361_enable = 'd1 ;
assign adc9361_en_agc ='d0 ;
assign adc9361_txnrx = 'd1 ;

adc_top adc_top 
(
  .rx_clk_in_p     (rx_clk_in_p       ),
  .rx_clk_in_n     (rx_clk_in_n       ),
  .rx_frame_in_p   (rx_frame_in_p     ),
  .rx_frame_in_n   (rx_frame_in_n     ),
  .rx_data_in_p    (rx_data_in_p      ),
  .rx_data_in_n    (rx_data_in_n      ),

  .tx_clk_out_p    (tx_clk_out_p      ),
  .tx_clk_out_n    (tx_clk_out_n      ),
  .tx_frame_out_p  (tx_frame_out_p    ),
  .tx_frame_out_n  (tx_frame_out_n    ),
  .tx_data_out_p   (tx_data_out_p     ),
  .tx_data_out_n   (tx_data_out_n     )
);

system_wrapper system_wrapper
(
  .S_AXIS_S2MM_tdata    ('d0                  ),
  .S_AXIS_S2MM_tkeep    ('hf                  ),
  .S_AXIS_S2MM_tlast    ('d0                  ),
  .S_AXIS_S2MM_tready   (                     ),
  .S_AXIS_S2MM_tvalid   ('d1                  ),
  .adc9361_spi_io0_io   (adc9361_spi_mosi     ),
  .adc9361_spi_io1_io   (adc9361_spi_miso     ),
  .adc9361_spi_sck_io   (adc9361_spi_clk      ),
  .adc9361_spi_ss_io    (adc9361_spi_ss       )
);

endmodule