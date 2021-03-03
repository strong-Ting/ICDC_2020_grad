debImport "-sv" "tb_term.sv" "../src/SME.v"
debLoadSimResult \
           /home/DICS_LAB/M10912039/CIC/CIC_2020_grad/version_2/sim/SME.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "1536" "45" "1344" "777"
debReload
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/\$unit_0x435f8afc"
wvGetSignalSetScope -win $_nWave2 "/testfixture"
wvGetSignalSetScope -win $_nWave2 "/testfixture/u_SME"
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/ispattern} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/chardata\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/cs\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/cs\[2:0\]} \
{/testfixture/u_SME/ns\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/cs\[2:0\]} \
{/testfixture/u_SME/ns\[2:0\]} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 9 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/cs\[2:0\]} \
{/testfixture/u_SME/ns\[2:0\]} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 9 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvGetSignalClose -win $_nWave2
verdiWindowResize -win $_Verdi_1 "573" "284" "900" "700"
verdiWindowResize -win $_Verdi_1 "0" "23" "1536" "801"
verdiWindowBeWindow -win $_nWave2
wvResizeWindow -win $_nWave2 2 27 310 330
wvResizeWindow -win $_nWave2 8 31 310 330
wvResizeWindow -win $_nWave2 0 23 1536 801
wvSaveSignal -win $_nWave2 \
           "/home/DICS_LAB/M10912039/CIC/CIC_2020_grad/version_2/sim/signal.rc"
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvResizeWindow -win $_nWave2 0 23 1536 801
wvSetCursor -win $_nWave2 7266.589139 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 1136.480766 -snap {("G1" 2)}
wvZoomOut -win $_nWave2
wvResizeWindow -win $_nWave2 1645 122 310 330
wvResizeWindow -win $_nWave2 1536 45 1344 777
schCreateWindow -hierFSM -win $_nSchema1 -mode all
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
schCreateWindow -hierFSM -win $_nSchema1 -mode all
wvSaveSignal -win $_nWave2 \
           "/home/DICS_LAB/M10912039/CIC/CIC_2020_grad/version_2/sim/signal.rc"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 9077.375864 -snap {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/cs\[2:0\]} \
{/testfixture/u_SME/ns\[2:0\]} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/cnt_s\[5:0\]} \
{/testfixture/u_SME/string_reg\[0:31\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 11 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/cs\[2:0\]} \
{/testfixture/u_SME/ns\[2:0\]} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/cnt_s\[5:0\]} \
{/testfixture/u_SME/string_reg\[0:31\]} \
{/testfixture/u_SME/cnt_p\[4:0\]} \
{/testfixture/u_SME/pattern_reg\[0:7\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 13 14 )} 
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/cs\[2:0\]} \
{/testfixture/u_SME/ns\[2:0\]} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/cnt_s\[5:0\]} \
{/testfixture/u_SME/string_reg\[0:31\]} \
{/testfixture/u_SME/cnt_p\[4:0\]} \
{/testfixture/u_SME/pattern_reg\[0:7\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 13 14 )} 
wvSetPosition -win $_nWave2 {("G1" 14)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 8594.169544 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 10734.083246 -snap {("G1" 11)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 46)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetPosition -win $_nWave2 {("G1" 13)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 54)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetPosition -win $_nWave2 {("G1" 13)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 46)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetPosition -win $_nWave2 {("G1" 13)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 54)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetPosition -win $_nWave2 {("G1" 13)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 46)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetPosition -win $_nWave2 {("G1" 13)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 54)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetPosition -win $_nWave2 {("G1" 13)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 46)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 46)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetCursor -win $_nWave2 9077.375864 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 49822.023040 -snap {("G1" 5)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvExpandBus -win $_nWave2
debReload
schCreateWindow -hierFSM -win $_nSchema1 -mode all
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 65191.435482 -snap {("G1" 15)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetPosition -win $_nWave2 {("G1" 13)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetPosition -win $_nWave2 {("G1" 13)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSetPosition -win $_nWave2 {("G1" 14)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 264924.767750 -snap {("G1" 11)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 46)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 34 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 49964.657490 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 8973.831652 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 11044.715880 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 9077.375864 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 10906.656931 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 48962.606085 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/cs\[2:0\]} \
{/testfixture/u_SME/ns\[2:0\]} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/cnt_s\[5:0\]} \
{/testfixture/u_SME/string_reg\[0:31\]} \
{/testfixture/u_SME/cnt_p\[4:0\]} \
{/testfixture/u_SME/pattern_reg\[0:7\]} \
{/testfixture/u_SME/index_p\[4:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 15 16 )} 
wvSetPosition -win $_nWave2 {("G1" 16)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
debReload
schCreateWindow -hierFSM -win $_nSchema1 -mode all
wvResizeWindow -win $_nWave2 290 182 310 330
wvResizeWindow -win $_nWave2 0 23 1536 801
wvResizeWindow -win $_nWave2 0 23 1536 801
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/cs\[2:0\]} \
{/testfixture/u_SME/ns\[2:0\]} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/cnt_s\[5:0\]} \
{/testfixture/u_SME/string_reg\[0:31\]} \
{/testfixture/u_SME/cnt_p\[4:0\]} \
{/testfixture/u_SME/pattern_reg\[0:7\]} \
{/testfixture/u_SME/cs_p\[2:0\]} \
{/testfixture/u_SME/ns_p\[2:0\]} \
{/testfixture/u_SME/index_p\[4:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 15 16 )} 
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/cs\[2:0\]} \
{/testfixture/u_SME/ns\[2:0\]} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/cnt_s\[5:0\]} \
{/testfixture/u_SME/string_reg\[0:31\]} \
{/testfixture/u_SME/cnt_p\[4:0\]} \
{/testfixture/u_SME/pattern_reg\[0:7\]} \
{/testfixture/u_SME/cs_p\[2:0\]} \
{/testfixture/u_SME/ns_p\[2:0\]} \
{/testfixture/u_SME/index_p\[4:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 15 16 )} 
wvSetPosition -win $_nWave2 {("G1" 16)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSetCursor -win $_nWave2 103256.886275 -snap {("G1" 16)}
wvSetCursor -win $_nWave2 105255.017697 -snap {("G1" 16)}
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvResizeWindow -win $_nWave2 1622 227 310 330
wvResizeWindow -win $_nWave2 1536 45 1344 777
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSaveSignal -win $_nWave2 \
           "/home/DICS_LAB/M10912039/CIC/CIC_2020_grad/version_2/sim/signal.rc"
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/\$unit_0x435f8afc"
wvGetSignalSetScope -win $_nWave2 "/testfixture"
wvGetSignalSetScope -win $_nWave2 "/testfixture/u_SME"
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testfixture/u_SME/clk} \
{/testfixture/u_SME/reset} \
{/testfixture/u_SME/isstring} \
{/testfixture/u_SME/ispattern} \
{/testfixture/u_SME/chardata\[7:0\]} \
{/testfixture/u_SME/cs\[2:0\]} \
{/testfixture/u_SME/ns\[2:0\]} \
{/testfixture/u_SME/match} \
{/testfixture/u_SME/match_index\[4:0\]} \
{/testfixture/u_SME/valid} \
{/testfixture/u_SME/cnt_s\[5:0\]} \
{/testfixture/u_SME/string_reg\[0:31\]} \
{/testfixture/u_SME/cnt_p\[4:0\]} \
{/testfixture/u_SME/pattern_reg\[0:7\]} \
{/testfixture/u_SME/cs_p\[2:0\]} \
{/testfixture/u_SME/ns_p\[2:0\]} \
{/testfixture/u_SME/p_debug\[7:0\]} \
{/testfixture/u_SME/s_debug\[7:0\]} \
{/testfixture/u_SME/index_p\[4:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 17 18 )} 
wvSetPosition -win $_nWave2 {("G1" 18)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 17 18 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSetCursor -win $_nWave2 125216.363901 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 123731.527264 -snap {("G1" 17)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 7700.431861 -snap {("G1" 3)}
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSelectSignal -win $_nWave2 {( "G1" 17 18 19 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetCursor -win $_nWave2 11775.099842 -snap {("G1" 1)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSetCursor -win $_nWave2 155196.704175 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 154885.924414 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 155073.345615 -snap {("G1" 9)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSetCursor -win $_nWave2 7804.025115 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 8529.177891 -snap {("G1" 3)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSetCursor -win $_nWave2 926851.393329 -snap {("G1" 20)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 50)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 50)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 820948.010031 -snap {("G1" 13)}
wvSetMarker -win $_nWave2 -keepViewRange -name "M1" 821000.000000 ID_GREEN5 \
           long_dashed
wvSelectUserMarker -win $_nWave2 -name "M1"
wvSelectUserMarker -win $_nWave2 -name "M1"
wvSelectUserMarker -win $_nWave2 -name "M1"
wvSelectUserMarker -win $_nWave2 -name "M1"
wvSelectUserMarker -win $_nWave2 -name "M1"
wvSetCursor -win $_nWave2 9012.613075 -snap {("G1" 11)}
wvJumpToolbarUserMarker -win $_nWave2 -name "M1"
wvSetCursor -win $_nWave2 818979.931552 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 818289.309860
wvSetCursor -win $_nWave2 819118.055890 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 818047.592268 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 819014.462637 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 817909.467930 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 50)}
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 8045.742707 -snap {("G1" 11)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
