#!/bin/bash

# update: JK 23.1.2025
# sudo apt-get install feynmf
# sudo apt-get install texlive-metapost


#latex qqtt
#latex qqtt

for i in tt_SM tt_BSM tdecay_SM tdecays_SM ttbardecay_SM ttbardecay6f_SM ; do 
  latex $i
done


for i in qqtt_SM qqtt_zp qqtt_y0 ggtt1 ggtt2 ggtt3 triangle_y0 ttdm1 ttdm2 tdecay tbardecay tdecaylnu tdecayqq ttdecay ttdecay6f ; do
  mpost ${i}
  ps2pdf ${i}.1
  echo ${i}.pdf
done


for i in tt_SM tt_BSM tdecay_SM tdecays_SM ttbardecay_SM ttbardecay6f_SM ; do
  dvipdf ${i}
  pdfcrop ${i}.pdf ${i}_cropped.pdf
done


