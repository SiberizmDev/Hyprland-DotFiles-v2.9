#!/bin/bash

PROCESS_NAME="gammastep" # veya kullandığınız başka bir uygulama

if pgrep $PROCESS_NAME >/dev/null; then
  pkill $PROCESS_NAME
  notify-send "Ekran sarartma kapatıldı"
else
  gammastep -O 3000 &
  notify-send "Ekran sarartma açıldı"
fi
