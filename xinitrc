[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# key refresh rate
xset r rate 320 35

exec herbstluftwm -l
#exec bspwm
#exec chromium
