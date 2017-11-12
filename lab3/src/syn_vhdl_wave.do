onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_bench/DUT/LOCKED
add wave -noupdate /test_bench/DUT/CLK
add wave -noupdate /test_bench/DUT/CLK_SYN
add wave -noupdate -radix decimal -radixshowbase 0 /test_bench/DUT/DATA
add wave -noupdate -radix hexadecimal /test_bench/DUT/D_SYN
add wave -noupdate -radix decimal -radixshowbase 0 /test_bench/DUT/Y
add wave -noupdate /test_bench/DUT/NE
add wave -noupdate -radix binary -radixshowbase 0 /test_bench/DUT/NE_SYN
add wave -noupdate /test_bench/DUT/NWE
add wave -noupdate -radix binary -radixshowbase 0 /test_bench/DUT/NWE_SYN
add wave -noupdate /test_bench/DUT/NOE
add wave -noupdate -radix binary -radixshowbase 0 /test_bench/DUT/NOE_SYN
add wave -noupdate /test_bench/DUT/NWE_PSH
add wave -noupdate /test_bench/DUT/PSH_OUT
add wave -noupdate /test_bench/DUT/TRISTATE
add wave -noupdate /test_bench/DUT/EN
add wave -noupdate /test_bench/DUT/Q_PST
add wave -noupdate /test_bench/DUT/CLK_PE
add wave -noupdate /test_bench/DUT/START
add wave -noupdate -radix decimal -radixshowbase 0 /test_bench/DUT/W
add wave -noupdate /test_bench/DUT/RDY
add wave -noupdate -radix decimal -radixshowbase 0 /test_bench/GAUSS
add wave -noupdate -radix decimal -radixshowbase 0 /test_bench/DATA_VALUE
add wave -noupdate /test_bench/PASSED
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10614337 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 201
configure wave -valuecolwidth 147
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {10492850 ps} {10684279 ps}
