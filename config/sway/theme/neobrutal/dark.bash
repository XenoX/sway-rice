# ------------------------------------------------------------------------------
# Neo Brutalism — Dark
# ------------------------------------------------------------------------------

# UI
bg='#2A2B30'        # charcoal page (light enough for black shadows to read)
grid='#34353B'      # wallpaper grid lines
pride=             # wallpaper : rainbow stripes instead of the dot grid (empty = dot grid)
surface='#3B3D44'   # neutral chips / cards
fg='#FFF4E0'        # text on bg/surface
ink='#000000'       # text on colored chips
border='#000000'
shadow='#000000'
muted='#A09A8E'

# Accents (flat, saturated)
yellow='#FFDC58'
red='#FF6B6B'
blue='#88AAEE'
green='#A3E636'
purple='#A388EE'
orange='#FF9F45'
cyan='#5DD9E6'
pink='#FF90E8'

main="$yellow"
accent="$yellow"
# default accent name (cursor color, theme panel) ; theme/.neobrutal_accent overrides main + accent
accent_name='yellow'

# Terminal
term_bg='#232428'
term_fg='#FFF4E0'
color0='#3B3D44'; color8='#5C5F69'
color1='#FF6B6B'; color9='#FF8F8F'
color2='#A3E636'; color10='#BDF26A'
color3='#FFDC58'; color11='#FFE88A'
color4='#88AAEE'; color12='#A9C2F4'
color5='#A388EE'; color13='#BEA9F4'
color6='#5DD9E6'; color14='#8BE6EE'
color7='#E6DDCB'; color15='#FFFFFF'

# GTK
gtk_theme='Manhattan'
gtk_icons='Luv-Folders-Dark'
gtk_scheme='prefer-dark'
# cursor_theme is <cursor_prefix>-<Accent> (theme/cursor/build.sh), set by theme/theme.sh
cursor_prefix='Neobrutal'
cursor_size=24

# Shape (read by theme/theme.sh : sway, mako, quickshell, hyprlock…)
bw=3; bw_small=2; radius=0; shadow_off=6; press_off=3
gaps_in=20; gaps_out=8; weight=800
accents=(yellow red blue green purple orange cyan pink)
