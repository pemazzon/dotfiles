- copy 70-yes-artwiz-fonts.conf in /etc/fonts/conf.avail/
- ln -s /etc/fonts/conf.avail/70-yes-artwiz-fonts.conf /etc/fonts/conf.d/
- copy everything under misc/ in /usr/share/fonts/X11/misc/
- inside /usr/share/fonts/X11/misc/ type mkfontdir

  you should see some -artwiz-... entries inside the generated fonts.dir

- optional: cat xfonts-artwiz.alias >>/usr/share/fonts/X11/misc/fonts.alias

- profit
