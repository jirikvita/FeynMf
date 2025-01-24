#!/bin/bash

#latex qqtt
#latex qqtt

for i in photon ; do
  latex $i
done


for i in electron_nucleus_photon ; do
  mpost ${i}
  ps2pdf ${i}.1
  echo ${i}.pdf
done


for i in electron_nucleus_photon ; do
  #dvipdf ${i}
  pdfcrop ${i}.1.pdf ${i}_cropped.pdf
done


