#!/bin/bash

# update: JK 23.1.2025
# sudo apt-get install feynmf
# sudo apt-get install texlive-metapost


#latex qqtt
#latex qqtt

for i in WbWb_nonResBase  ttbardecay_SM tt_SM tt_BSM  tW_singleRes ; do 
  latex $i
done


for i in WbWb_2 WbWb_3  ttdecay qqtt_SM ggtt1 ggtt2 ggtt3 qqtt_zp ttdm2 ttdm1 triangle_y0 tW_2 tW_3 ; do 
  mpost ${i}
  ps2pdf ${i}.1
  echo ${i}.pdf
done


for i in WbWb_nonResBase ttbardecay_SM tt_SM tt_BSM tW_singleRes ; do 
  dvipdf ${i}
  pdfcrop ${i}.pdf ${i}_cropped.pdf
done


