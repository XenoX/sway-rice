# ------------------------------------------------------------------------------
# Cyberpunk — Dark (Night City) : neon yellow, cyan rules, red "glitch" shadows
# ------------------------------------------------------------------------------

# UI
bg='#0A0E14'        # night
grid='#0B4350'      # wallpaper grid lines (dim cyan)
pride=             # wallpaper : rainbow stripes instead of the grid (empty = off)
neon_grid=1         # wallpaper : thin line grid instead of the dot grid
surface='#141A24'   # chips / cards
fg='#E6F1FF'        # text on bg/surface
ink='#0A0E14'       # text on colored chips
border='#00F0FF'    # cyan rules
shadow='#FF003C'    # offset shadow in red : chromatic "glitch"
muted='#6B7A90'

# Accents (neon)
yellow='#FCEE0A'
red='#FF003C'
blue='#3D8BFF'
green='#00FF9F'
purple='#B967FF'
orange='#FF8A00'
cyan='#00F0FF'
pink='#FF2A6D'
mint="$green"
rose="$pink"

main="$yellow"
accent="$yellow"
# default accent name (cursor color, theme panel) ; theme/.cyberpunk_accent overrides main + accent
accent_name='yellow'

# Terminal
term_bg='#0A0E14'
term_fg='#E6F1FF'
color0='#141A24'; color8='#3A4658'
color1='#FF003C'; color9='#FF4D6D'
color2='#00FF9F'; color10='#5CFFC0'
color3='#FCEE0A'; color11='#FFF45C'
color4='#3D8BFF'; color12='#7AB0FF'
color5='#FF2A6D'; color13='#B967FF'
color6='#00F0FF'; color14='#66F7FF'
color7='#C5D1E0'; color15='#FFFFFF'

# GTK
gtk_theme='Adwaita-dark'
gtk_icons='Papirus-Dark'
gtk_scheme='prefer-dark'
# cursor_theme is <cursor_prefix>-<Accent> (theme/cursor/build.sh), set by theme/theme.sh
cursor_prefix='Neobrutal'
cursor_size=24

# Shape : sharp corners, thin neon rules, small offset shadow
bw=2; bw_small=1; radius=0; shadow_off=3; press_off=2
gaps_in=14; gaps_out=6; weight=700
# subset of the Neobrutal cursor colors (already built)
accents=(yellow cyan red pink purple green blue orange)
