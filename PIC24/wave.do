onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /tbw/clk
add wave -noupdate -format Literal -radix hexadecimal /tbw/inw0
add wave -noupdate -format Literal -radix hexadecimal /tbw/inw1
add wave -noupdate -format Literal -radix hexadecimal /tbw/out0
add wave -noupdate -format Literal -radix hexadecimal /tbw/uut/aluop
add wave -noupdate -format Literal -radix hexadecimal /tbw/uut/rddata1
add wave -noupdate -format Literal -radix hexadecimal /tbw/uut/rddata2
add wave -noupdate -format Literal -radix hexadecimal /tbw/uut/pc
add wave -noupdate -format Logic -radix hexadecimal /tbw/uut/c
add wave -noupdate -format Logic -radix hexadecimal /tbw/uut/n
add wave -noupdate -format Logic -radix hexadecimal /tbw/uut/ov
add wave -noupdate -format Logic -radix hexadecimal /tbw/uut/z
add wave -noupdate -format Literal -radix hexadecimal /tbw/uut/instr
add wave -noupdate -format Literal -radix hexadecimal -expand /tbw/uut/xlxi_7/s16regs16
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {108251 ps} 0}
configure wave -namecolwidth 150
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
WaveRestoreZoom {750625 ps} {1013125 ps}
