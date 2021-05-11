--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Papilio_SOC_Base_Papilio_Pro_translate.vhd
-- /___/   /\     Timestamp: Thu Mar 25 08:55:12 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm Papilio_SOC_Base_Papilio_Pro -w -dir netgen/translate -ofmt vhdl -sim I2CV2.ngd Papilio_SOC_Base_Papilio_Pro_translate.vhd 
-- Device	: 6slx9tqg144-2
-- Input file	: I2CV2.ngd
-- Output file	: /home/ise/DeltMedVm/Projekt/I2CV2/circuit/DUO_LX9/netgen/translate/Papilio_SOC_Base_Papilio_Pro_translate.vhd
-- # of Entities	: 1
-- Design Name	: I2CV2
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity Papilio_SOC_Base_Papilio_Pro is
  port (
    clk : in STD_LOGIC := 'X'; 
    trigger : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    SCL : out STD_LOGIC; 
    doneOut : out STD_LOGIC; 
    SDA : inout STD_LOGIC; 
    clk_out : out STD_LOGIC; 
    error_out : out STD_LOGIC; 
    dataOut : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    statusCounterOut : out STD_LOGIC_VECTOR ( 10 downto 0 ) 
  );
end Papilio_SOC_Base_Papilio_Pro;

architecture Structure of Papilio_SOC_Base_Papilio_Pro is
  signal clk_out_OBUF_BUFG_7 : STD_LOGIC; 
  signal trigger_BUFGP : STD_LOGIC; 
  signal reset_IBUF_9 : STD_LOGIC; 
  signal bufClock_BUFG_42 : STD_LOGIC; 
  signal isTriggered : STD_LOGIC; 
  signal sendStart0_done_outBuffer_44 : STD_LOGIC; 
  signal sendStart1_done_outBuffer_45 : STD_LOGIC; 
  signal sendByte0_data_Out_46 : STD_LOGIC; 
  signal sendByte0_done_outBuffer_47 : STD_LOGIC; 
  signal sendByte1_data_Out_48 : STD_LOGIC; 
  signal sendByte1_done_outBuffer_49 : STD_LOGIC; 
  signal sendByte2_data_Out_50 : STD_LOGIC; 
  signal sendByte2_done_outBuffer_51 : STD_LOGIC; 
  signal recieveAcknowledge0_clk_out_52 : STD_LOGIC; 
  signal recieveAcknowledge0_done_outBuffer_53 : STD_LOGIC; 
  signal recieveAcknowledge0_error_54 : STD_LOGIC; 
  signal recieveAcknowledge1_clk_out_55 : STD_LOGIC; 
  signal recieveAcknowledge1_done_outBuffer_56 : STD_LOGIC; 
  signal recieveAcknowledge1_error_57 : STD_LOGIC; 
  signal recieveAcknowledge2_clk_out_58 : STD_LOGIC; 
  signal recieveAcknowledge2_done_outBuffer_59 : STD_LOGIC; 
  signal recieveAcknowledge2_error_60 : STD_LOGIC; 
  signal Inst_I2C_sendNotAckStop_SDA_61 : STD_LOGIC; 
  signal Inst_I2C_sendNotAckStop_SCL_62 : STD_LOGIC; 
  signal Inst_I2C_sendNotAckStop_doneOutBuffer_63 : STD_LOGIC; 
  signal recieveByte0_done_72 : STD_LOGIC; 
  signal recieveByte0_SCL_23_73 : STD_LOGIC; 
  signal isTriggered_isTriggered_AND_112_o : STD_LOGIC; 
  signal isTriggered_isTriggered_AND_113_o : STD_LOGIC; 
  signal SCL_OBUF_87 : STD_LOGIC; 
  signal readingFromSDA_88 : STD_LOGIC; 
  signal i2cByte1TriggerSendBytes_9_89 : STD_LOGIC; 
  signal i2cByte1TriggerSendBytes_8_90 : STD_LOGIC; 
  signal i2cByte1TriggerSendBytes_7_91 : STD_LOGIC; 
  signal i2cByte1TriggerSendBytes_6_92 : STD_LOGIC; 
  signal i2cByte1TriggerSendBytes_5_93 : STD_LOGIC; 
  signal i2cByte1TriggerSendBytes_4_94 : STD_LOGIC; 
  signal i2cByte1TriggerSendBytes_3_95 : STD_LOGIC; 
  signal i2cByte1TriggerSendBytes_2_96 : STD_LOGIC; 
  signal i2cByte1TriggerSendBytes_1_97 : STD_LOGIC; 
  signal i2cByte1TriggerSendBytes_0_98 : STD_LOGIC; 
  signal byteToSend_5_100 : STD_LOGIC; 
  signal byteToSend_0_101 : STD_LOGIC; 
  signal clk_outSendBytes_10_102 : STD_LOGIC; 
  signal error_out_OBUF_103 : STD_LOGIC; 
  signal SDA_IOBUF : STD_LOGIC; 
  signal doneOutBuffer : STD_LOGIC; 
  signal PWR_4_o_statusCounter_10_equal_11_o : STD_LOGIC; 
  signal Q_n0172_108 : STD_LOGIC; 
  signal GND_4_o_byteToSend_5_Select_51_o : STD_LOGIC; 
  signal GND_4_o_byteToSend_0_Select_61_o : STD_LOGIC; 
  signal n0013 : STD_LOGIC; 
  signal GND_4_o_GND_4_o_Select_23_o : STD_LOGIC; 
  signal GND_4_o_slowDownClock_31_LessThan_66_o_inv : STD_LOGIC; 
  signal Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi_178 : STD_LOGIC; 
  signal Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_0_Q_179 : STD_LOGIC; 
  signal Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_0_Q_180 : STD_LOGIC; 
  signal Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi1_181 : STD_LOGIC; 
  signal Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_1_Q_182 : STD_LOGIC; 
  signal Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_1_Q_183 : STD_LOGIC; 
  signal Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_2_Q_184 : STD_LOGIC; 
  signal Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_2_Q_185 : STD_LOGIC; 
  signal Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi2_186 : STD_LOGIC; 
  signal Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_3_Q_187 : STD_LOGIC; 
  signal Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_3_Q_188 : STD_LOGIC; 
  signal Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi3_189 : STD_LOGIC; 
  signal Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_4_Q_190 : STD_LOGIC; 
  signal out5_191 : STD_LOGIC; 
  signal out6 : STD_LOGIC; 
  signal out8 : STD_LOGIC; 
  signal out3 : STD_LOGIC; 
  signal sendStart1_n00291 : STD_LOGIC; 
  signal sendStart1_triggerBuf_196 : STD_LOGIC; 
  signal sendStart0_n00291 : STD_LOGIC; 
  signal sendStart0_triggerBuf_198 : STD_LOGIC; 
  signal sendByte2_n0108_inv : STD_LOGIC; 
  signal sendByte2_n0098_inv : STD_LOGIC; 
  signal sendByte2_bitCount_2_byte_in_7_Mux_0_o : STD_LOGIC; 
  signal sendByte2_n0061 : STD_LOGIC; 
  signal sendByte2_blahblah_207 : STD_LOGIC; 
  signal sendByte2_enableClock_210 : STD_LOGIC; 
  signal sendByte2_triggerBuf_211 : STD_LOGIC; 
  signal sendByte1_n0108_inv : STD_LOGIC; 
  signal sendByte1_n0098_inv : STD_LOGIC; 
  signal sendByte1_bitCount_2_byte_in_7_Mux_0_o : STD_LOGIC; 
  signal sendByte1_n0061 : STD_LOGIC; 
  signal sendByte1_blahblah_220 : STD_LOGIC; 
  signal sendByte1_enableClock_223 : STD_LOGIC; 
  signal sendByte1_triggerBuf_224 : STD_LOGIC; 
  signal sendByte0_n0108_inv : STD_LOGIC; 
  signal sendByte0_clk_in_inv : STD_LOGIC; 
  signal sendByte0_n0098_inv : STD_LOGIC; 
  signal sendByte0_bitCount_2_byte_in_7_Mux_0_o : STD_LOGIC; 
  signal sendByte0_n0061 : STD_LOGIC; 
  signal sendByte0_blahblah_234 : STD_LOGIC; 
  signal sendByte0_enableClock_237 : STD_LOGIC; 
  signal sendByte0_triggerBuf_238 : STD_LOGIC; 
  signal recieveAcknowledge2_n0053 : STD_LOGIC; 
  signal recieveAcknowledge2_triggerBuffer_240 : STD_LOGIC; 
  signal recieveAcknowledge2_isListening_241 : STD_LOGIC; 
  signal recieveAcknowledge1_n0067 : STD_LOGIC; 
  signal recieveAcknowledge1_n0053 : STD_LOGIC; 
  signal recieveAcknowledge1_triggerBuffer_trigger_AND_15_o : STD_LOGIC; 
  signal recieveAcknowledge1_triggerBuffer_245 : STD_LOGIC; 
  signal recieveAcknowledge1_isListening_246 : STD_LOGIC; 
  signal recieveAcknowledge0_n0067 : STD_LOGIC; 
  signal recieveAcknowledge0_n0053 : STD_LOGIC; 
  signal recieveAcknowledge0_triggerBuffer_trigger_AND_15_o : STD_LOGIC; 
  signal recieveAcknowledge0_triggerBuffer_250 : STD_LOGIC; 
  signal recieveAcknowledge0_isListening_251 : STD_LOGIC; 
  signal Inst_I2C_sendNotAckStop_n0105_inv2 : STD_LOGIC; 
  signal Inst_I2C_sendNotAckStop_n0050 : STD_LOGIC; 
  signal Inst_I2C_sendNotAckStop_triggerBuf_260 : STD_LOGIC; 
  signal recieveByte0_bitCount_0_261 : STD_LOGIC; 
  signal recieveByte0_bitCount_3_GND_8_o_mux_5_OUT_0_Q : STD_LOGIC; 
  signal recieveByte0_bitCount_3_GND_8_o_mux_5_OUT_1_Q : STD_LOGIC; 
  signal recieveByte0_bitCount_3_GND_8_o_mux_5_OUT_2_Q : STD_LOGIC; 
  signal recieveByte0_bitCount_3_GND_8_o_mux_5_OUT_3_Q : STD_LOGIC; 
  signal recieveByte0_GND_8_o_done_AND_36_o : STD_LOGIC; 
  signal recieveByte0_byte_rec_0_SDA_MUX_64_o : STD_LOGIC; 
  signal recieveByte0_byte_rec_1_SDA_MUX_63_o : STD_LOGIC; 
  signal recieveByte0_byte_rec_2_SDA_MUX_62_o : STD_LOGIC; 
  signal recieveByte0_byte_rec_3_SDA_MUX_61_o : STD_LOGIC; 
  signal recieveByte0_byte_rec_4_SDA_MUX_60_o : STD_LOGIC; 
  signal recieveByte0_byte_rec_5_SDA_MUX_59_o : STD_LOGIC; 
  signal recieveByte0_byte_rec_6_SDA_MUX_58_o : STD_LOGIC; 
  signal recieveByte0_byte_rec_7_SDA_MUX_57_o : STD_LOGIC; 
  signal recieveByte0_bitCount_1_275 : STD_LOGIC; 
  signal recieveByte0_bitCount_2_276 : STD_LOGIC; 
  signal recieveByte0_bitCount_3_277 : STD_LOGIC; 
  signal SDASendBytes_0_SDASendBytes_10_OR_69_o1_278 : STD_LOGIC; 
  signal SDASendBytes_0_SDASendBytes_10_OR_69_o2_279 : STD_LOGIC; 
  signal doneOutBuffer2_280 : STD_LOGIC; 
  signal doneOutBuffer3_281 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal Mmux_SCL1 : STD_LOGIC; 
  signal Mmux_SCL11_284 : STD_LOGIC; 
  signal Mmux_SCL12_285 : STD_LOGIC; 
  signal Mmux_SCL13_286 : STD_LOGIC; 
  signal Mmux_SCL14_287 : STD_LOGIC; 
  signal out_288 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal sendStart1_done_outBuffer_glue_set_317 : STD_LOGIC; 
  signal sendStart1_triggerBuf_glue_set_318 : STD_LOGIC; 
  signal sendStart0_done_outBuffer_glue_set_319 : STD_LOGIC; 
  signal sendStart0_triggerBuf_glue_set_320 : STD_LOGIC; 
  signal sendByte2_blahblah_glue_set_321 : STD_LOGIC; 
  signal sendByte2_triggerBuf_glue_set_322 : STD_LOGIC; 
  signal sendByte1_blahblah_glue_set_323 : STD_LOGIC; 
  signal sendByte1_triggerBuf_glue_set_324 : STD_LOGIC; 
  signal sendByte0_blahblah_glue_set_325 : STD_LOGIC; 
  signal sendByte0_triggerBuf_glue_set_326 : STD_LOGIC; 
  signal recieveAcknowledge2_triggerBuffer_glue_set_327 : STD_LOGIC; 
  signal recieveAcknowledge2_done_outBuffer_glue_set_328 : STD_LOGIC; 
  signal recieveAcknowledge2_isListening_glue_set_329 : STD_LOGIC; 
  signal recieveAcknowledge1_triggerBuffer_glue_set_330 : STD_LOGIC; 
  signal recieveAcknowledge1_done_outBuffer_glue_set_331 : STD_LOGIC; 
  signal recieveAcknowledge1_isListening_glue_set_332 : STD_LOGIC; 
  signal recieveAcknowledge0_triggerBuffer_glue_set_333 : STD_LOGIC; 
  signal recieveAcknowledge0_done_outBuffer_glue_set_334 : STD_LOGIC; 
  signal recieveAcknowledge0_isListening_glue_set_335 : STD_LOGIC; 
  signal Inst_I2C_sendNotAckStop_doneOutBuffer_glue_set_336 : STD_LOGIC; 
  signal Inst_I2C_sendNotAckStop_triggerBuf_glue_set_337 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_1_rt_338 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_2_rt_339 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_3_rt_340 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_4_rt_341 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_5_rt_342 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_6_rt_343 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_7_rt_344 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_8_rt_345 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_9_rt_346 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_10_rt_347 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_11_rt_348 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_12_rt_349 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_13_rt_350 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_14_rt_351 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_15_rt_352 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_16_rt_353 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_17_rt_354 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_18_rt_355 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_19_rt_356 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_20_rt_357 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_21_rt_358 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_22_rt_359 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_23_rt_360 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_24_rt_361 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_25_rt_362 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_26_rt_363 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_27_rt_364 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_28_rt_365 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_29_rt_366 : STD_LOGIC; 
  signal Mcount_slowDownClock_cy_30_rt_367 : STD_LOGIC; 
  signal Mcount_slowDownClock_xor_31_rt_368 : STD_LOGIC; 
  signal Inst_I2C_sendNotAckStop_SCL_rstpot_369 : STD_LOGIC; 
  signal Inst_I2C_sendNotAckStop_SDA_rstpot_370 : STD_LOGIC; 
  signal sendByte2_done_outBuffer_rstpot_371 : STD_LOGIC; 
  signal sendByte1_done_outBuffer_rstpot_372 : STD_LOGIC; 
  signal sendByte0_done_outBuffer_rstpot_373 : STD_LOGIC; 
  signal bufClock_rstpot_374 : STD_LOGIC; 
  signal sendByte2_data_Out_rstpot_375 : STD_LOGIC; 
  signal sendByte2_enableClock_rstpot_376 : STD_LOGIC; 
  signal sendByte1_data_Out_rstpot_377 : STD_LOGIC; 
  signal sendByte1_enableClock_rstpot_378 : STD_LOGIC; 
  signal sendByte0_data_Out_rstpot_379 : STD_LOGIC; 
  signal sendByte0_enableClock_rstpot_380 : STD_LOGIC; 
  signal recieveAcknowledge2_error_rstpot_381 : STD_LOGIC; 
  signal recieveAcknowledge1_error_rstpot_382 : STD_LOGIC; 
  signal recieveAcknowledge0_error_rstpot_383 : STD_LOGIC; 
  signal recieveAcknowledge2_clk_out_rstpot_384 : STD_LOGIC; 
  signal recieveAcknowledge1_clk_out_rstpot_385 : STD_LOGIC; 
  signal recieveAcknowledge0_clk_out_rstpot_386 : STD_LOGIC; 
  signal recieveByte0_SCL_23_rstpot_387 : STD_LOGIC; 
  signal recieveByte0_done_rstpot_388 : STD_LOGIC; 
  signal isTriggered_LDC_389 : STD_LOGIC; 
  signal isTriggered_C_390 : STD_LOGIC; 
  signal isTriggered_P : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal recieveByte0_byte_rec_0_dpot_395 : STD_LOGIC; 
  signal recieveByte0_byte_rec_1_dpot_396 : STD_LOGIC; 
  signal recieveByte0_byte_rec_2_dpot_397 : STD_LOGIC; 
  signal recieveByte0_byte_rec_3_dpot_398 : STD_LOGIC; 
  signal recieveByte0_byte_rec_4_dpot_399 : STD_LOGIC; 
  signal recieveByte0_byte_rec_5_dpot_400 : STD_LOGIC; 
  signal recieveByte0_byte_rec_6_dpot_401 : STD_LOGIC; 
  signal recieveByte0_byte_rec_7_dpot_402 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal bufClock_405 : STD_LOGIC; 
  signal clk_out_OBUF_406 : STD_LOGIC; 
  signal statusCounter_0_1_407 : STD_LOGIC; 
  signal clk_outSendBytes_10_1_408 : STD_LOGIC; 
  signal trigger_BUFGP_IBUFG_6 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_recieveByte0_bitCount_3_C : STD_LOGIC; 
  signal NlwInverterSignal_recieveByte0_byte_rec_7_C : STD_LOGIC; 
  signal NlwInverterSignal_recieveByte0_byte_rec_6_C : STD_LOGIC; 
  signal NlwInverterSignal_recieveByte0_byte_rec_5_C : STD_LOGIC; 
  signal NlwInverterSignal_recieveByte0_byte_rec_4_C : STD_LOGIC; 
  signal NlwInverterSignal_recieveByte0_byte_rec_3_C : STD_LOGIC; 
  signal NlwInverterSignal_recieveByte0_byte_rec_2_C : STD_LOGIC; 
  signal NlwInverterSignal_recieveByte0_byte_rec_1_C : STD_LOGIC; 
  signal NlwInverterSignal_recieveByte0_byte_rec_0_C : STD_LOGIC; 
  signal NlwInverterSignal_recieveByte0_bitCount_0_C : STD_LOGIC; 
  signal NlwInverterSignal_recieveByte0_bitCount_2_C : STD_LOGIC; 
  signal NlwInverterSignal_recieveByte0_bitCount_1_C : STD_LOGIC; 
  signal NlwInverterSignal_sendStart1_done_outBuffer_C : STD_LOGIC; 
  signal NlwInverterSignal_sendStart1_triggerBuf_C : STD_LOGIC; 
  signal NlwInverterSignal_sendStart0_done_outBuffer_C : STD_LOGIC; 
  signal NlwInverterSignal_sendStart0_triggerBuf_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte2_blahblah_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte2_triggerBuf_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte1_blahblah_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte1_triggerBuf_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte0_blahblah_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte0_triggerBuf_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte2_done_outBuffer_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte1_done_outBuffer_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte0_done_outBuffer_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte2_data_Out_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte2_enableClock_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte1_data_Out_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte1_enableClock_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte0_data_Out_C : STD_LOGIC; 
  signal NlwInverterSignal_sendByte0_enableClock_C : STD_LOGIC; 
  signal slowDownClock : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal recieveByte0_byte_rec : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal statusCounter : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal byteToSend : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Mcount_slowDownClock_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_slowDownClock_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal sendByte2_bitCount : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal sendByte2_Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal sendByte1_bitCount : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal sendByte1_Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal sendByte0_bitCount : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal sendByte0_Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Inst_I2C_sendNotAckStop_stateCounter : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Inst_I2C_sendNotAckStop_Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_VCC : X_ONE
    port map (
      O => isTriggered_P
    );
  XST_GND : X_ZERO
    port map (
      O => byteToSend(7)
    );
  statusCounter_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => doneOutBuffer,
      CE => isTriggered,
      I => byteToSend(7),
      O => statusCounter(0),
      SET => GND,
      RST => GND
    );
  statusCounter_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => doneOutBuffer,
      CE => isTriggered,
      I => statusCounter(0),
      O => statusCounter(1),
      SET => GND,
      RST => GND
    );
  statusCounter_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => doneOutBuffer,
      CE => isTriggered,
      I => statusCounter(1),
      O => statusCounter(2),
      SET => GND,
      RST => GND
    );
  statusCounter_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => doneOutBuffer,
      CE => isTriggered,
      I => statusCounter(2),
      O => statusCounter(3),
      SET => GND,
      RST => GND
    );
  statusCounter_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => doneOutBuffer,
      CE => isTriggered,
      I => statusCounter(3),
      O => statusCounter(4),
      SET => GND,
      RST => GND
    );
  statusCounter_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => doneOutBuffer,
      CE => isTriggered,
      I => statusCounter(4),
      O => statusCounter(5),
      SET => GND,
      RST => GND
    );
  statusCounter_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => doneOutBuffer,
      CE => isTriggered,
      I => statusCounter(5),
      O => statusCounter(6),
      SET => GND,
      RST => GND
    );
  statusCounter_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => doneOutBuffer,
      CE => isTriggered,
      I => statusCounter(6),
      O => statusCounter(7),
      SET => GND,
      RST => GND
    );
  statusCounter_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => doneOutBuffer,
      CE => isTriggered,
      I => statusCounter(7),
      O => statusCounter(8),
      SET => GND,
      RST => GND
    );
  statusCounter_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => doneOutBuffer,
      CE => isTriggered,
      I => statusCounter(8),
      O => statusCounter(9),
      SET => GND,
      RST => GND
    );
  statusCounter_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => doneOutBuffer,
      CE => isTriggered,
      I => statusCounter(9),
      O => statusCounter(10),
      SET => GND,
      RST => GND
    );
  readingFromSDA : X_LATCHE
    generic map(
      INIT => '1'
    )
    port map (
      I => GND_4_o_GND_4_o_Select_23_o,
      CLK => isTriggered,
      GE => Q_n0172_108,
      O => readingFromSDA_88,
      SET => GND,
      RST => GND
    );
  i2cByte1TriggerSendBytes_9 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => statusCounter(9),
      CLK => isTriggered,
      GE => Q_n0172_108,
      O => i2cByte1TriggerSendBytes_9_89,
      SET => GND,
      RST => GND
    );
  i2cByte1TriggerSendBytes_8 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => statusCounter(8),
      CLK => isTriggered,
      GE => Q_n0172_108,
      O => i2cByte1TriggerSendBytes_8_90,
      SET => GND,
      RST => GND
    );
  i2cByte1TriggerSendBytes_7 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => statusCounter(7),
      CLK => isTriggered,
      GE => Q_n0172_108,
      O => i2cByte1TriggerSendBytes_7_91,
      SET => GND,
      RST => GND
    );
  i2cByte1TriggerSendBytes_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => statusCounter(6),
      CLK => isTriggered,
      GE => Q_n0172_108,
      O => i2cByte1TriggerSendBytes_6_92,
      SET => GND,
      RST => GND
    );
  i2cByte1TriggerSendBytes_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => statusCounter(5),
      CLK => isTriggered,
      GE => Q_n0172_108,
      O => i2cByte1TriggerSendBytes_5_93,
      SET => GND,
      RST => GND
    );
  i2cByte1TriggerSendBytes_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => statusCounter(4),
      CLK => isTriggered,
      GE => Q_n0172_108,
      O => i2cByte1TriggerSendBytes_4_94,
      SET => GND,
      RST => GND
    );
  i2cByte1TriggerSendBytes_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => statusCounter(3),
      CLK => isTriggered,
      GE => Q_n0172_108,
      O => i2cByte1TriggerSendBytes_3_95,
      SET => GND,
      RST => GND
    );
  i2cByte1TriggerSendBytes_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => statusCounter(2),
      CLK => isTriggered,
      GE => Q_n0172_108,
      O => i2cByte1TriggerSendBytes_2_96,
      SET => GND,
      RST => GND
    );
  i2cByte1TriggerSendBytes_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => statusCounter(1),
      CLK => isTriggered,
      GE => Q_n0172_108,
      O => i2cByte1TriggerSendBytes_1_97,
      SET => GND,
      RST => GND
    );
  i2cByte1TriggerSendBytes_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => statusCounter(0),
      CLK => isTriggered,
      GE => Q_n0172_108,
      O => i2cByte1TriggerSendBytes_0_98,
      SET => GND,
      RST => GND
    );
  byteToSend_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => GND_4_o_byteToSend_5_Select_51_o,
      CLK => isTriggered,
      GE => out8,
      O => byteToSend_5_100,
      SET => GND,
      RST => GND
    );
  byteToSend_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => GND_4_o_byteToSend_0_Select_61_o,
      CLK => isTriggered,
      GE => out8,
      O => byteToSend_0_101,
      SET => GND,
      RST => GND
    );
  clk_outSendBytes_10 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => isTriggered_P,
      CLK => isTriggered,
      GE => PWR_4_o_statusCounter_10_equal_11_o,
      O => clk_outSendBytes_10_102,
      SET => GND,
      RST => GND
    );
  slowDownClock_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(0),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(1),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(2),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(3),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(4),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(5),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(6),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(7),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(8),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(9),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(10),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(11),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(12),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(12),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(13),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(13),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(14),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(14),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(15),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(15),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(16),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(16),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_17 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(17),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(17),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_18 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(18),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(18),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_19 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(19),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(19),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_20 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(20),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(20),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_21 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(21),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(21),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_22 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(22),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(22),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_23 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(23),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(23),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_24 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(24),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(24),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_25 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(25),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(25),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_26 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(26),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(26),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_27 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(27),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(27),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_28 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(28),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(28),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_29 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(29),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(29),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_30 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(30),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(30),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  slowDownClock_31 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => Result(31),
      SRST => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      O => slowDownClock(31),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_slowDownClock_cy_0_Q : X_MUX2
    port map (
      IB => byteToSend(7),
      IA => isTriggered_P,
      SEL => Mcount_slowDownClock_lut(0),
      O => Mcount_slowDownClock_cy(0)
    );
  Mcount_slowDownClock_xor_0_Q : X_XOR2
    port map (
      I0 => byteToSend(7),
      I1 => Mcount_slowDownClock_lut(0),
      O => Result(0)
    );
  Mcount_slowDownClock_cy_1_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(0),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_1_rt_338,
      O => Mcount_slowDownClock_cy(1)
    );
  Mcount_slowDownClock_xor_1_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(0),
      I1 => Mcount_slowDownClock_cy_1_rt_338,
      O => Result(1)
    );
  Mcount_slowDownClock_cy_2_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(1),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_2_rt_339,
      O => Mcount_slowDownClock_cy(2)
    );
  Mcount_slowDownClock_xor_2_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(1),
      I1 => Mcount_slowDownClock_cy_2_rt_339,
      O => Result(2)
    );
  Mcount_slowDownClock_cy_3_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(2),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_3_rt_340,
      O => Mcount_slowDownClock_cy(3)
    );
  Mcount_slowDownClock_xor_3_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(2),
      I1 => Mcount_slowDownClock_cy_3_rt_340,
      O => Result(3)
    );
  Mcount_slowDownClock_cy_4_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(3),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_4_rt_341,
      O => Mcount_slowDownClock_cy(4)
    );
  Mcount_slowDownClock_xor_4_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(3),
      I1 => Mcount_slowDownClock_cy_4_rt_341,
      O => Result(4)
    );
  Mcount_slowDownClock_cy_5_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(4),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_5_rt_342,
      O => Mcount_slowDownClock_cy(5)
    );
  Mcount_slowDownClock_xor_5_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(4),
      I1 => Mcount_slowDownClock_cy_5_rt_342,
      O => Result(5)
    );
  Mcount_slowDownClock_cy_6_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(5),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_6_rt_343,
      O => Mcount_slowDownClock_cy(6)
    );
  Mcount_slowDownClock_xor_6_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(5),
      I1 => Mcount_slowDownClock_cy_6_rt_343,
      O => Result(6)
    );
  Mcount_slowDownClock_cy_7_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(6),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_7_rt_344,
      O => Mcount_slowDownClock_cy(7)
    );
  Mcount_slowDownClock_xor_7_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(6),
      I1 => Mcount_slowDownClock_cy_7_rt_344,
      O => Result(7)
    );
  Mcount_slowDownClock_cy_8_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(7),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_8_rt_345,
      O => Mcount_slowDownClock_cy(8)
    );
  Mcount_slowDownClock_xor_8_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(7),
      I1 => Mcount_slowDownClock_cy_8_rt_345,
      O => Result(8)
    );
  Mcount_slowDownClock_cy_9_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(8),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_9_rt_346,
      O => Mcount_slowDownClock_cy(9)
    );
  Mcount_slowDownClock_xor_9_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(8),
      I1 => Mcount_slowDownClock_cy_9_rt_346,
      O => Result(9)
    );
  Mcount_slowDownClock_cy_10_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(9),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_10_rt_347,
      O => Mcount_slowDownClock_cy(10)
    );
  Mcount_slowDownClock_xor_10_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(9),
      I1 => Mcount_slowDownClock_cy_10_rt_347,
      O => Result(10)
    );
  Mcount_slowDownClock_cy_11_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(10),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_11_rt_348,
      O => Mcount_slowDownClock_cy(11)
    );
  Mcount_slowDownClock_xor_11_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(10),
      I1 => Mcount_slowDownClock_cy_11_rt_348,
      O => Result(11)
    );
  Mcount_slowDownClock_cy_12_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(11),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_12_rt_349,
      O => Mcount_slowDownClock_cy(12)
    );
  Mcount_slowDownClock_xor_12_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(11),
      I1 => Mcount_slowDownClock_cy_12_rt_349,
      O => Result(12)
    );
  Mcount_slowDownClock_cy_13_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(12),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_13_rt_350,
      O => Mcount_slowDownClock_cy(13)
    );
  Mcount_slowDownClock_xor_13_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(12),
      I1 => Mcount_slowDownClock_cy_13_rt_350,
      O => Result(13)
    );
  Mcount_slowDownClock_cy_14_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(13),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_14_rt_351,
      O => Mcount_slowDownClock_cy(14)
    );
  Mcount_slowDownClock_xor_14_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(13),
      I1 => Mcount_slowDownClock_cy_14_rt_351,
      O => Result(14)
    );
  Mcount_slowDownClock_cy_15_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(14),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_15_rt_352,
      O => Mcount_slowDownClock_cy(15)
    );
  Mcount_slowDownClock_xor_15_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(14),
      I1 => Mcount_slowDownClock_cy_15_rt_352,
      O => Result(15)
    );
  Mcount_slowDownClock_cy_16_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(15),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_16_rt_353,
      O => Mcount_slowDownClock_cy(16)
    );
  Mcount_slowDownClock_xor_16_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(15),
      I1 => Mcount_slowDownClock_cy_16_rt_353,
      O => Result(16)
    );
  Mcount_slowDownClock_cy_17_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(16),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_17_rt_354,
      O => Mcount_slowDownClock_cy(17)
    );
  Mcount_slowDownClock_xor_17_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(16),
      I1 => Mcount_slowDownClock_cy_17_rt_354,
      O => Result(17)
    );
  Mcount_slowDownClock_cy_18_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(17),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_18_rt_355,
      O => Mcount_slowDownClock_cy(18)
    );
  Mcount_slowDownClock_xor_18_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(17),
      I1 => Mcount_slowDownClock_cy_18_rt_355,
      O => Result(18)
    );
  Mcount_slowDownClock_cy_19_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(18),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_19_rt_356,
      O => Mcount_slowDownClock_cy(19)
    );
  Mcount_slowDownClock_xor_19_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(18),
      I1 => Mcount_slowDownClock_cy_19_rt_356,
      O => Result(19)
    );
  Mcount_slowDownClock_cy_20_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(19),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_20_rt_357,
      O => Mcount_slowDownClock_cy(20)
    );
  Mcount_slowDownClock_xor_20_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(19),
      I1 => Mcount_slowDownClock_cy_20_rt_357,
      O => Result(20)
    );
  Mcount_slowDownClock_cy_21_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(20),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_21_rt_358,
      O => Mcount_slowDownClock_cy(21)
    );
  Mcount_slowDownClock_xor_21_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(20),
      I1 => Mcount_slowDownClock_cy_21_rt_358,
      O => Result(21)
    );
  Mcount_slowDownClock_cy_22_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(21),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_22_rt_359,
      O => Mcount_slowDownClock_cy(22)
    );
  Mcount_slowDownClock_xor_22_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(21),
      I1 => Mcount_slowDownClock_cy_22_rt_359,
      O => Result(22)
    );
  Mcount_slowDownClock_cy_23_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(22),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_23_rt_360,
      O => Mcount_slowDownClock_cy(23)
    );
  Mcount_slowDownClock_xor_23_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(22),
      I1 => Mcount_slowDownClock_cy_23_rt_360,
      O => Result(23)
    );
  Mcount_slowDownClock_cy_24_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(23),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_24_rt_361,
      O => Mcount_slowDownClock_cy(24)
    );
  Mcount_slowDownClock_xor_24_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(23),
      I1 => Mcount_slowDownClock_cy_24_rt_361,
      O => Result(24)
    );
  Mcount_slowDownClock_cy_25_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(24),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_25_rt_362,
      O => Mcount_slowDownClock_cy(25)
    );
  Mcount_slowDownClock_xor_25_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(24),
      I1 => Mcount_slowDownClock_cy_25_rt_362,
      O => Result(25)
    );
  Mcount_slowDownClock_cy_26_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(25),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_26_rt_363,
      O => Mcount_slowDownClock_cy(26)
    );
  Mcount_slowDownClock_xor_26_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(25),
      I1 => Mcount_slowDownClock_cy_26_rt_363,
      O => Result(26)
    );
  Mcount_slowDownClock_cy_27_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(26),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_27_rt_364,
      O => Mcount_slowDownClock_cy(27)
    );
  Mcount_slowDownClock_xor_27_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(26),
      I1 => Mcount_slowDownClock_cy_27_rt_364,
      O => Result(27)
    );
  Mcount_slowDownClock_cy_28_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(27),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_28_rt_365,
      O => Mcount_slowDownClock_cy(28)
    );
  Mcount_slowDownClock_xor_28_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(27),
      I1 => Mcount_slowDownClock_cy_28_rt_365,
      O => Result(28)
    );
  Mcount_slowDownClock_cy_29_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(28),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_29_rt_366,
      O => Mcount_slowDownClock_cy(29)
    );
  Mcount_slowDownClock_xor_29_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(28),
      I1 => Mcount_slowDownClock_cy_29_rt_366,
      O => Result(29)
    );
  Mcount_slowDownClock_cy_30_Q : X_MUX2
    port map (
      IB => Mcount_slowDownClock_cy(29),
      IA => byteToSend(7),
      SEL => Mcount_slowDownClock_cy_30_rt_367,
      O => Mcount_slowDownClock_cy(30)
    );
  Mcount_slowDownClock_xor_30_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(29),
      I1 => Mcount_slowDownClock_cy_30_rt_367,
      O => Result(30)
    );
  Mcount_slowDownClock_xor_31_Q : X_XOR2
    port map (
      I0 => Mcount_slowDownClock_cy(30),
      I1 => Mcount_slowDownClock_xor_31_rt_368,
      O => Result(31)
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => slowDownClock(12),
      ADR1 => slowDownClock(11),
      ADR2 => slowDownClock(10),
      ADR3 => slowDownClock(13),
      O => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi_178
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_0_Q : X_LUT5
    generic map(
      INIT => X"00000400"
    )
    port map (
      ADR0 => slowDownClock(10),
      ADR1 => slowDownClock(9),
      ADR2 => slowDownClock(11),
      ADR3 => slowDownClock(12),
      ADR4 => slowDownClock(13),
      O => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_0_Q_179
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_0_Q : X_MUX2
    port map (
      IB => isTriggered_P,
      IA => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi_178,
      SEL => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_0_Q_179,
      O => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_0_Q_180
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi1 : X_LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
    port map (
      ADR0 => slowDownClock(17),
      ADR1 => slowDownClock(16),
      ADR2 => slowDownClock(15),
      ADR3 => slowDownClock(14),
      ADR4 => slowDownClock(18),
      O => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi1_181
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_1_Q : X_LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      ADR0 => slowDownClock(14),
      ADR1 => slowDownClock(17),
      ADR2 => slowDownClock(15),
      ADR3 => slowDownClock(16),
      ADR4 => slowDownClock(18),
      O => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_1_Q_182
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_1_Q : X_MUX2
    port map (
      IB => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_0_Q_180,
      IA => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi1_181,
      SEL => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_1_Q_182,
      O => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_1_Q_183
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_2_Q : X_LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      ADR0 => slowDownClock(23),
      ADR1 => slowDownClock(20),
      ADR2 => slowDownClock(21),
      ADR3 => slowDownClock(22),
      ADR4 => slowDownClock(19),
      O => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_2_Q_184
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_2_Q : X_MUX2
    port map (
      IB => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_1_Q_183,
      IA => slowDownClock(23),
      SEL => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_2_Q_184,
      O => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_2_Q_185
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi2 : X_LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR0 => slowDownClock(28),
      ADR1 => slowDownClock(27),
      ADR2 => slowDownClock(26),
      ADR3 => slowDownClock(25),
      ADR4 => slowDownClock(24),
      O => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi2_186
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_3_Q : X_LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      ADR0 => slowDownClock(24),
      ADR1 => slowDownClock(25),
      ADR2 => slowDownClock(26),
      ADR3 => slowDownClock(27),
      ADR4 => slowDownClock(28),
      O => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_3_Q_187
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_3_Q : X_MUX2
    port map (
      IB => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_2_Q_185,
      IA => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi2_186,
      SEL => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_3_Q_187,
      O => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_3_Q_188
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi3 : X_LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      ADR0 => slowDownClock(31),
      ADR1 => slowDownClock(29),
      ADR2 => slowDownClock(30),
      O => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi3_189
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_4_Q : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => slowDownClock(29),
      ADR1 => slowDownClock(30),
      ADR2 => slowDownClock(31),
      O => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_4_Q_190
    );
  Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_4_Q : X_MUX2
    port map (
      IB => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_cy_3_Q_188,
      IA => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lutdi3_189,
      SEL => Mcompar_GND_4_o_slowDownClock_31_LessThan_66_o_lut_4_Q_190,
      O => GND_4_o_slowDownClock_31_LessThan_66_o_inv
    );
  sendByte2_bitCount_2 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sendByte0_clk_in_inv,
      CE => sendByte2_n0108_inv,
      I => sendByte2_Result(2),
      SSET => sendByte2_n0061,
      O => sendByte2_bitCount(2),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  sendByte2_bitCount_1 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sendByte0_clk_in_inv,
      CE => sendByte2_n0108_inv,
      I => sendByte2_Result(1),
      SSET => sendByte2_n0061,
      O => sendByte2_bitCount(1),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  sendByte2_bitCount_0 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sendByte0_clk_in_inv,
      CE => sendByte2_n0108_inv,
      I => sendByte2_Result(0),
      SSET => sendByte2_n0061,
      O => sendByte2_bitCount(0),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  sendByte1_bitCount_2 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sendByte0_clk_in_inv,
      CE => sendByte1_n0108_inv,
      I => sendByte1_Result(2),
      SSET => sendByte1_n0061,
      O => sendByte1_bitCount(2),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  sendByte1_bitCount_1 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sendByte0_clk_in_inv,
      CE => sendByte1_n0108_inv,
      I => sendByte1_Result(1),
      SSET => sendByte1_n0061,
      O => sendByte1_bitCount(1),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  sendByte1_bitCount_0 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sendByte0_clk_in_inv,
      CE => sendByte1_n0108_inv,
      I => sendByte1_Result(0),
      SSET => sendByte1_n0061,
      O => sendByte1_bitCount(0),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  sendByte0_bitCount_2 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sendByte0_clk_in_inv,
      CE => sendByte0_n0108_inv,
      I => sendByte0_Result(2),
      SSET => sendByte0_n0061,
      O => sendByte0_bitCount(2),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  sendByte0_bitCount_1 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sendByte0_clk_in_inv,
      CE => sendByte0_n0108_inv,
      I => sendByte0_Result(1),
      SSET => sendByte0_n0061,
      O => sendByte0_bitCount(1),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  sendByte0_bitCount_0 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => sendByte0_clk_in_inv,
      CE => sendByte0_n0108_inv,
      I => sendByte0_Result(0),
      SSET => sendByte0_n0061,
      O => sendByte0_bitCount(0),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Inst_I2C_sendNotAckStop_stateCounter_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      CE => Inst_I2C_sendNotAckStop_n0105_inv2,
      I => Inst_I2C_sendNotAckStop_Result(2),
      SRST => Inst_I2C_sendNotAckStop_n0050,
      O => Inst_I2C_sendNotAckStop_stateCounter(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_I2C_sendNotAckStop_stateCounter_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      CE => Inst_I2C_sendNotAckStop_n0105_inv2,
      I => Inst_I2C_sendNotAckStop_Result(1),
      SRST => Inst_I2C_sendNotAckStop_n0050,
      O => Inst_I2C_sendNotAckStop_stateCounter(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_I2C_sendNotAckStop_stateCounter_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      CE => Inst_I2C_sendNotAckStop_n0105_inv2,
      I => Inst_I2C_sendNotAckStop_Result(0),
      SRST => Inst_I2C_sendNotAckStop_n0050,
      O => Inst_I2C_sendNotAckStop_stateCounter(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  recieveByte0_bitCount_3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => NlwInverterSignal_recieveByte0_bitCount_3_C,
      I => recieveByte0_bitCount_3_GND_8_o_mux_5_OUT_3_Q,
      SET => recieveByte0_GND_8_o_done_AND_36_o,
      O => recieveByte0_bitCount_3_277,
      CE => VCC,
      RST => GND
    );
  recieveByte0_byte_rec_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_recieveByte0_byte_rec_7_C,
      CE => recieveByte0_SCL_23_73,
      I => recieveByte0_byte_rec_7_dpot_402,
      O => recieveByte0_byte_rec(7),
      SET => GND,
      RST => GND
    );
  recieveByte0_byte_rec_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_recieveByte0_byte_rec_6_C,
      CE => recieveByte0_SCL_23_73,
      I => recieveByte0_byte_rec_6_dpot_401,
      O => recieveByte0_byte_rec(6),
      SET => GND,
      RST => GND
    );
  recieveByte0_byte_rec_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_recieveByte0_byte_rec_5_C,
      CE => recieveByte0_SCL_23_73,
      I => recieveByte0_byte_rec_5_dpot_400,
      O => recieveByte0_byte_rec(5),
      SET => GND,
      RST => GND
    );
  recieveByte0_byte_rec_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_recieveByte0_byte_rec_4_C,
      CE => recieveByte0_SCL_23_73,
      I => recieveByte0_byte_rec_4_dpot_399,
      O => recieveByte0_byte_rec(4),
      SET => GND,
      RST => GND
    );
  recieveByte0_byte_rec_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_recieveByte0_byte_rec_3_C,
      CE => recieveByte0_SCL_23_73,
      I => recieveByte0_byte_rec_3_dpot_398,
      O => recieveByte0_byte_rec(3),
      SET => GND,
      RST => GND
    );
  recieveByte0_byte_rec_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_recieveByte0_byte_rec_2_C,
      CE => recieveByte0_SCL_23_73,
      I => recieveByte0_byte_rec_2_dpot_397,
      O => recieveByte0_byte_rec(2),
      SET => GND,
      RST => GND
    );
  recieveByte0_byte_rec_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_recieveByte0_byte_rec_1_C,
      CE => recieveByte0_SCL_23_73,
      I => recieveByte0_byte_rec_1_dpot_396,
      O => recieveByte0_byte_rec(1),
      SET => GND,
      RST => GND
    );
  recieveByte0_byte_rec_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_recieveByte0_byte_rec_0_C,
      CE => recieveByte0_SCL_23_73,
      I => recieveByte0_byte_rec_0_dpot_395,
      O => recieveByte0_byte_rec(0),
      SET => GND,
      RST => GND
    );
  recieveByte0_bitCount_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_recieveByte0_bitCount_0_C,
      RST => recieveByte0_GND_8_o_done_AND_36_o,
      I => recieveByte0_bitCount_3_GND_8_o_mux_5_OUT_0_Q,
      O => recieveByte0_bitCount_0_261,
      CE => VCC,
      SET => GND
    );
  recieveByte0_bitCount_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_recieveByte0_bitCount_2_C,
      RST => recieveByte0_GND_8_o_done_AND_36_o,
      I => recieveByte0_bitCount_3_GND_8_o_mux_5_OUT_2_Q,
      O => recieveByte0_bitCount_2_276,
      CE => VCC,
      SET => GND
    );
  recieveByte0_bitCount_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_recieveByte0_bitCount_1_C,
      RST => recieveByte0_GND_8_o_done_AND_36_o,
      I => recieveByte0_bitCount_3_GND_8_o_mux_5_OUT_1_Q,
      O => recieveByte0_bitCount_1_275,
      CE => VCC,
      SET => GND
    );
  error_out_0_1 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => recieveAcknowledge1_error_57,
      ADR1 => recieveAcknowledge2_error_60,
      ADR2 => recieveAcknowledge0_error_54,
      O => error_out_OBUF_103
    );
  out61 : X_LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      ADR0 => statusCounter(0),
      ADR1 => out3,
      ADR2 => statusCounter(2),
      ADR3 => statusCounter(5),
      ADR4 => statusCounter(9),
      O => out6
    );
  GND_4_o_byteToSend_0_Select_61_o1 : X_LUT5
    generic map(
      INIT => X"00020200"
    )
    port map (
      ADR0 => out6,
      ADR1 => statusCounter(10),
      ADR2 => statusCounter(1),
      ADR3 => statusCounter(3),
      ADR4 => statusCounter(6),
      O => GND_4_o_byteToSend_0_Select_61_o
    );
  out31 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => statusCounter(8),
      ADR1 => statusCounter(7),
      ADR2 => statusCounter(4),
      O => out3
    );
  out81 : X_LUT5
    generic map(
      INIT => X"00020220"
    )
    port map (
      ADR0 => out6,
      ADR1 => statusCounter(10),
      ADR2 => statusCounter(1),
      ADR3 => statusCounter(3),
      ADR4 => statusCounter(6),
      O => out8
    );
  GND_4_o_byteToSend_5_Select_51_o1 : X_LUT5
    generic map(
      INIT => X"00020200"
    )
    port map (
      ADR0 => out6,
      ADR1 => statusCounter(10),
      ADR2 => statusCounter(3),
      ADR3 => statusCounter(1),
      ADR4 => statusCounter(6),
      O => GND_4_o_byteToSend_5_Select_51_o
    );
  PWR_4_o_statusCounter_10_equal_11_o_10_1 : X_LUT5
    generic map(
      INIT => X"00000400"
    )
    port map (
      ADR0 => statusCounter(6),
      ADR1 => out6,
      ADR2 => statusCounter(3),
      ADR3 => statusCounter(10),
      ADR4 => statusCounter(1),
      O => PWR_4_o_statusCounter_10_equal_11_o
    );
  sendStart1_n002911 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => sendStart1_triggerBuf_196,
      ADR1 => sendStart1_done_outBuffer_45,
      ADR2 => reset_IBUF_9,
      O => sendStart1_n00291
    );
  sendStart0_n002911 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => sendStart0_triggerBuf_198,
      ADR1 => sendStart0_done_outBuffer_44,
      ADR2 => reset_IBUF_9,
      O => sendStart0_n00291
    );
  sendByte2_n0108_inv1 : X_LUT5
    generic map(
      INIT => X"44444440"
    )
    port map (
      ADR0 => sendByte2_done_outBuffer_51,
      ADR1 => sendByte2_triggerBuf_211,
      ADR2 => sendByte2_bitCount(1),
      ADR3 => sendByte2_bitCount(2),
      ADR4 => sendByte2_bitCount(0),
      O => sendByte2_n0108_inv
    );
  sendByte2_Mcount_bitCount_xor_2_11 : X_LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      ADR0 => sendByte2_bitCount(2),
      ADR1 => sendByte2_bitCount(1),
      ADR2 => sendByte2_bitCount(0),
      O => sendByte2_Result(2)
    );
  sendByte2_n00611 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => sendByte2_triggerBuf_211,
      ADR1 => sendByte2_done_outBuffer_51,
      ADR2 => reset_IBUF_9,
      O => sendByte2_n0061
    );
  sendByte2_Mcount_bitCount_xor_1_11 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => sendByte2_bitCount(1),
      ADR1 => sendByte2_bitCount(0),
      O => sendByte2_Result(1)
    );
  sendByte1_n0108_inv1 : X_LUT5
    generic map(
      INIT => X"44444440"
    )
    port map (
      ADR0 => sendByte1_done_outBuffer_49,
      ADR1 => sendByte1_triggerBuf_224,
      ADR2 => sendByte1_bitCount(1),
      ADR3 => sendByte1_bitCount(2),
      ADR4 => sendByte1_bitCount(0),
      O => sendByte1_n0108_inv
    );
  sendByte1_Mcount_bitCount_xor_2_11 : X_LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      ADR0 => sendByte1_bitCount(2),
      ADR1 => sendByte1_bitCount(1),
      ADR2 => sendByte1_bitCount(0),
      O => sendByte1_Result(2)
    );
  sendByte1_n00611 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => sendByte1_triggerBuf_224,
      ADR1 => sendByte1_done_outBuffer_49,
      ADR2 => reset_IBUF_9,
      O => sendByte1_n0061
    );
  sendByte1_Mcount_bitCount_xor_1_11 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => sendByte1_bitCount(1),
      ADR1 => sendByte1_bitCount(0),
      O => sendByte1_Result(1)
    );
  sendByte0_n0108_inv1 : X_LUT5
    generic map(
      INIT => X"44444440"
    )
    port map (
      ADR0 => sendByte0_done_outBuffer_47,
      ADR1 => sendByte0_triggerBuf_238,
      ADR2 => sendByte0_bitCount(1),
      ADR3 => sendByte0_bitCount(2),
      ADR4 => sendByte0_bitCount(0),
      O => sendByte0_n0108_inv
    );
  sendByte0_Mcount_bitCount_xor_2_11 : X_LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      ADR0 => sendByte0_bitCount(2),
      ADR1 => sendByte0_bitCount(1),
      ADR2 => sendByte0_bitCount(0),
      O => sendByte0_Result(2)
    );
  sendByte0_n00611 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => sendByte0_triggerBuf_238,
      ADR1 => sendByte0_done_outBuffer_47,
      ADR2 => reset_IBUF_9,
      O => sendByte0_n0061
    );
  sendByte0_Mcount_bitCount_xor_1_11 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => sendByte0_bitCount(1),
      ADR1 => sendByte0_bitCount(0),
      O => sendByte0_Result(1)
    );
  recieveAcknowledge1_triggerBuffer_trigger_AND_15_o1 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => recieveAcknowledge1_isListening_246,
      ADR1 => recieveAcknowledge1_triggerBuffer_245,
      ADR2 => i2cByte1TriggerSendBytes_4_94,
      O => recieveAcknowledge1_triggerBuffer_trigger_AND_15_o
    );
  recieveAcknowledge0_triggerBuffer_trigger_AND_15_o1 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => recieveAcknowledge0_isListening_251,
      ADR1 => recieveAcknowledge0_triggerBuffer_250,
      ADR2 => i2cByte1TriggerSendBytes_2_96,
      O => recieveAcknowledge0_triggerBuffer_trigger_AND_15_o
    );
  Inst_I2C_sendNotAckStop_Mcount_stateCounter_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => Inst_I2C_sendNotAckStop_stateCounter(2),
      ADR1 => Inst_I2C_sendNotAckStop_stateCounter(0),
      ADR2 => Inst_I2C_sendNotAckStop_stateCounter(1),
      O => Inst_I2C_sendNotAckStop_Result(2)
    );
  Inst_I2C_sendNotAckStop_n0105_inv21 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => Inst_I2C_sendNotAckStop_doneOutBuffer_63,
      ADR1 => reset_IBUF_9,
      ADR2 => Inst_I2C_sendNotAckStop_triggerBuf_260,
      O => Inst_I2C_sendNotAckStop_n0105_inv2
    );
  Inst_I2C_sendNotAckStop_Mcount_stateCounter_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => Inst_I2C_sendNotAckStop_stateCounter(1),
      ADR1 => Inst_I2C_sendNotAckStop_stateCounter(0),
      O => Inst_I2C_sendNotAckStop_Result(1)
    );
  recieveByte0_Mmux_bitCount_3_GND_8_o_mux_5_OUT41 : X_LUT6
    generic map(
      INIT => X"AAA9AAAAAAAAAAAA"
    )
    port map (
      ADR0 => recieveByte0_bitCount_3_277,
      ADR1 => recieveByte0_bitCount_1_275,
      ADR2 => recieveByte0_bitCount_2_276,
      ADR3 => recieveByte0_bitCount_0_261,
      ADR4 => recieveByte0_SCL_23_73,
      ADR5 => i2cByte1TriggerSendBytes_8_90,
      O => recieveByte0_bitCount_3_GND_8_o_mux_5_OUT_3_Q
    );
  recieveByte0_Mmux_bitCount_3_GND_8_o_mux_5_OUT31 : X_LUT5
    generic map(
      INIT => X"A9AAAAAA"
    )
    port map (
      ADR0 => recieveByte0_bitCount_2_276,
      ADR1 => recieveByte0_bitCount_1_275,
      ADR2 => recieveByte0_bitCount_0_261,
      ADR3 => recieveByte0_SCL_23_73,
      ADR4 => i2cByte1TriggerSendBytes_8_90,
      O => recieveByte0_bitCount_3_GND_8_o_mux_5_OUT_2_Q
    );
  recieveByte0_Mmux_bitCount_3_GND_8_o_mux_5_OUT21 : X_LUT4
    generic map(
      INIT => X"9AAA"
    )
    port map (
      ADR0 => recieveByte0_bitCount_1_275,
      ADR1 => recieveByte0_bitCount_0_261,
      ADR2 => recieveByte0_SCL_23_73,
      ADR3 => i2cByte1TriggerSendBytes_8_90,
      O => recieveByte0_bitCount_3_GND_8_o_mux_5_OUT_1_Q
    );
  recieveByte0_Mmux_byte_rec_5_SDA_MUX_59_o11 : X_LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      ADR0 => recieveByte0_byte_rec(5),
      ADR1 => recieveByte0_bitCount_0_261,
      ADR2 => recieveByte0_bitCount_2_276,
      ADR3 => recieveByte0_bitCount_1_275,
      ADR4 => N4,
      O => recieveByte0_byte_rec_5_SDA_MUX_59_o
    );
  recieveByte0_Mmux_byte_rec_6_SDA_MUX_58_o11 : X_LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
    port map (
      ADR0 => recieveByte0_byte_rec(6),
      ADR1 => recieveByte0_bitCount_1_275,
      ADR2 => recieveByte0_bitCount_2_276,
      ADR3 => recieveByte0_bitCount_0_261,
      ADR4 => N4,
      O => recieveByte0_byte_rec_6_SDA_MUX_58_o
    );
  recieveByte0_Mmux_byte_rec_3_SDA_MUX_61_o11 : X_LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
    port map (
      ADR0 => recieveByte0_byte_rec(3),
      ADR1 => recieveByte0_bitCount_0_261,
      ADR2 => recieveByte0_bitCount_1_275,
      ADR3 => recieveByte0_bitCount_2_276,
      ADR4 => N4,
      O => recieveByte0_byte_rec_3_SDA_MUX_61_o
    );
  recieveByte0_Mmux_byte_rec_4_SDA_MUX_60_o11 : X_LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      ADR0 => recieveByte0_byte_rec(4),
      ADR1 => recieveByte0_bitCount_1_275,
      ADR2 => recieveByte0_bitCount_2_276,
      ADR3 => recieveByte0_bitCount_0_261,
      ADR4 => N4,
      O => recieveByte0_byte_rec_4_SDA_MUX_60_o
    );
  recieveByte0_Mmux_byte_rec_1_SDA_MUX_63_o11 : X_LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
    port map (
      ADR0 => recieveByte0_byte_rec(1),
      ADR1 => recieveByte0_bitCount_0_261,
      ADR2 => recieveByte0_bitCount_2_276,
      ADR3 => recieveByte0_bitCount_1_275,
      ADR4 => N4,
      O => recieveByte0_byte_rec_1_SDA_MUX_63_o
    );
  recieveByte0_Mmux_byte_rec_2_SDA_MUX_62_o11 : X_LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      ADR0 => recieveByte0_byte_rec(2),
      ADR1 => recieveByte0_bitCount_2_276,
      ADR2 => recieveByte0_bitCount_0_261,
      ADR3 => recieveByte0_bitCount_1_275,
      ADR4 => N4,
      O => recieveByte0_byte_rec_2_SDA_MUX_62_o
    );
  recieveByte0_Mmux_byte_rec_7_SDA_MUX_57_o11 : X_LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      ADR0 => recieveByte0_byte_rec(7),
      ADR1 => recieveByte0_bitCount_1_275,
      ADR2 => recieveByte0_bitCount_2_276,
      ADR3 => recieveByte0_bitCount_0_261,
      ADR4 => N4,
      O => recieveByte0_byte_rec_7_SDA_MUX_57_o
    );
  recieveByte0_Mmux_byte_rec_0_SDA_MUX_64_o11 : X_LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
    port map (
      ADR0 => recieveByte0_byte_rec(0),
      ADR1 => recieveByte0_bitCount_1_275,
      ADR2 => recieveByte0_bitCount_2_276,
      ADR3 => recieveByte0_bitCount_0_261,
      ADR4 => N4,
      O => recieveByte0_byte_rec_0_SDA_MUX_64_o
    );
  recieveByte0_Mmux_bitCount_3_GND_8_o_mux_5_OUT11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => recieveByte0_bitCount_0_261,
      ADR1 => recieveByte0_SCL_23_73,
      ADR2 => i2cByte1TriggerSendBytes_8_90,
      O => recieveByte0_bitCount_3_GND_8_o_mux_5_OUT_0_Q
    );
  SDASendBytes_0_SDASendBytes_10_OR_69_o1 : X_LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      ADR0 => Inst_I2C_sendNotAckStop_SDA_61,
      ADR1 => statusCounter(9),
      ADR2 => clk_outSendBytes_10_102,
      ADR3 => statusCounter(10),
      ADR4 => sendByte1_data_Out_48,
      ADR5 => statusCounter(3),
      O => SDASendBytes_0_SDASendBytes_10_OR_69_o1_278
    );
  SDASendBytes_0_SDASendBytes_10_OR_69_o2 : X_LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
    port map (
      ADR0 => sendByte0_data_Out_46,
      ADR1 => statusCounter(1),
      ADR2 => statusCounter(0),
      ADR3 => sendStart0_triggerBuf_198,
      ADR4 => sendByte2_data_Out_50,
      ADR5 => statusCounter(6),
      O => SDASendBytes_0_SDASendBytes_10_OR_69_o2_279
    );
  SDASendBytes_0_SDASendBytes_10_OR_69_o3 : X_LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      ADR0 => SDASendBytes_0_SDASendBytes_10_OR_69_o2_279,
      ADR1 => statusCounter(5),
      ADR2 => sendStart1_triggerBuf_196,
      ADR3 => SDASendBytes_0_SDASendBytes_10_OR_69_o1_278,
      O => SDA_IOBUF
    );
  doneOutBuffer2 : X_LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      ADR0 => recieveAcknowledge0_done_outBuffer_53,
      ADR1 => statusCounter(2),
      ADR2 => sendByte1_done_outBuffer_49,
      ADR3 => statusCounter(3),
      ADR4 => sendByte0_done_outBuffer_47,
      ADR5 => statusCounter(1),
      O => doneOutBuffer2_280
    );
  doneOutBuffer3 : X_LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
    port map (
      ADR0 => doneOutBuffer2_280,
      ADR1 => sendStart0_done_outBuffer_44,
      ADR2 => statusCounter(0),
      ADR3 => Inst_I2C_sendNotAckStop_doneOutBuffer_63,
      ADR4 => statusCounter(9),
      O => doneOutBuffer3_281
    );
  Q_n0172_SW0 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
    port map (
      ADR0 => statusCounter(10),
      ADR1 => statusCounter(1),
      ADR2 => statusCounter(0),
      ADR3 => statusCounter(7),
      ADR4 => statusCounter(5),
      ADR5 => statusCounter(3),
      O => N01
    );
  Q_n0172 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR0 => statusCounter(9),
      ADR1 => statusCounter(8),
      ADR2 => statusCounter(6),
      ADR3 => statusCounter(4),
      ADR4 => statusCounter(2),
      ADR5 => N01,
      O => Q_n0172_108
    );
  Mmux_SCL11 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => recieveAcknowledge1_clk_out_55,
      ADR1 => statusCounter(4),
      O => Mmux_SCL1
    );
  Mmux_SCL12 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
    port map (
      ADR0 => bufClock_405,
      ADR1 => statusCounter(6),
      ADR2 => sendByte2_enableClock_210,
      ADR3 => statusCounter(3),
      ADR4 => sendByte1_enableClock_223,
      ADR5 => Mmux_SCL1,
      O => Mmux_SCL11_284
    );
  Mmux_SCL13 : X_LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
    port map (
      ADR0 => Inst_I2C_sendNotAckStop_doneOutBuffer_63,
      ADR1 => recieveAcknowledge0_clk_out_52,
      ADR2 => statusCounter(2),
      ADR3 => statusCounter(1),
      ADR4 => bufClock_405,
      ADR5 => sendByte0_enableClock_237,
      O => Mmux_SCL12_285
    );
  Mmux_SCL16 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
    port map (
      ADR0 => Mmux_SCL12_285,
      ADR1 => Mmux_SCL13_286,
      ADR2 => Mmux_SCL14_287,
      ADR3 => recieveAcknowledge2_clk_out_58,
      ADR4 => statusCounter(7),
      ADR5 => Mmux_SCL11_284,
      O => SCL_OBUF_87
    );
  out1 : X_LUT6
    generic map(
      INIT => X"0000000100010110"
    )
    port map (
      ADR0 => statusCounter(6),
      ADR1 => statusCounter(3),
      ADR2 => statusCounter(9),
      ADR3 => statusCounter(10),
      ADR4 => statusCounter(0),
      ADR5 => statusCounter(5),
      O => out_288
    );
  out2 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAEAA"
    )
    port map (
      ADR0 => out5_191,
      ADR1 => out_288,
      ADR2 => statusCounter(2),
      ADR3 => out3,
      ADR4 => statusCounter(1),
      ADR5 => out8,
      O => n0013
    );
  out5_SW0 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR0 => statusCounter(6),
      ADR1 => statusCounter(1),
      ADR2 => statusCounter(10),
      ADR3 => statusCounter(0),
      ADR4 => statusCounter(5),
      ADR5 => statusCounter(3),
      O => N2
    );
  out5 : X_LUT6
    generic map(
      INIT => X"0000000100010110"
    )
    port map (
      ADR0 => statusCounter(9),
      ADR1 => N2,
      ADR2 => statusCounter(4),
      ADR3 => statusCounter(2),
      ADR4 => statusCounter(7),
      ADR5 => statusCounter(8),
      O => out5_191
    );
  clk_IBUF : X_BUF
    port map (
      I => clk,
      O => clk_out_OBUF_406
    );
  reset_IBUF : X_BUF
    port map (
      I => reset,
      O => reset_IBUF_9
    );
  sendStart1_done_outBuffer : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendStart1_done_outBuffer_C,
      I => sendStart1_done_outBuffer_glue_set_317,
      SRST => sendStart1_n00291,
      O => sendStart1_done_outBuffer_45,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  sendStart1_triggerBuf : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendStart1_triggerBuf_C,
      I => sendStart1_triggerBuf_glue_set_318,
      SRST => sendStart1_n00291,
      O => sendStart1_triggerBuf_196,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  sendStart0_done_outBuffer : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendStart0_done_outBuffer_C,
      I => sendStart0_done_outBuffer_glue_set_319,
      SRST => sendStart0_n00291,
      O => sendStart0_done_outBuffer_44,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  sendStart0_triggerBuf : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendStart0_triggerBuf_C,
      I => sendStart0_triggerBuf_glue_set_320,
      SRST => sendStart0_n00291,
      O => sendStart0_triggerBuf_198,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  sendByte2_blahblah : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendByte2_blahblah_C,
      I => sendByte2_blahblah_glue_set_321,
      SRST => sendByte2_n0061,
      O => sendByte2_blahblah_207,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  sendByte2_triggerBuf : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendByte2_triggerBuf_C,
      I => sendByte2_triggerBuf_glue_set_322,
      SRST => sendByte2_n0061,
      O => sendByte2_triggerBuf_211,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  sendByte1_blahblah : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendByte1_blahblah_C,
      I => sendByte1_blahblah_glue_set_323,
      SRST => sendByte1_n0061,
      O => sendByte1_blahblah_220,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  sendByte1_triggerBuf : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendByte1_triggerBuf_C,
      I => sendByte1_triggerBuf_glue_set_324,
      SRST => sendByte1_n0061,
      O => sendByte1_triggerBuf_224,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  sendByte0_blahblah : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendByte0_blahblah_C,
      I => sendByte0_blahblah_glue_set_325,
      SRST => sendByte0_n0061,
      O => sendByte0_blahblah_234,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  sendByte0_triggerBuf : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendByte0_triggerBuf_C,
      I => sendByte0_triggerBuf_glue_set_326,
      SRST => sendByte0_n0061,
      O => sendByte0_triggerBuf_238,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  recieveAcknowledge2_triggerBuffer : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge2_triggerBuffer_glue_set_327,
      SRST => recieveAcknowledge2_n0053,
      O => recieveAcknowledge2_triggerBuffer_240,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  recieveAcknowledge2_done_outBuffer : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge2_done_outBuffer_glue_set_328,
      SRST => recieveAcknowledge2_n0053,
      O => recieveAcknowledge2_done_outBuffer_59,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  recieveAcknowledge2_isListening : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge2_isListening_glue_set_329,
      SRST => recieveAcknowledge2_n0053,
      O => recieveAcknowledge2_isListening_241,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  recieveAcknowledge1_triggerBuffer : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge1_triggerBuffer_glue_set_330,
      SRST => recieveAcknowledge1_n0053,
      O => recieveAcknowledge1_triggerBuffer_245,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  recieveAcknowledge1_done_outBuffer : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge1_done_outBuffer_glue_set_331,
      SRST => recieveAcknowledge1_n0053,
      O => recieveAcknowledge1_done_outBuffer_56,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  recieveAcknowledge1_isListening : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge1_isListening_glue_set_332,
      SRST => recieveAcknowledge1_n0053,
      O => recieveAcknowledge1_isListening_246,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  recieveAcknowledge0_triggerBuffer : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge0_triggerBuffer_glue_set_333,
      SRST => recieveAcknowledge0_n0053,
      O => recieveAcknowledge0_triggerBuffer_250,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  recieveAcknowledge0_done_outBuffer : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge0_done_outBuffer_glue_set_334,
      SRST => recieveAcknowledge0_n0053,
      O => recieveAcknowledge0_done_outBuffer_53,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  recieveAcknowledge0_isListening : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge0_isListening_glue_set_335,
      SRST => recieveAcknowledge0_n0053,
      O => recieveAcknowledge0_isListening_251,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_I2C_sendNotAckStop_doneOutBuffer : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => Inst_I2C_sendNotAckStop_doneOutBuffer_glue_set_336,
      SRST => Inst_I2C_sendNotAckStop_n0050,
      O => Inst_I2C_sendNotAckStop_doneOutBuffer_63,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_I2C_sendNotAckStop_triggerBuf : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => Inst_I2C_sendNotAckStop_triggerBuf_glue_set_337,
      SRST => Inst_I2C_sendNotAckStop_n0050,
      O => Inst_I2C_sendNotAckStop_triggerBuf_260,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mcount_slowDownClock_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(1),
      O => Mcount_slowDownClock_cy_1_rt_338,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(2),
      O => Mcount_slowDownClock_cy_2_rt_339,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(3),
      O => Mcount_slowDownClock_cy_3_rt_340,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(4),
      O => Mcount_slowDownClock_cy_4_rt_341,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(5),
      O => Mcount_slowDownClock_cy_5_rt_342,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(6),
      O => Mcount_slowDownClock_cy_6_rt_343,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(7),
      O => Mcount_slowDownClock_cy_7_rt_344,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(8),
      O => Mcount_slowDownClock_cy_8_rt_345,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(9),
      O => Mcount_slowDownClock_cy_9_rt_346,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(10),
      O => Mcount_slowDownClock_cy_10_rt_347,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(11),
      O => Mcount_slowDownClock_cy_11_rt_348,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(12),
      O => Mcount_slowDownClock_cy_12_rt_349,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(13),
      O => Mcount_slowDownClock_cy_13_rt_350,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(14),
      O => Mcount_slowDownClock_cy_14_rt_351,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(15),
      O => Mcount_slowDownClock_cy_15_rt_352,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(16),
      O => Mcount_slowDownClock_cy_16_rt_353,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(17),
      O => Mcount_slowDownClock_cy_17_rt_354,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(18),
      O => Mcount_slowDownClock_cy_18_rt_355,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_19_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(19),
      O => Mcount_slowDownClock_cy_19_rt_356,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_20_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(20),
      O => Mcount_slowDownClock_cy_20_rt_357,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_21_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(21),
      O => Mcount_slowDownClock_cy_21_rt_358,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_22_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(22),
      O => Mcount_slowDownClock_cy_22_rt_359,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_23_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(23),
      O => Mcount_slowDownClock_cy_23_rt_360,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_24_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(24),
      O => Mcount_slowDownClock_cy_24_rt_361,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_25_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(25),
      O => Mcount_slowDownClock_cy_25_rt_362,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_26_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(26),
      O => Mcount_slowDownClock_cy_26_rt_363,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_27_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(27),
      O => Mcount_slowDownClock_cy_27_rt_364,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_28_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(28),
      O => Mcount_slowDownClock_cy_28_rt_365,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_29_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(29),
      O => Mcount_slowDownClock_cy_29_rt_366,
      ADR1 => GND
    );
  Mcount_slowDownClock_cy_30_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(30),
      O => Mcount_slowDownClock_cy_30_rt_367,
      ADR1 => GND
    );
  Mcount_slowDownClock_xor_31_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => slowDownClock(31),
      O => Mcount_slowDownClock_xor_31_rt_368,
      ADR1 => GND
    );
  Inst_I2C_sendNotAckStop_SCL : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => Inst_I2C_sendNotAckStop_SCL_rstpot_369,
      SRST => Inst_I2C_sendNotAckStop_n0050,
      O => Inst_I2C_sendNotAckStop_SCL_62,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Inst_I2C_sendNotAckStop_SDA : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => Inst_I2C_sendNotAckStop_SDA_rstpot_370,
      SRST => Inst_I2C_sendNotAckStop_n0050,
      O => Inst_I2C_sendNotAckStop_SDA_61,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  sendByte2_done_outBuffer : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendByte2_done_outBuffer_C,
      I => sendByte2_done_outBuffer_rstpot_371,
      SRST => sendByte2_n0061,
      O => sendByte2_done_outBuffer_51,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  sendByte1_done_outBuffer : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendByte1_done_outBuffer_C,
      I => sendByte1_done_outBuffer_rstpot_372,
      SRST => sendByte1_n0061,
      O => sendByte1_done_outBuffer_49,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  sendByte0_done_outBuffer : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendByte0_done_outBuffer_C,
      I => sendByte0_done_outBuffer_rstpot_373,
      SRST => sendByte0_n0061,
      O => sendByte0_done_outBuffer_47,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  bufClock : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_out_OBUF_BUFG_7,
      I => bufClock_rstpot_374,
      O => bufClock_405,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  sendByte2_data_Out : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => NlwInverterSignal_sendByte2_data_Out_C,
      I => sendByte2_data_Out_rstpot_375,
      O => sendByte2_data_Out_50,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  sendByte2_enableClock : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendByte2_enableClock_C,
      I => sendByte2_enableClock_rstpot_376,
      O => sendByte2_enableClock_210,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  sendByte1_data_Out : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => NlwInverterSignal_sendByte1_data_Out_C,
      I => sendByte1_data_Out_rstpot_377,
      O => sendByte1_data_Out_48,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  sendByte1_enableClock : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendByte1_enableClock_C,
      I => sendByte1_enableClock_rstpot_378,
      O => sendByte1_enableClock_223,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  sendByte0_data_Out : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => NlwInverterSignal_sendByte0_data_Out_C,
      I => sendByte0_data_Out_rstpot_379,
      O => sendByte0_data_Out_46,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  sendByte0_enableClock : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_sendByte0_enableClock_C,
      I => sendByte0_enableClock_rstpot_380,
      O => sendByte0_enableClock_237,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  recieveAcknowledge2_error : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge2_error_rstpot_381,
      O => recieveAcknowledge2_error_60,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  recieveAcknowledge1_error : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge1_error_rstpot_382,
      O => recieveAcknowledge1_error_57,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  recieveAcknowledge0_error : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge0_error_rstpot_383,
      O => recieveAcknowledge0_error_54,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  recieveAcknowledge2_clk_out : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge2_clk_out_rstpot_384,
      O => recieveAcknowledge2_clk_out_58,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  recieveAcknowledge1_clk_out : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge1_clk_out_rstpot_385,
      O => recieveAcknowledge1_clk_out_55,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  recieveAcknowledge0_clk_out : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveAcknowledge0_clk_out_rstpot_386,
      O => recieveAcknowledge0_clk_out_52,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  recieveByte0_SCL_23 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveByte0_SCL_23_rstpot_387,
      O => recieveByte0_SCL_23_73,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  recieveByte0_done : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => bufClock_BUFG_42,
      I => recieveByte0_done_rstpot_388,
      O => recieveByte0_done_72,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  recieveByte0_GND_8_o_done_AND_36_o1 : X_LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      ADR0 => recieveByte0_bitCount_3_277,
      ADR1 => recieveByte0_bitCount_2_276,
      ADR2 => recieveByte0_bitCount_1_275,
      ADR3 => recieveByte0_bitCount_0_261,
      ADR4 => recieveByte0_done_72,
      O => recieveByte0_GND_8_o_done_AND_36_o
    );
  recieveByte0_done_rstpot : X_LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      ADR0 => recieveByte0_done_72,
      ADR1 => recieveByte0_bitCount_3_277,
      ADR2 => recieveByte0_bitCount_2_276,
      ADR3 => recieveByte0_bitCount_1_275,
      ADR4 => recieveByte0_bitCount_0_261,
      O => recieveByte0_done_rstpot_388
    );
  recieveAcknowledge1_n00671 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => recieveAcknowledge1_isListening_246,
      ADR1 => recieveAcknowledge1_done_outBuffer_56,
      ADR2 => recieveAcknowledge1_triggerBuffer_245,
      O => recieveAcknowledge1_n0067
    );
  recieveAcknowledge0_n00671 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => recieveAcknowledge0_isListening_251,
      ADR1 => recieveAcknowledge0_done_outBuffer_53,
      ADR2 => recieveAcknowledge0_triggerBuffer_250,
      O => recieveAcknowledge0_n0067
    );
  bufClock_rstpot : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => GND_4_o_slowDownClock_31_LessThan_66_o_inv,
      ADR1 => bufClock_405,
      O => bufClock_rstpot_374
    );
  isTriggered_LDC : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => isTriggered_isTriggered_AND_113_o,
      I => isTriggered_P,
      CLK => isTriggered_isTriggered_AND_112_o,
      O => isTriggered_LDC_389,
      GE => VCC,
      SET => GND
    );
  isTriggered_C : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => trigger_BUFGP,
      RST => isTriggered_isTriggered_AND_113_o,
      I => isTriggered_P,
      O => isTriggered_C_390,
      CE => VCC,
      SET => GND
    );
  isTriggered1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => isTriggered_LDC_389,
      ADR1 => isTriggered_C_390,
      ADR2 => isTriggered_P,
      O => isTriggered
    );
  sendByte2_enableClock_rstpot : X_LUT6
    generic map(
      INIT => X"FFFFFDFFAAAAA8AA"
    )
    port map (
      ADR0 => sendByte2_n0098_inv,
      ADR1 => sendByte2_bitCount(2),
      ADR2 => sendByte2_bitCount(1),
      ADR3 => sendByte2_blahblah_207,
      ADR4 => sendByte2_bitCount(0),
      ADR5 => sendByte2_enableClock_210,
      O => sendByte2_enableClock_rstpot_376
    );
  sendByte1_enableClock_rstpot : X_LUT6
    generic map(
      INIT => X"FFFFFDFFAAAAA8AA"
    )
    port map (
      ADR0 => sendByte1_n0098_inv,
      ADR1 => sendByte1_bitCount(2),
      ADR2 => sendByte1_bitCount(1),
      ADR3 => sendByte1_blahblah_220,
      ADR4 => sendByte1_bitCount(0),
      ADR5 => sendByte1_enableClock_223,
      O => sendByte1_enableClock_rstpot_378
    );
  sendByte0_enableClock_rstpot : X_LUT6
    generic map(
      INIT => X"FFFFFDFFAAAAA8AA"
    )
    port map (
      ADR0 => sendByte0_n0098_inv,
      ADR1 => sendByte0_bitCount(2),
      ADR2 => sendByte0_bitCount(1),
      ADR3 => sendByte0_blahblah_234,
      ADR4 => sendByte0_bitCount(0),
      ADR5 => sendByte0_enableClock_237,
      O => sendByte0_enableClock_rstpot_380
    );
  recieveAcknowledge1_n00471_SW0 : X_LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      ADR0 => recieveAcknowledge1_triggerBuffer_245,
      ADR1 => N4,
      ADR2 => recieveAcknowledge1_isListening_246,
      O => N8
    );
  recieveAcknowledge1_clk_out_rstpot : X_LUT6
    generic map(
      INIT => X"FFFF3F0CAAAA2A08"
    )
    port map (
      ADR0 => recieveAcknowledge1_clk_out_55,
      ADR1 => recieveAcknowledge1_done_outBuffer_56,
      ADR2 => reset_IBUF_9,
      ADR3 => N8,
      ADR4 => recieveAcknowledge1_triggerBuffer_trigger_AND_15_o,
      ADR5 => recieveAcknowledge1_n0067,
      O => recieveAcknowledge1_clk_out_rstpot_385
    );
  recieveAcknowledge0_n00471_SW0 : X_LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      ADR0 => recieveAcknowledge0_triggerBuffer_250,
      ADR1 => N4,
      ADR2 => recieveAcknowledge0_isListening_251,
      O => N10
    );
  recieveAcknowledge0_clk_out_rstpot : X_LUT6
    generic map(
      INIT => X"FFFF3F0CAAAA2A08"
    )
    port map (
      ADR0 => recieveAcknowledge0_clk_out_52,
      ADR1 => recieveAcknowledge0_done_outBuffer_53,
      ADR2 => reset_IBUF_9,
      ADR3 => N10,
      ADR4 => recieveAcknowledge0_triggerBuffer_trigger_AND_15_o,
      ADR5 => recieveAcknowledge0_n0067,
      O => recieveAcknowledge0_clk_out_rstpot_386
    );
  sendByte2_n0098_inv2 : X_LUT6
    generic map(
      INIT => X"2222222222222220"
    )
    port map (
      ADR0 => sendByte2_triggerBuf_211,
      ADR1 => sendByte2_done_outBuffer_51,
      ADR2 => sendByte2_bitCount(1),
      ADR3 => sendByte2_bitCount(2),
      ADR4 => sendByte2_blahblah_207,
      ADR5 => sendByte2_bitCount(0),
      O => sendByte2_n0098_inv
    );
  sendByte1_n0098_inv2 : X_LUT6
    generic map(
      INIT => X"2222222222222220"
    )
    port map (
      ADR0 => sendByte1_triggerBuf_224,
      ADR1 => sendByte1_done_outBuffer_49,
      ADR2 => sendByte1_bitCount(1),
      ADR3 => sendByte1_bitCount(2),
      ADR4 => sendByte1_blahblah_220,
      ADR5 => sendByte1_bitCount(0),
      O => sendByte1_n0098_inv
    );
  sendByte0_n0098_inv2 : X_LUT6
    generic map(
      INIT => X"2222222222222220"
    )
    port map (
      ADR0 => sendByte0_triggerBuf_238,
      ADR1 => sendByte0_done_outBuffer_47,
      ADR2 => sendByte0_bitCount(1),
      ADR3 => sendByte0_bitCount(2),
      ADR4 => sendByte0_blahblah_234,
      ADR5 => sendByte0_bitCount(0),
      O => sendByte0_n0098_inv
    );
  Mmux_SCL14 : X_LUT6
    generic map(
      INIT => X"FFFF4F444F444F44"
    )
    port map (
      ADR0 => sendStart1_done_outBuffer_45,
      ADR1 => statusCounter(5),
      ADR2 => sendStart0_done_outBuffer_44,
      ADR3 => statusCounter(0),
      ADR4 => clk_outSendBytes_10_102,
      ADR5 => statusCounter(10),
      O => Mmux_SCL13_286
    );
  sendByte2_done_outBuffer_rstpot : X_LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
    port map (
      ADR0 => sendByte2_triggerBuf_211,
      ADR1 => sendByte2_bitCount(0),
      ADR2 => sendByte2_blahblah_207,
      ADR3 => sendByte2_bitCount(1),
      ADR4 => sendByte2_bitCount(2),
      ADR5 => sendByte2_done_outBuffer_51,
      O => sendByte2_done_outBuffer_rstpot_371
    );
  sendByte1_done_outBuffer_rstpot : X_LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
    port map (
      ADR0 => sendByte1_triggerBuf_224,
      ADR1 => sendByte1_bitCount(0),
      ADR2 => sendByte1_blahblah_220,
      ADR3 => sendByte1_bitCount(1),
      ADR4 => sendByte1_bitCount(2),
      ADR5 => sendByte1_done_outBuffer_49,
      O => sendByte1_done_outBuffer_rstpot_372
    );
  sendByte0_done_outBuffer_rstpot : X_LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
    port map (
      ADR0 => sendByte0_triggerBuf_238,
      ADR1 => sendByte0_bitCount(0),
      ADR2 => sendByte0_blahblah_234,
      ADR3 => sendByte0_bitCount(1),
      ADR4 => sendByte0_bitCount(2),
      ADR5 => sendByte0_done_outBuffer_47,
      O => sendByte0_done_outBuffer_rstpot_373
    );
  Inst_I2C_sendNotAckStop_n00501 : X_LUT4
    generic map(
      INIT => X"8088"
    )
    port map (
      ADR0 => Inst_I2C_sendNotAckStop_doneOutBuffer_63,
      ADR1 => reset_IBUF_9,
      ADR2 => Inst_I2C_sendNotAckStop_triggerBuf_260,
      ADR3 => i2cByte1TriggerSendBytes_9_89,
      O => Inst_I2C_sendNotAckStop_n0050
    );
  recieveByte0_SCL_23_rstpot : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_8_90,
      ADR1 => recieveByte0_SCL_23_73,
      O => recieveByte0_SCL_23_rstpot_387
    );
  sendStart1_triggerBuf_glue_set : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_5_93,
      ADR1 => sendStart1_done_outBuffer_45,
      ADR2 => sendStart1_triggerBuf_196,
      O => sendStart1_triggerBuf_glue_set_318
    );
  sendStart0_triggerBuf_glue_set : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_0_98,
      ADR1 => sendStart0_done_outBuffer_44,
      ADR2 => sendStart0_triggerBuf_198,
      O => sendStart0_triggerBuf_glue_set_320
    );
  Inst_I2C_sendNotAckStop_triggerBuf_glue_set : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Inst_I2C_sendNotAckStop_triggerBuf_260,
      ADR1 => i2cByte1TriggerSendBytes_9_89,
      O => Inst_I2C_sendNotAckStop_triggerBuf_glue_set_337
    );
  sendStart1_done_outBuffer_glue_set : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => sendStart1_triggerBuf_196,
      ADR1 => reset_IBUF_9,
      ADR2 => sendStart1_done_outBuffer_45,
      O => sendStart1_done_outBuffer_glue_set_317
    );
  sendStart0_done_outBuffer_glue_set : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => sendStart0_triggerBuf_198,
      ADR1 => reset_IBUF_9,
      ADR2 => sendStart0_done_outBuffer_44,
      O => sendStart0_done_outBuffer_glue_set_319
    );
  sendByte2_Mmux_bitCount_2_byte_in_7_Mux_0_o_2_f7 : X_LUT5
    generic map(
      INIT => X"41014000"
    )
    port map (
      ADR0 => sendByte2_bitCount(1),
      ADR1 => sendByte2_bitCount(0),
      ADR2 => sendByte2_bitCount(2),
      ADR3 => byteToSend_5_100,
      ADR4 => byteToSend_0_101,
      O => sendByte2_bitCount_2_byte_in_7_Mux_0_o
    );
  sendByte1_Mmux_bitCount_2_byte_in_7_Mux_0_o_2_f7 : X_LUT5
    generic map(
      INIT => X"41014000"
    )
    port map (
      ADR0 => sendByte1_bitCount(1),
      ADR1 => sendByte1_bitCount(0),
      ADR2 => sendByte1_bitCount(2),
      ADR3 => byteToSend_5_100,
      ADR4 => byteToSend_0_101,
      O => sendByte1_bitCount_2_byte_in_7_Mux_0_o
    );
  sendByte0_Mmux_bitCount_2_byte_in_7_Mux_0_o_2_f7 : X_LUT5
    generic map(
      INIT => X"41014000"
    )
    port map (
      ADR0 => sendByte0_bitCount(1),
      ADR1 => sendByte0_bitCount(0),
      ADR2 => sendByte0_bitCount(2),
      ADR3 => byteToSend_5_100,
      ADR4 => byteToSend_0_101,
      O => sendByte0_bitCount_2_byte_in_7_Mux_0_o
    );
  doneOutBuffer5_SW0 : X_LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      ADR0 => statusCounter(5),
      ADR1 => sendStart1_done_outBuffer_45,
      ADR2 => statusCounter(6),
      ADR3 => sendByte2_done_outBuffer_51,
      ADR4 => statusCounter(8),
      ADR5 => recieveByte0_done_72,
      O => N12
    );
  doneOutBuffer5 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
    port map (
      ADR0 => recieveAcknowledge1_done_outBuffer_56,
      ADR1 => statusCounter(4),
      ADR2 => doneOutBuffer3_281,
      ADR3 => recieveAcknowledge2_done_outBuffer_59,
      ADR4 => statusCounter(7),
      ADR5 => N12,
      O => doneOutBuffer
    );
  isTriggered_isTriggered_AND_113_o1 : X_LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      ADR0 => n0013,
      ADR1 => isTriggered_C_390,
      ADR2 => isTriggered_LDC_389,
      O => isTriggered_isTriggered_AND_113_o
    );
  recieveAcknowledge2_n00531 : X_LUT5
    generic map(
      INIT => X"88888088"
    )
    port map (
      ADR0 => reset_IBUF_9,
      ADR1 => recieveAcknowledge2_done_outBuffer_59,
      ADR2 => recieveAcknowledge2_triggerBuffer_240,
      ADR3 => i2cByte1TriggerSendBytes_7_91,
      ADR4 => recieveAcknowledge2_isListening_241,
      O => recieveAcknowledge2_n0053
    );
  recieveAcknowledge1_n00531 : X_LUT5
    generic map(
      INIT => X"88888088"
    )
    port map (
      ADR0 => reset_IBUF_9,
      ADR1 => recieveAcknowledge1_done_outBuffer_56,
      ADR2 => recieveAcknowledge1_triggerBuffer_245,
      ADR3 => i2cByte1TriggerSendBytes_4_94,
      ADR4 => recieveAcknowledge1_isListening_246,
      O => recieveAcknowledge1_n0053
    );
  recieveAcknowledge0_n00531 : X_LUT5
    generic map(
      INIT => X"88888088"
    )
    port map (
      ADR0 => reset_IBUF_9,
      ADR1 => recieveAcknowledge0_done_outBuffer_53,
      ADR2 => recieveAcknowledge0_triggerBuffer_250,
      ADR3 => i2cByte1TriggerSendBytes_2_96,
      ADR4 => recieveAcknowledge0_isListening_251,
      O => recieveAcknowledge0_n0053
    );
  sendByte2_triggerBuf_glue_set : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_6_92,
      ADR1 => sendByte2_done_outBuffer_51,
      ADR2 => sendByte2_triggerBuf_211,
      O => sendByte2_triggerBuf_glue_set_322
    );
  sendByte1_triggerBuf_glue_set : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_3_95,
      ADR1 => sendByte1_done_outBuffer_49,
      ADR2 => sendByte1_triggerBuf_224,
      O => sendByte1_triggerBuf_glue_set_324
    );
  sendByte0_triggerBuf_glue_set : X_LUT5
    generic map(
      INIT => X"FFFF5554"
    )
    port map (
      ADR0 => sendByte0_done_outBuffer_47,
      ADR1 => i2cByte1TriggerSendBytes_6_92,
      ADR2 => i2cByte1TriggerSendBytes_1_97,
      ADR3 => i2cByte1TriggerSendBytes_3_95,
      ADR4 => sendByte0_triggerBuf_238,
      O => sendByte0_triggerBuf_glue_set_326
    );
  recieveAcknowledge2_triggerBuffer_glue_set : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_7_91,
      ADR1 => recieveAcknowledge2_isListening_241,
      ADR2 => recieveAcknowledge2_triggerBuffer_240,
      O => recieveAcknowledge2_triggerBuffer_glue_set_327
    );
  recieveAcknowledge2_done_outBuffer_glue_set : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => recieveAcknowledge2_isListening_241,
      ADR1 => recieveAcknowledge2_triggerBuffer_240,
      ADR2 => recieveAcknowledge2_done_outBuffer_59,
      O => recieveAcknowledge2_done_outBuffer_glue_set_328
    );
  recieveAcknowledge2_isListening_glue_set : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => recieveAcknowledge2_triggerBuffer_240,
      ADR1 => recieveAcknowledge2_done_outBuffer_59,
      ADR2 => recieveAcknowledge2_isListening_241,
      O => recieveAcknowledge2_isListening_glue_set_329
    );
  recieveAcknowledge1_triggerBuffer_glue_set : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_4_94,
      ADR1 => recieveAcknowledge1_isListening_246,
      ADR2 => recieveAcknowledge1_triggerBuffer_245,
      O => recieveAcknowledge1_triggerBuffer_glue_set_330
    );
  recieveAcknowledge1_done_outBuffer_glue_set : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => recieveAcknowledge1_isListening_246,
      ADR1 => recieveAcknowledge1_triggerBuffer_245,
      ADR2 => recieveAcknowledge1_done_outBuffer_56,
      O => recieveAcknowledge1_done_outBuffer_glue_set_331
    );
  recieveAcknowledge1_isListening_glue_set : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => recieveAcknowledge1_triggerBuffer_245,
      ADR1 => recieveAcknowledge1_done_outBuffer_56,
      ADR2 => recieveAcknowledge1_isListening_246,
      O => recieveAcknowledge1_isListening_glue_set_332
    );
  recieveAcknowledge0_triggerBuffer_glue_set : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_2_96,
      ADR1 => recieveAcknowledge0_isListening_251,
      ADR2 => recieveAcknowledge0_triggerBuffer_250,
      O => recieveAcknowledge0_triggerBuffer_glue_set_333
    );
  recieveAcknowledge0_done_outBuffer_glue_set : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => recieveAcknowledge0_isListening_251,
      ADR1 => recieveAcknowledge0_triggerBuffer_250,
      ADR2 => recieveAcknowledge0_done_outBuffer_53,
      O => recieveAcknowledge0_done_outBuffer_glue_set_334
    );
  recieveAcknowledge0_isListening_glue_set : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => recieveAcknowledge0_triggerBuffer_250,
      ADR1 => recieveAcknowledge0_done_outBuffer_53,
      ADR2 => recieveAcknowledge0_isListening_251,
      O => recieveAcknowledge0_isListening_glue_set_335
    );
  Inst_I2C_sendNotAckStop_doneOutBuffer_glue_set : X_LUT6
    generic map(
      INIT => X"FFFFFFFF20202000"
    )
    port map (
      ADR0 => Inst_I2C_sendNotAckStop_stateCounter(2),
      ADR1 => reset_IBUF_9,
      ADR2 => Inst_I2C_sendNotAckStop_triggerBuf_260,
      ADR3 => Inst_I2C_sendNotAckStop_stateCounter(0),
      ADR4 => Inst_I2C_sendNotAckStop_stateCounter(1),
      ADR5 => Inst_I2C_sendNotAckStop_doneOutBuffer_63,
      O => Inst_I2C_sendNotAckStop_doneOutBuffer_glue_set_336
    );
  recieveAcknowledge2_error_rstpot : X_LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      ADR0 => recieveAcknowledge2_error_60,
      ADR1 => recieveAcknowledge2_done_outBuffer_59,
      ADR2 => recieveAcknowledge2_isListening_241,
      ADR3 => recieveAcknowledge2_triggerBuffer_240,
      ADR4 => N4,
      O => recieveAcknowledge2_error_rstpot_381
    );
  recieveAcknowledge1_error_rstpot : X_LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      ADR0 => recieveAcknowledge1_error_57,
      ADR1 => recieveAcknowledge1_done_outBuffer_56,
      ADR2 => recieveAcknowledge1_isListening_246,
      ADR3 => recieveAcknowledge1_triggerBuffer_245,
      ADR4 => N4,
      O => recieveAcknowledge1_error_rstpot_382
    );
  recieveAcknowledge0_error_rstpot : X_LUT5
    generic map(
      INIT => X"BAAA8AAA"
    )
    port map (
      ADR0 => recieveAcknowledge0_error_54,
      ADR1 => recieveAcknowledge0_done_outBuffer_53,
      ADR2 => recieveAcknowledge0_isListening_251,
      ADR3 => recieveAcknowledge0_triggerBuffer_250,
      ADR4 => N4,
      O => recieveAcknowledge0_error_rstpot_383
    );
  sendByte2_blahblah_glue_set : X_LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
    port map (
      ADR0 => sendByte2_blahblah_207,
      ADR1 => sendByte2_bitCount(0),
      ADR2 => sendByte2_done_outBuffer_51,
      ADR3 => sendByte2_bitCount(1),
      ADR4 => sendByte2_triggerBuf_211,
      ADR5 => sendByte2_bitCount(2),
      O => sendByte2_blahblah_glue_set_321
    );
  sendByte1_blahblah_glue_set : X_LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
    port map (
      ADR0 => sendByte1_blahblah_220,
      ADR1 => sendByte1_bitCount(0),
      ADR2 => sendByte1_done_outBuffer_49,
      ADR3 => sendByte1_bitCount(1),
      ADR4 => sendByte1_triggerBuf_224,
      ADR5 => sendByte1_bitCount(2),
      O => sendByte1_blahblah_glue_set_323
    );
  sendByte0_blahblah_glue_set : X_LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
    port map (
      ADR0 => sendByte0_blahblah_234,
      ADR1 => sendByte0_bitCount(0),
      ADR2 => sendByte0_done_outBuffer_47,
      ADR3 => sendByte0_bitCount(1),
      ADR4 => sendByte0_triggerBuf_238,
      ADR5 => sendByte0_bitCount(2),
      O => sendByte0_blahblah_glue_set_325
    );
  sendByte2_data_Out_rstpot : X_LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      ADR0 => sendByte2_data_Out_50,
      ADR1 => sendByte2_done_outBuffer_51,
      ADR2 => sendByte2_triggerBuf_211,
      ADR3 => sendByte2_bitCount_2_byte_in_7_Mux_0_o,
      O => sendByte2_data_Out_rstpot_375
    );
  sendByte1_data_Out_rstpot : X_LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      ADR0 => sendByte1_data_Out_48,
      ADR1 => sendByte1_done_outBuffer_49,
      ADR2 => sendByte1_triggerBuf_224,
      ADR3 => sendByte1_bitCount_2_byte_in_7_Mux_0_o,
      O => sendByte1_data_Out_rstpot_377
    );
  sendByte0_data_Out_rstpot : X_LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      ADR0 => sendByte0_data_Out_46,
      ADR1 => sendByte0_done_outBuffer_47,
      ADR2 => sendByte0_triggerBuf_238,
      ADR3 => sendByte0_bitCount_2_byte_in_7_Mux_0_o,
      O => sendByte0_data_Out_rstpot_379
    );
  Inst_I2C_sendNotAckStop_SCL_rstpot : X_LUT5
    generic map(
      INIT => X"AAAEA2EA"
    )
    port map (
      ADR0 => Inst_I2C_sendNotAckStop_SCL_62,
      ADR1 => Inst_I2C_sendNotAckStop_n0105_inv2,
      ADR2 => Inst_I2C_sendNotAckStop_stateCounter(0),
      ADR3 => Inst_I2C_sendNotAckStop_stateCounter(1),
      ADR4 => Inst_I2C_sendNotAckStop_stateCounter(2),
      O => Inst_I2C_sendNotAckStop_SCL_rstpot_369
    );
  Inst_I2C_sendNotAckStop_SDA_rstpot : X_LUT5
    generic map(
      INIT => X"B2AAABAA"
    )
    port map (
      ADR0 => Inst_I2C_sendNotAckStop_SDA_61,
      ADR1 => Inst_I2C_sendNotAckStop_stateCounter(1),
      ADR2 => Inst_I2C_sendNotAckStop_stateCounter(2),
      ADR3 => Inst_I2C_sendNotAckStop_n0105_inv2,
      ADR4 => Inst_I2C_sendNotAckStop_stateCounter(0),
      O => Inst_I2C_sendNotAckStop_SDA_rstpot_370
    );
  isTriggered_isTriggered_AND_112_o1 : X_LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      ADR0 => n0013,
      ADR1 => isTriggered_LDC_389,
      ADR2 => isTriggered_C_390,
      O => isTriggered_isTriggered_AND_112_o
    );
  out11 : X_LUT6
    generic map(
      INIT => X"FFFFFFFF55455555"
    )
    port map (
      ADR0 => out8,
      ADR1 => statusCounter(2),
      ADR2 => out3,
      ADR3 => statusCounter(1),
      ADR4 => out_288,
      ADR5 => out5_191,
      O => GND_4_o_GND_4_o_Select_23_o
    );
  Mmux_SCL15 : X_LUT6
    generic map(
      INIT => X"FFFFF111F111F111"
    )
    port map (
      ADR0 => isTriggered_LDC_389,
      ADR1 => isTriggered_C_390,
      ADR2 => Inst_I2C_sendNotAckStop_SCL_62,
      ADR3 => statusCounter(9),
      ADR4 => recieveByte0_SCL_23_73,
      ADR5 => statusCounter(8),
      O => Mmux_SCL14_287
    );
  recieveByte0_byte_rec_0_dpot : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_8_90,
      ADR1 => recieveByte0_byte_rec(0),
      ADR2 => recieveByte0_byte_rec_0_SDA_MUX_64_o,
      O => recieveByte0_byte_rec_0_dpot_395
    );
  recieveByte0_byte_rec_1_dpot : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_8_90,
      ADR1 => recieveByte0_byte_rec(1),
      ADR2 => recieveByte0_byte_rec_1_SDA_MUX_63_o,
      O => recieveByte0_byte_rec_1_dpot_396
    );
  recieveByte0_byte_rec_2_dpot : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_8_90,
      ADR1 => recieveByte0_byte_rec(2),
      ADR2 => recieveByte0_byte_rec_2_SDA_MUX_62_o,
      O => recieveByte0_byte_rec_2_dpot_397
    );
  recieveByte0_byte_rec_3_dpot : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_8_90,
      ADR1 => recieveByte0_byte_rec(3),
      ADR2 => recieveByte0_byte_rec_3_SDA_MUX_61_o,
      O => recieveByte0_byte_rec_3_dpot_398
    );
  recieveByte0_byte_rec_4_dpot : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_8_90,
      ADR1 => recieveByte0_byte_rec(4),
      ADR2 => recieveByte0_byte_rec_4_SDA_MUX_60_o,
      O => recieveByte0_byte_rec_4_dpot_399
    );
  recieveByte0_byte_rec_5_dpot : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_8_90,
      ADR1 => recieveByte0_byte_rec(5),
      ADR2 => recieveByte0_byte_rec_5_SDA_MUX_59_o,
      O => recieveByte0_byte_rec_5_dpot_400
    );
  recieveByte0_byte_rec_6_dpot : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_8_90,
      ADR1 => recieveByte0_byte_rec(6),
      ADR2 => recieveByte0_byte_rec_6_SDA_MUX_58_o,
      O => recieveByte0_byte_rec_6_dpot_401
    );
  recieveByte0_byte_rec_7_dpot : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => i2cByte1TriggerSendBytes_8_90,
      ADR1 => recieveByte0_byte_rec(7),
      ADR2 => recieveByte0_byte_rec_7_SDA_MUX_57_o,
      O => recieveByte0_byte_rec_7_dpot_402
    );
  recieveAcknowledge2_clk_out_rstpot : X_MUX2
    port map (
      IA => N14,
      IB => N15,
      SEL => recieveAcknowledge2_clk_out_58,
      O => recieveAcknowledge2_clk_out_rstpot_384
    );
  recieveAcknowledge2_clk_out_rstpot_F : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => recieveAcknowledge2_isListening_241,
      ADR1 => recieveAcknowledge2_done_outBuffer_59,
      ADR2 => recieveAcknowledge2_triggerBuffer_240,
      O => N14
    );
  recieveAcknowledge2_clk_out_rstpot_G : X_LUT6
    generic map(
      INIT => X"5717FFBF5515FFBF"
    )
    port map (
      ADR0 => recieveAcknowledge2_done_outBuffer_59,
      ADR1 => recieveAcknowledge2_isListening_241,
      ADR2 => recieveAcknowledge2_triggerBuffer_240,
      ADR3 => N4,
      ADR4 => reset_IBUF_9,
      ADR5 => i2cByte1TriggerSendBytes_7_91,
      O => N15
    );
  bufClock_BUFG : X_CKBUF
    port map (
      O => bufClock_BUFG_42,
      I => bufClock_405
    );
  clk_out_OBUF_BUFG : X_CKBUF
    port map (
      O => clk_out_OBUF_BUFG_7,
      I => clk_out_OBUF_406
    );
  Mcount_slowDownClock_lut_0_INV_0 : X_INV
    port map (
      I => slowDownClock(0),
      O => Mcount_slowDownClock_lut(0)
    );
  bufClock_INV_40_o1_INV_0 : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => sendByte0_clk_in_inv
    );
  sendByte2_Mcount_bitCount_xor_0_11_INV_0 : X_INV
    port map (
      I => sendByte2_bitCount(0),
      O => sendByte2_Result(0)
    );
  sendByte1_Mcount_bitCount_xor_0_11_INV_0 : X_INV
    port map (
      I => sendByte1_bitCount(0),
      O => sendByte1_Result(0)
    );
  sendByte0_Mcount_bitCount_xor_0_11_INV_0 : X_INV
    port map (
      I => sendByte0_bitCount(0),
      O => sendByte0_Result(0)
    );
  Inst_I2C_sendNotAckStop_Mcount_stateCounter_xor_0_11_INV_0 : X_INV
    port map (
      I => Inst_I2C_sendNotAckStop_stateCounter(0),
      O => Inst_I2C_sendNotAckStop_Result(0)
    );
  statusCounter_0_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => doneOutBuffer,
      CE => isTriggered,
      I => byteToSend(7),
      O => statusCounter_0_1_407,
      SET => GND,
      RST => GND
    );
  clk_outSendBytes_10_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => isTriggered_P,
      CLK => isTriggered,
      GE => PWR_4_o_statusCounter_10_equal_11_o,
      O => clk_outSendBytes_10_1_408,
      SET => GND,
      RST => GND
    );
  SDA_IOBUF_IBUF : X_BUF
    port map (
      I => SDA,
      O => N4
    );
  trigger_BUFGP_BUFG : X_CKBUF
    port map (
      I => trigger_BUFGP_IBUFG_6,
      O => trigger_BUFGP
    );
  trigger_BUFGP_IBUFG : X_CKBUF
    port map (
      I => trigger,
      O => trigger_BUFGP_IBUFG_6
    );
  SDA_IOBUF_OBUFT : X_OBUFT
    port map (
      I => SDA_IOBUF,
      CTL => readingFromSDA_88,
      O => SDA
    );
  dataOut_7_OBUF : X_OBUF
    port map (
      I => recieveByte0_byte_rec(7),
      O => dataOut(7)
    );
  dataOut_6_OBUF : X_OBUF
    port map (
      I => recieveByte0_byte_rec(6),
      O => dataOut(6)
    );
  dataOut_5_OBUF : X_OBUF
    port map (
      I => recieveByte0_byte_rec(5),
      O => dataOut(5)
    );
  dataOut_4_OBUF : X_OBUF
    port map (
      I => recieveByte0_byte_rec(4),
      O => dataOut(4)
    );
  dataOut_3_OBUF : X_OBUF
    port map (
      I => recieveByte0_byte_rec(3),
      O => dataOut(3)
    );
  dataOut_2_OBUF : X_OBUF
    port map (
      I => recieveByte0_byte_rec(2),
      O => dataOut(2)
    );
  dataOut_1_OBUF : X_OBUF
    port map (
      I => recieveByte0_byte_rec(1),
      O => dataOut(1)
    );
  dataOut_0_OBUF : X_OBUF
    port map (
      I => recieveByte0_byte_rec(0),
      O => dataOut(0)
    );
  statusCounterOut_10_OBUF : X_OBUF
    port map (
      I => statusCounter(10),
      O => statusCounterOut(10)
    );
  statusCounterOut_9_OBUF : X_OBUF
    port map (
      I => statusCounter(9),
      O => statusCounterOut(9)
    );
  statusCounterOut_8_OBUF : X_OBUF
    port map (
      I => statusCounter(8),
      O => statusCounterOut(8)
    );
  statusCounterOut_7_OBUF : X_OBUF
    port map (
      I => statusCounter(7),
      O => statusCounterOut(7)
    );
  statusCounterOut_6_OBUF : X_OBUF
    port map (
      I => statusCounter(6),
      O => statusCounterOut(6)
    );
  statusCounterOut_5_OBUF : X_OBUF
    port map (
      I => statusCounter(5),
      O => statusCounterOut(5)
    );
  statusCounterOut_4_OBUF : X_OBUF
    port map (
      I => statusCounter(4),
      O => statusCounterOut(4)
    );
  statusCounterOut_3_OBUF : X_OBUF
    port map (
      I => statusCounter(3),
      O => statusCounterOut(3)
    );
  statusCounterOut_2_OBUF : X_OBUF
    port map (
      I => statusCounter(2),
      O => statusCounterOut(2)
    );
  statusCounterOut_1_OBUF : X_OBUF
    port map (
      I => statusCounter(1),
      O => statusCounterOut(1)
    );
  statusCounterOut_0_OBUF : X_OBUF
    port map (
      I => statusCounter_0_1_407,
      O => statusCounterOut(0)
    );
  SCL_OBUF : X_OBUF
    port map (
      I => SCL_OBUF_87,
      O => SCL
    );
  doneOut_OBUF : X_OBUF
    port map (
      I => clk_outSendBytes_10_1_408,
      O => doneOut
    );
  clk_out_OBUF : X_OBUF
    port map (
      I => clk_out_OBUF_406,
      O => clk_out
    );
  error_out_OBUF : X_OBUF
    port map (
      I => error_out_OBUF_103,
      O => error_out
    );
  NlwBlock_I2CV2_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_I2CV2_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_recieveByte0_bitCount_3_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_recieveByte0_bitCount_3_C
    );
  NlwInverterBlock_recieveByte0_byte_rec_7_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_recieveByte0_byte_rec_7_C
    );
  NlwInverterBlock_recieveByte0_byte_rec_6_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_recieveByte0_byte_rec_6_C
    );
  NlwInverterBlock_recieveByte0_byte_rec_5_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_recieveByte0_byte_rec_5_C
    );
  NlwInverterBlock_recieveByte0_byte_rec_4_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_recieveByte0_byte_rec_4_C
    );
  NlwInverterBlock_recieveByte0_byte_rec_3_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_recieveByte0_byte_rec_3_C
    );
  NlwInverterBlock_recieveByte0_byte_rec_2_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_recieveByte0_byte_rec_2_C
    );
  NlwInverterBlock_recieveByte0_byte_rec_1_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_recieveByte0_byte_rec_1_C
    );
  NlwInverterBlock_recieveByte0_byte_rec_0_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_recieveByte0_byte_rec_0_C
    );
  NlwInverterBlock_recieveByte0_bitCount_0_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_recieveByte0_bitCount_0_C
    );
  NlwInverterBlock_recieveByte0_bitCount_2_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_recieveByte0_bitCount_2_C
    );
  NlwInverterBlock_recieveByte0_bitCount_1_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_recieveByte0_bitCount_1_C
    );
  NlwInverterBlock_sendStart1_done_outBuffer_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendStart1_done_outBuffer_C
    );
  NlwInverterBlock_sendStart1_triggerBuf_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendStart1_triggerBuf_C
    );
  NlwInverterBlock_sendStart0_done_outBuffer_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendStart0_done_outBuffer_C
    );
  NlwInverterBlock_sendStart0_triggerBuf_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendStart0_triggerBuf_C
    );
  NlwInverterBlock_sendByte2_blahblah_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte2_blahblah_C
    );
  NlwInverterBlock_sendByte2_triggerBuf_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte2_triggerBuf_C
    );
  NlwInverterBlock_sendByte1_blahblah_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte1_blahblah_C
    );
  NlwInverterBlock_sendByte1_triggerBuf_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte1_triggerBuf_C
    );
  NlwInverterBlock_sendByte0_blahblah_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte0_blahblah_C
    );
  NlwInverterBlock_sendByte0_triggerBuf_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte0_triggerBuf_C
    );
  NlwInverterBlock_sendByte2_done_outBuffer_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte2_done_outBuffer_C
    );
  NlwInverterBlock_sendByte1_done_outBuffer_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte1_done_outBuffer_C
    );
  NlwInverterBlock_sendByte0_done_outBuffer_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte0_done_outBuffer_C
    );
  NlwInverterBlock_sendByte2_data_Out_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte2_data_Out_C
    );
  NlwInverterBlock_sendByte2_enableClock_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte2_enableClock_C
    );
  NlwInverterBlock_sendByte1_data_Out_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte1_data_Out_C
    );
  NlwInverterBlock_sendByte1_enableClock_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte1_enableClock_C
    );
  NlwInverterBlock_sendByte0_data_Out_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte0_data_Out_C
    );
  NlwInverterBlock_sendByte0_enableClock_C : X_INV
    port map (
      I => bufClock_BUFG_42,
      O => NlwInverterSignal_sendByte0_enableClock_C
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

