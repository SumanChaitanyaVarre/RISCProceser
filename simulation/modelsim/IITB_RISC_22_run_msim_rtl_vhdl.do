transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/DLDCA/updated/cs230_project/cs230_project/Memory.vhd}
vcom -93 -work work {D:/DLDCA/updated/cs230_project/cs230_project/iptoop.vhd}
vcom -93 -work work {D:/DLDCA/updated/cs230_project/cs230_project/TestBench.vhd}
vcom -93 -work work {D:/DLDCA/updated/cs230_project/cs230_project/RegisterFile.vhd}
vcom -93 -work work {D:/DLDCA/updated/cs230_project/cs230_project/ALU.vhd}
vcom -93 -work work {D:/DLDCA/updated/cs230_project/cs230_project/FSM.vhd}
vcom -93 -work work {D:/DLDCA/updated/cs230_project/cs230_project/IITB_RISC_22.vhd}
vcom -93 -work work {D:/DLDCA/updated/cs230_project/cs230_project/Register_16.vhd}
vcom -93 -work work {D:/DLDCA/updated/cs230_project/cs230_project/mux.vhd}
vcom -93 -work work {D:/DLDCA/updated/cs230_project/cs230_project/Register_1.vhd}

vcom -93 -work work {D:/DLDCA/updated/cs230_project/cs230_project/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
