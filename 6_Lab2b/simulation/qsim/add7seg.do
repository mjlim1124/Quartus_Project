onerror {exit -code 1}
vlib work
vlog -work work add7seg.vo
vlog -work work Waveform.vwf.vt
vsim -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.add7seg_vlg_vec_tst
vcd file -direction add7seg.msim.vcd
vcd add -internal add7seg_vlg_vec_tst/*
vcd add -internal add7seg_vlg_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f











