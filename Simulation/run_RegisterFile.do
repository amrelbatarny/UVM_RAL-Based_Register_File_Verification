vlib work
vlog -f src_files.list -mfcu +cover +define+SIM
vsim -voptargs=+acc work.RegisterFile_top -classdebug -uvmcontrol=all -cover  +UVM_NO_RELNOTES

add wave -color red 		sim:/RegisterFile_top/RegisterFileif/clk
add wave -color cyan 		sim:/RegisterFile_top/RegisterFileif/RegWrite
add wave -color cyan 		sim:/RegisterFile_top/RegisterFileif/addr
add wave					sim:/RegisterFile_top/RegisterFileif/write_data
add wave					sim:/RegisterFile_top/RegisterFileif/read_data
add wave					sim:/RegisterFile_top/RegisterFileif/valid
add wave -color gold 		sim:/RegisterFile_top/DUT/rxtx0
add wave -color gold 		sim:/RegisterFile_top/DUT/rxtx1
add wave -color gold 		sim:/RegisterFile_top/DUT/rxtx2
add wave -color gold 		sim:/RegisterFile_top/DUT/rxtx3
add wave -color gold 		sim:/RegisterFile_top/DUT/ctrl
add wave -color gold 		sim:/RegisterFile_top/DUT/divider
add wave -color gold 		sim:/RegisterFile_top/DUT/ss

.vcop Action toggleleafnames
#coverage save FIFO_tb.ucdb -onexit -du FIFO
run -all
#coverage report -detail -cvg -directive -comments -output seqcover_report.txt /.
#coverage report -detail -cvg -directive -comments -output fcover_report.txt {}
#quit -sim
#vcover report FIFO_tb.ucdb -details -annotate -all -output coverage_rpt.txt
#+UVM_VERBOSITY=UVM_MEDIUM