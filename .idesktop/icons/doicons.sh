#!/bin/bash
#
# version 1.0
#
# added the 'Caption:' management
# you can choose between the simpler form
# 
# icon.png
# Command[0]: execute something
#
# or the form with a caption added
#
# icon.png
# Caption: this runs a nice program
# Command[0]: execute something
#
# MANDATORY: put the Caption between
# the icon specification and the Command one
#
# Note the nice trick for the 'Command' directive:
# by using read / echo with "-e" you can define
# multiple Commands in one line by using something like
#
# Command[0]: startvm BlissOS;\\n    Command[1]: stopvm BlissOS;
#
# please preserve the double backslashed \\n 
# and the four spaces before Command[1]

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

# please note the nice trick here ;-)
#
# by using read / echo with the "-e" you can define
# multiple Commands in one line by using something like
#
# Command[0]: startvm BlissOS;\\n    Command[1]: stopvm BlissOS;
#
# notice the double backslashed \\n and the four spaces before Command[1]

   read -e command
   echo -e "    $command" >>../${link}
   if [ $(expr match "$command" '^Caption:') -eq 8 ];
   then
      # That was actually a caption...
      # reading command now
      read -e command
      echo -e "    $command" >>../${link}
   fi
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
