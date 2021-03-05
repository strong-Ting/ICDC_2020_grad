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
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 8183.867046 -snap {("G1" 3)}
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
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSetPosition -win $_nWave2 {("G1" 14)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSetPosition -win $_nWave2 {("G1" 14)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSetPosition -win $_nWave2 {("G1" 14)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSetPosition -win $_nWave2 {("G1" 14)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 608951.478115 -snap {("G1" 20)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 3034245.240290
verdiWindowResize -win $_Verdi_1 "0" "23" "1920" "1057"
wvResizeWindow -win $_nWave2 0 23 1920 1057
wvResizeWindow -win $_nWave2 0 23 1920 1017
verdiWindowResize -win $_Verdi_1 "0" "23" "1920" "1017"
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 11231.346419 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 8827.082660
wvSetCursor -win $_nWave2 8517.963033
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvZoomIn -win $_nWave2
wvResizeWindow -win $_nWave2 0 23 1920 1057
wvResizeWindow -win $_nWave2 0 23 1536 841
wvResizeWindow -win $_nWave2 1536 45 1344 817
wvResizeWindow -win $_nWave2 1536 45 1344 777
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 19)}
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
{/testfixture/u_SME/p_debug\[7:0\]} \
{/testfixture/u_SME/cnt_m\[4:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
{/testfixture/u_SME/s_debug\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 19)}
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
{/testfixture/u_SME/p_debug\[7:0\]} \
{/testfixture/u_SME/cnt_m\[4:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
{/testfixture/u_SME/s_debug\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSetPosition -win $_nWave2 {("G1" 19)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 49)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 8
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetCursor -win $_nWave2 622880.019549 -snap {("G1" 21)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
verdiWindowResize -win $_Verdi_1 "0" "23" "1536" "801"
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetCursor -win $_nWave2 7959.414996 -snap {("G1" 4)}
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
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
debReload
schCreateWindow -hierFSM -win $_nSchema1 -mode all
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomIn -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetCursor -win $_nWave2 9341.921203 -snap {("G1" 1)}
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
debReload
schCreateWindow -hierFSM -win $_nSchema1 -mode all
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 337294.142060 -snap {("G1" 16)}
wvSetCursor -win $_nWave2 338145.165938 -snap {("G1" 16)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetCursor -win $_nWave2 8239.458453 -snap {("G1" 3)}
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
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvGetSignalOpen -win $_nWave2
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
{/testfixture/u_SME/cnt_m\[4:0\]} \
{/testfixture/u_SME/sub\[5:0\]} \
{/testfixture/u_SME/index_p\[4:0\]} \
{/testfixture/u_SME/p_debug\[7:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
{/testfixture/u_SME/s_debug\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSetPosition -win $_nWave2 {("G1" 18)}
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
{/testfixture/u_SME/cnt_m\[4:0\]} \
{/testfixture/u_SME/sub\[5:0\]} \
{/testfixture/u_SME/index_p\[4:0\]} \
{/testfixture/u_SME/p_debug\[7:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
{/testfixture/u_SME/s_debug\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSetPosition -win $_nWave2 {("G1" 18)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 22)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 7736.580707 -snap {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSetCursor -win $_nWave2 1085034.138657 -snap {("G1" 16)}
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
debReload
schCreateWindow -hierFSM -win $_nSchema1 -mode all
wvSetCursor -win $_nWave2 4172900.389760 -snap {("G1" 18)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSetCursor -win $_nWave2 1856.779370 -snap {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
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
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 6846.873926 -snap {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
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
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSetCursor -win $_nWave2 814915.188730 -snap {("G1" 17)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 825262.865425 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 826539.401242 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 825166.158166 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 826578.084145 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 825436.938491 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 826578.084145 -snap {("G1" 19)}
wvSetCursor -win $_nWave2 825378.914136 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 827680.546896 -snap {("G1" 19)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSetSearchMode -win $_nWave2 -value 
wvSetSearchMode -win $_nWave2 -value CHECK_MATCH
wvSearchPrev -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 3994973.154795 -snap {("G1" 17)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 186944.585005 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 184583.577364 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 183922.495224 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 187227.905922 -snap {("G1" 20)}
wvSetCursor -win $_nWave2 204321.601242 -snap {("G1" 21)}
wvSetCursor -win $_nWave2 207343.691022 -snap {("G1" 17)}
wvSetCursor -win $_nWave2 208382.534384 -snap {("G1" 17)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSetCursor -win $_nWave2 1388896.659660 -snap {("G1" 20)}
wvSetCursor -win $_nWave2 1390879.906078 -snap {("G1" 19)}
wvSetCursor -win $_nWave2 1392768.712191 -snap {("G1" 20)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 15393.769819 -snap {("G1" 3)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSetCursor -win $_nWave2 17282.575931 -snap {("G1" 3)}
wvUnselectUserMarker -win $_nWave2
wvUnselectUserMarker -win $_nWave2
wvSetCursor -win $_nWave2 6988.582617 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 12088.359121 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 47031.272206 -snap {("G1" 0)}
wvSetCursor -win $_nWave2 47314.593123
wvSearchNext -win $_nWave2
wvSetSearchMode -win $_nWave2 -anyChange
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
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
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 8216.306590 -snap {("G1" 2)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
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
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvZoomIn -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvRestoreSignal -win $_nWave2 \
           "/home/DICS_LAB/M10912039/CIC/CIC_2020_grad/version_2/sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvRestoreSignal -win $_nWave2 \
           "/home/DICS_LAB/M10912039/CIC/CIC_2020_grad/version_2/sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 17)}
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 19)}
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
{/testfixture/u_SME/p_debug\[7:0\]} \
{/testfixture/u_SME/s_debug\[7:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 18 19 )} 
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 19)}
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
{/testfixture/u_SME/p_debug\[7:0\]} \
{/testfixture/u_SME/s_debug\[7:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 18 19 )} 
wvSetPosition -win $_nWave2 {("G1" 19)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 18 19 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSetPosition -win $_nWave2 {("G1" 20)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSaveSignal -win $_nWave2 \
           "/home/DICS_LAB/M10912039/CIC/CIC_2020_grad/version_2/sim/signal.rc"
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/\$unit_0x435f8afc"
wvGetSignalSetScope -win $_nWave2 "/testfixture"
wvGetSignalSetScope -win $_nWave2 "/testfixture/u_SME"
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 21)}
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
{/testfixture/u_SME/p_debug\[7:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
{/testfixture/u_SME/s_debug\[7:0\]} \
{/testfixture/u_SME/cnt_m\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 21)}
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
{/testfixture/u_SME/p_debug\[7:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
{/testfixture/u_SME/s_debug\[7:0\]} \
{/testfixture/u_SME/cnt_m\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvSetPosition -win $_nWave2 {("G1" 21)}
wvGetSignalClose -win $_nWave2
debReload
schCreateWindow -hierFSM -win $_nSchema1 -mode all
wvSaveSignal -win $_nWave2 \
           "/home/DICS_LAB/M10912039/CIC/CIC_2020_grad/version_2/sim/signal.rc"
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 8356.522469 -snap {("G1" 3)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
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
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 22)}
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
{/testfixture/u_SME/p_debug\[7:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
{/testfixture/u_SME/s_debug\[7:0\]} \
{/testfixture/u_SME/cnt_m\[4:0\]} \
{/testfixture/u_SME/p_debug_head\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 22 )} 
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 22)}
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
{/testfixture/u_SME/p_debug\[7:0\]} \
{/testfixture/u_SME/index_s\[5:0\]} \
{/testfixture/u_SME/s_debug\[7:0\]} \
{/testfixture/u_SME/cnt_m\[4:0\]} \
{/testfixture/u_SME/p_debug_head\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 22 )} 
wvSetPosition -win $_nWave2 {("G1" 22)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 22 )} 
wvSetRadix -win $_nWave2 -format Ascii
wvSetCursor -win $_nWave2 1643239.419923 -snap {("G1" 21)}
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSetCursor -win $_nWave2 1648993.161891 -snap {("G1" 17)}
wvSetCursor -win $_nWave2 1647059.421154 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 1648924.099721 -snap {("G1" 17)}
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
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
wvSetCursor -win $_nWave2 3504.905085 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 1622.960975
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
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 6474.578359 -snap {("G1" 3)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 22 )} 
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 22 )} 
wvSelectSignal -win $_nWave2 {( "G1" 19 )} 
wvSelectSignal -win $_nWave2 {( "G1" 18 )} 
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1" 21 )} 
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSetCursor -win $_nWave2 26848.645198 -snap {("G1" 8)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
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
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 1174.056876 -snap {("G1" 2)}
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
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
