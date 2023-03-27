#! /bin/bash
echo "Shell Running"
id1="/home/pratyush/Documents/libcupsfilters"
id2="/home/pratyush/Documents/libcupsfilters/cupsfilters"
id3="/home/pratyush/Documents/cups/cups"

# add the paths of files from the cups directory 
lib1="/home/pratyush/Documents/cups/cups/ipp.h"
lib2="/home/pratyush/Documents/cups/cups/pwg-private.h"
lib3="/home/pratyush/Documents/libcupsfilters/cupsfilters/universal.c"
lib4="/home/pratyush/Documents/libcupsfilters/cupsfilters/raster.c"



cf1="/home/pratyush/Documents/libcupsfilters/cupsfilters/rastertopwg.c"
cf2="/home/pratyush/Documents/libcupsfilters/cupsfilters/pwgtopdf.cxx"
cf3="/home/pratyush/Documents/libcupsfilters/cupsfilters/imagetopdf.c"
cf4="/home/pratyush/Documents/libcupsfilters/cupsfilters/ghostscript.c"
cf5="/home/pratyush/Documents/libcupsfilters/cupsfilters/texttopdf.c"
cf6="/home/pratyush/Documents/libcupsfilters/cupsfilters/bannertopdf.c"
cf7="/home/pratyush/Documents/libcupsfilters/cupsfilters/filter.c"
cf8="/home/pratyush/Documents/libcupsfilters/cupsfilters/ipp.c"
cf9="/home/pratyush/Documents/libcupsfilters/cupsfilters/imagetoraster.c"
cf10="/home/pratyush/Documents/libcupsfilters/cupsfilters/pdftoraster.cxx"
cf11="/home/pratyush/Documents/libcupsfilters/cupsfilters/pdftopdf/pdftopdf.cxx"
cf12="/home/pratyush/Documents/libcupsfilters/cupsfilters/image-colorspace.c"

# gcc `pwd`/"ippTest2.c" -I $id1 -I $id2 -I $id3 $lib3 $lib4 $cf1 $cf2 $cf3 $cf4 $cf5 $cf6 $cf7 $cf8 $cf9 $cf10 $cf11 $cf12 -D_GNU_SOURCE -ldl -lcupsfilters -lcups -lm -ldl

gcc `pwd`/"ippTest2.c" -I $id1 -I $id2 -I $id3 $lib3 -L "/usr/lib" -D_GNU_SOURCE -lfiltersmap -lcups -lm -ldl -o ippTester2.exe
