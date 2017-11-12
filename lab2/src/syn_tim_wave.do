restart
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_bench/RDY
add wave -noupdate -radix decimal /test_bench/DATA
add wave -noupdate /test_bench/NOE
add wave -noupdate /test_bench/NE
add wave -noupdate /test_bench/NWE
add wave -noupdate -radix decimal /test_bench/DATA_VALUE
add wave -noupdate -radix decimal /test_bench/GAUSS
add wave -position insertpoint sim:/test_bench/DUT/START/O
add wave -position insertpoint  sim:/test_bench/DUT/Y_0/CE
add wave -position insertpoint  sim:/test_bench/DUT/TRISTATE1/O
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6276071 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 199
configure wave -valuecolwidth 100
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
configure wave -timelineunits ps
update
WaveRestoreZoom {5736842 ps} {6530301 ps}
