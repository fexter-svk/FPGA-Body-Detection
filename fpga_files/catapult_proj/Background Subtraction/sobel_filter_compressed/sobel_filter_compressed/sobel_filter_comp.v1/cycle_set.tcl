
# Loop constraints
directive set /sobel_filter_comp/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /sobel_filter_comp/core/core:rlp/main CSTEPS_FROM {{. == 3} {.. == 0}}

# IO operation constraints
directive set /sobel_filter_comp/core/core:rlp/main/asn#122 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#123 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#124 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#125 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#126 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#127 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#128 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/regs.regs:asn CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/regs.regs:asn#1 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/regs.regs:asn#2 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/regs.regs:asn#3 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/regs.regs:asn#4 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/regs.regs:asn#5 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/regs.regs:asn#6 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/regs.regs:asn#7 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/regs.regs:asn#8 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#129 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#130 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#131 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#132 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#133 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#134 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#135 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#136 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#137 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#138 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#139 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#140 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#141 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/asn#142 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/io_write(vout:rsc.d) CSTEPS_FROM {{.. == 2}}
directive set /sobel_filter_comp/core/core:rlp/main/vin:asn(regs.regs(0).sva) CSTEPS_FROM {{.. == 2}}

# Real operation constraints
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-1:acc CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#16 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#15 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#18 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#17 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#19 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-1:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#20 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-1:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#24 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#29 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#26 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#28 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#21 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#22 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#23 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#25 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#27 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-1:if:acc#12 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#30 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-1:acc#4 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#32 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#31 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#34 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#33 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#35 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-1:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#36 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-1:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#40 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#45 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#42 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#44 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#37 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#38 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#39 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#41 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#43 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-1:if:acc#13 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#46 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-1:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#48 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#47 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#50 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#49 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#51 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-1:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#52 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-1:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#56 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#61 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#58 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#60 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#53 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#54 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#55 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#57 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#59 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-1:if:acc#14 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#62 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-2:acc CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#64 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#63 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#66 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#65 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#67 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-2:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#68 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-2:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#72 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#77 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#74 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#76 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#69 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#70 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#71 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#73 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#75 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-2:if:acc#12 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#78 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-2:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#80 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#79 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#82 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#81 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#83 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-2:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#84 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-2:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#88 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#93 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#90 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#92 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#85 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#86 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#87 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#89 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#91 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-2:if:acc#14 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#94 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-3:acc CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#96 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#95 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#98 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#97 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#99 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-3:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#100 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-3:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#104 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#109 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#106 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#108 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#101 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#102 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#103 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#105 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#107 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-3:if:acc#12 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#110 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-3:acc#4 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#112 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#111 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#114 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#113 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#115 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-3:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#116 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-3:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#120 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#125 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#122 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#124 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#117 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#118 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#119 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#121 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#123 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-3:if:acc#13 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#126 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-3:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#128 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#127 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#130 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#129 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#131 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-3:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#132 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-3:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#136 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#141 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#138 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#140 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#133 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#134 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#135 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#137 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1:if:acc#139 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC1-3:if:acc#14 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/MAC2:acc#11 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/MAC2:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/MAC2:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/MAC2:acc CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC3-3:MAC2-3:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/MAC2:acc#13 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/MAC2:acc#12 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/MAC2:acc#15 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/MAC2:acc#14 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/ACC3-3:MAC2-3:acc#4 CSTEPS_FROM {{.. == 1}}
directive set /sobel_filter_comp/core/core:rlp/main/abs:if:acc CSTEPS_FROM {{.. == 2}}
directive set /sobel_filter_comp/core/core:rlp/main/abs#1:if:acc CSTEPS_FROM {{.. == 2}}
directive set /sobel_filter_comp/core/core:rlp/main/abs:mux#1 CSTEPS_FROM {{.. == 2}}
directive set /sobel_filter_comp/core/core:rlp/main/abs#1:mux#1 CSTEPS_FROM {{.. == 2}}
directive set /sobel_filter_comp/core/core:rlp/main/acc#12 CSTEPS_FROM {{.. == 2}}
directive set /sobel_filter_comp/core/core:rlp/main/if#6:acc CSTEPS_FROM {{.. == 2}}
directive set /sobel_filter_comp/core/core:rlp/main/mux CSTEPS_FROM {{.. == 2}}
directive set /sobel_filter_comp/core/core:rlp/main/and CSTEPS_FROM {{.. == 2}}