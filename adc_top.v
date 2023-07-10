module adc_top
(
    input               rx_clk_in_p     ,
    input               rx_clk_in_n     ,
    input               rx_frame_in_p   ,
    input               rx_frame_in_n   ,
    input   [ 5:0]      rx_data_in_p    ,
    input   [ 5:0]      rx_data_in_n    ,

    output              tx_clk_out_p    ,
    output              tx_clk_out_n    ,
    output              tx_frame_out_p  ,
    output              tx_frame_out_n  ,
    output  [ 5:0]      tx_data_out_p   ,
    output  [ 5:0]      tx_data_out_n   
);

axi_ad9361_lvds_if axi_ad9361_lvds_if 
(
    .rx_clk_in_p    (rx_clk_in_p        ),
    .rx_clk_in_n    (rx_clk_in_n        ),
    .rx_frame_in_p  (rx_frame_in_p      ),
    .rx_frame_in_n  (rx_frame_in_n      ),
    .rx_data_in_p   (rx_data_in_p       ),
    .rx_data_in_n   (rx_data_in_n       ),

    .tx_clk_out_p   (tx_clk_out_p       ),
    .tx_clk_out_n   (tx_clk_out_n       ),
    .tx_frame_out_p (tx_frame_out_p     ),
    .tx_frame_out_n (tx_frame_out_n     ),
    .tx_data_out_p  (tx_data_out_p      ),
    .tx_data_out_n  (tx_data_out_n      ),

    .adc_valid      (adc_valid          ),
    .adc_data       (adc_data           ),
    .adc_status     (adc_status         ),
    .adc_r1_mode    (adc_r1_mode        ),
    .adc_ddr_edgesel(adc_ddr_edgesel    ),

    .dac_valid      (dac_valid          ),
    .dac_data       (dac_data           ),
    .dac_clksel     (dac_clksel         ),
    .dac_r1_mode    (dac_r1_mode        )
);

endmodule