restart
view signals
view wave
view process

radix unsigned
# add wave -height 30 sim:/*
add wave  sim:/tb_top_eq/N_RESET
#add wave  sim:/tb_top_eq/PWM_SIG
#add wave  sim:/top_eq/PERIOD
#add wave  sim:/top_eq/CNT
#add wave -position end  sim:/tb_top_eq/DUT/PWM_INT_HIGH_LEV_DFF_OUTPUT
add wave -position end  sim:/tb_top_eq/PWM
add wave -position end  sim:/tb_top_eq/CNT
#add wave -position end  sim:/tb_top_eq/DUT/PWM_INT/CCR_SHD
#add wave -position end  sim:/tb_top_eq/DUT/HIGH_LEV
#add wave -position end  sim:/tb_top_eq/DUT/PWM_INT/UEV
#add wave  sim:/top_eq/HIGH_LEV

#add wave  sim:/tb_top_eq/DUT/HIGH_LEV
#add wave  sim:/tb_top_eq/DUT/PWM_INT/PWM

#add wave  sim:/tb_top_eq/DUT/PWM_INT/CCR_SHD
#add wave  sim:/tb_top_eq/DUT/PWM_INT/CNT


run 30 ms