# ------------------------------------------------------------------------------
# Cyberpunk — Light (daylight) : pale concrete, darkened neons stay readable
# ------------------------------------------------------------------------------

# UI
bg='#E8EAED'        # concrete
grid='#C9D3DC'      # wallpaper grid lines
pride=             # wallpaper : rainbow stripes instead of the grid (empty = off)
neon_grid=1         # wallpaper : thin line grid instead of the dot grid
surface='#FFFFFF'   # chips / cards
fg='#0A0E14'        # text on bg/surface
ink='#0A0E14'       # text on colored chips
border='#0A0E14'
shadow='#E0003A'    # offset shadow in red : chromatic "glitch"
muted='#5E6A7A'

# Accents (neon, a bit deeper than the dark mode except the chip fills)
yellow='#FCEE0A'
red='#E0003A'
blue='#2F6FE0'
green='#00C27A'
purple='#8F3FE0'
orange='#F07800'
cyan='#00B8C8'
pink='#E8205E'
mint="$green"
rose="$pink"

main="$yellow"
accent="$cyan"
# default accent name (cursor color, theme panel) ; theme/.cyberpunk_accent overrides main + accent
accent_name='cyan'

# Terminal
term_bg='#E8EAED'
term_fg='#0A0E14'
color0='#0A0E14'; color8='#5E6A7A'
color1='#C8002F'; color9='#E0003A'
color2='#008A55'; color10='#00A867'
color3='#8F7A00'; color11='#B39A00'
color4='#1F55C0'; color12='#2F6FE0'
color5='#B0104A'; color13='#7A2FC8'
color6='#007F8C'; color14='#00A0AE'
color7='#5E6A7A'; color15='#3A4658'

# GTK
gtk_theme='Adwaita'
gtk_icons='Papirus'
gtk_scheme='prefer-light'
# cursor_theme is <cursor_prefix>-<Accent> (theme/cursor/build.sh), set by theme/theme.sh
cursor_prefix='Neobrutal'
cursor_size=24

# Shape : sharp corners, thin rules, small offset shadow
bw=2; bw_small=1; radius=0; shadow_off=3; press_off=2
gaps_in=14; gaps_out=6; weight=700
# subset of the Neobrutal cursor colors (already built)
accents=(yellow cyan red pink purple green blue orange)
