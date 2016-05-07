
# Loop constraints
directive set /gauss_blur/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /gauss_blur/core/core:rlp/main CSTEPS_FROM {{. == 4} {.. == 0}}

# IO operation constraints
directive set /gauss_blur/core/core:rlp/main/regs.regs:asn#2 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/regs.regs:asn#3 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/regs.regs:asn#4 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/asn#223 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/asn#224 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/asn#225 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/asn#226 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/asn#227 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/asn#228 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/asn#229 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#1 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#2 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#3 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#4 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#5 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#6 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#7 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#8 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#9 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#10 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#11 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#12 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#13 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#14 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#15 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#16 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#17 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#18 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#19 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#4:asn#20 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/asn#233 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/asn#234 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/asn#235 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/asn#236 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/asn#237 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/asn#238 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/io_write(volume:rsc.d) CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/io_write(vout:rsc.d) CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/vin:asn(regs.regs(0).sva) CSTEPS_FROM {{.. == 2}}

# Real operation constraints
directive set /gauss_blur/core/core:rlp/main/MAC1:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/MAC1:acc#11 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/MAC1:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/MAC1:acc CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/MAC1:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/MAC1:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/MAC1:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/ACC2-3:MAC1-3:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#19 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#18 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#23 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#22 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#25 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#21 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#20 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#24 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#26 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/mul#7 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/mul#6 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/mul#5 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/mul#4 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/mul#3 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/mul#2 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/mul#1 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#27 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#36 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#28 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/acc#29 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/acc#30 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/acc#31 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/acc#32 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/acc#33 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/acc#34 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/acc#35 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/mul CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#2 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/if#3:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/if#3:acc#4 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/if#3:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/acc#17 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/if#3:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/if#3:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/if#3:acc CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/and CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/and#2 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/and#3 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/aif#11:acc CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/aif#13:aif:acc CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/if#6:acc#2 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/aif#17:aif:acc CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/if#6:acc CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/mux#3 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/acc#6 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/mux#4 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/mux#5 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/deltax_square_blue:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/aif#39:acc CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/aif#41:aif:acc CSTEPS_FROM {{.. == 1}}
directive set /gauss_blur/core/core:rlp/main/aif#45:acc CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/deltay_square_blue:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/aif#47:aif:acc CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/acc#12 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/volume_current:acc#4 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/volume_current:acc CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/volume_current:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/volume_current:acc#5 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/volume_current:acc#2 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/volume_current:acc#6 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/volume_current:acc#7 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/volume_current:acc#3 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/if#17:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/if#17:acc CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/aif#51:acc CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/mux#9 CSTEPS_FROM {{.. == 3}}
directive set /gauss_blur/core/core:rlp/main/or#3 CSTEPS_FROM {{.. == 2}}
directive set /gauss_blur/core/core:rlp/main/or#4 CSTEPS_FROM {{.. == 3}}