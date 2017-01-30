#!/usr/bin/bash
LISTE=/k/mydockerdir/Liste.txt
echo $LISTE umleitung
echo  Liste  >Liste.txt
Date  >>$LISTE
cd
cd mydockerdir
uname -a   >>$LISTE
