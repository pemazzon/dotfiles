#!/bin/bash
basediricons=/locale/paolo/.idesktop/icons
\rm -f $basediricons/../*.lnk
num=1
x=3814
y=36
iconsize=24

while read icon
do
if [ "x$icon" != "xspacer" ];
then
   linkname=${icon%%.png}
   if [ "$num" -le "9" ];
      then
         link=0${num}-${linkname}.lnk
      else
         link=${num}-${linkname}.lnk
   fi
   echo "table Icon" >../${link}
   echo "    Icon: ${basediricons}/$icon" >>../${link}
   read command
   echo "    $command" >>../${link}
   echo "    Width:  $iconsize" >>../${link}
   echo "    Height: $iconsize" >>../${link}
   echo "    X: $x" >>../${link}
   echo "    Y: $y" >>../${link}
   echo "end" >>../${link}
   let "num++"
fi
read space
let "y+=iconsize+4"
done < allicons.txt
