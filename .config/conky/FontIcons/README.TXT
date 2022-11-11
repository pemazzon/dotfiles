# conky configuration by BricoMaz <p.e.maz AT libero.it>
# reworked from .conkyrc from fabsh <fabsh@lamerk.org>
# Based on ideas and code from the CunchBang Linux
# forums at http://crunchbanglinux.org
# v. 4.0

This config doesn't need any external image or script: every 
graphical element is made out of fonts!

To correctly use this conky config:

- use the startconky script

- you need 3 particular fonts:

  - Heydings Icons
  - M$ Webdings
  - M$ Wingdings

You find the former in the '_fonts' directory. I downloaded it from
http://www.heydonworks.com/article/a-free-icon-web-font

To install it just copy it in
your ~/.fonts directory and run 

fc-cache -f -v ~/.fonts

I have included also Heydings Controls in the fonts direcory for 
you to experiment.
I have chosen my 'icons' using gucharmap  Note that you must look 
under the 'Latin' AND 'Common' script entry to see all the symbols.

The other 2 fonts are 'Arial Black' (any 'sans serif bold' font 
will be ok) and artwiz glisp  This one comes with the xfonts-artwiz 
package (in ubuntu) which is quite distribution independent, meaning
that you might not find it in your distribution repository but it's 
ok to install the latest version you can find.
If you can't make this work with xft or you prefer a variable space
one just choose anything you want. Be aware that you will have to 
adjust some voffset...

Read the config file! I think it makes a nice use of templates: 
by changing only them you can customize the whole appearance to 
your taste.

Happy conky'ng!

	BricoMaz
