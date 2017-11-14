onerror {resume}
vsim -t 1ps -novopt work.test_bench(topeq_tb)
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_bench/DATA
add wave -noupdate /test_bench/DUT/CLK_PE
add wave -noupdate /test_bench/DUT/RDY
add wave -noupdate /test_bench/DUT/W
add wave -noupdate /test_bench/DUT/Y
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/STATE
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/START
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/RDY
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/STORE_Q
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/CMP_LOOP
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/CMP_UPDA
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/ENQ
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/ENR
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/ENN
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/ENT
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/SELQ
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/SELR
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/SELN
add wave -noupdate /test_bench/DUT/EQ_PE_I/CTL_P/SELXQ
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/ENQ
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/CMP_LOOP
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/CMP_UPDA
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/REGQ
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/REGR
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/REGN
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/REGT
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/CMP_LOOP_I
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/CMP_UPDA_I
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/LS0
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/LS1
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/RS
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/ADD
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/SUB
add wave -noupdate /test_bench/DUT/EQ_PE_I/DATA_P/DECR
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {273 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 404
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {741 ns}

run 2 ms
