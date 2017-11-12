restart
view signals
view wave
view process

radix unsigned

add wave  sim:/tb_top_eq/N_RESET
add wave -position end  sim:/tb_top_eq/PWM
add wave -position end  sim:/tb_top_eq/CNT
add wave -position end  sim:/tb_top_eq/DUT/PWM_INT/CCR_SHD
add wave -position end  sim:/tb_top_eq/DUT/PWM_INT/UEV
add wave -position end  sim:/tb_top_eq/DUT/HIGH_LEV




run 30 ms