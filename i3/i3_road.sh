#!/bin/bash
URL='https://www.google.ch/maps/@46.4849839,6.7659777,12.25z/data=!5m1!1e1'
firefox -new-window -fullscreen "${URL}"
exec i3-msg [class="^Firefox$"] focus

