#!/usr/bin/env bash
#
# Cursor themes : Simp1e recolored with each theme's palette.
#   Neobrutal-<Accent>          : hard offset black shadow instead of the soft 35% one
#   Everforest-Cursors-<Accent> : Everforest colors, Simp1e's soft shadow
# One theme per accent color, so that theme/theme.sh can switch the accent
# without rebuilding anything.
#
#   theme/cursor/build.sh            build and install to ~/.local/share/icons/
#
# Needs : git, python-pillow, rsvg-convert, xcursorgen

set -euo pipefail
# mawk (Ubuntu) follows the locale : keep "." as the decimal separator in the SVG
export LC_ALL=C

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ICONS="${XDG_DATA_HOME:-$HOME/.local/share}/icons"
SIMP1E_REPO="https://gitlab.com/cursors/simp1e.git"
SIMP1E_REF="f8f8f3c09dd0aa31cc9bc5499c683aad025984be"
# rendered sizes : keep in sync with CURSOR_SIZES in theme/theme.sh
SIZES=24,32,48,72

tmp="$(mktemp -d)"; trap 'rm -rf "$tmp"' EXIT
git clone -q "$SIMP1E_REPO" "$tmp/simp1e"
git -C "$tmp/simp1e" -c advice.detachedHead=false checkout -q "$SIMP1E_REF"
git -C "$tmp/simp1e" submodule -q update --init
schemes="$tmp/simp1e/src/color_schemes"
svg="$tmp/simp1e/src/templates/cursors.svg"
mkdir -p "$ICONS"

# build_theme <theme dir> <name prefix> <shadow offset, in template units (one cursor = 24 units)>
# one cursor theme per accent of the theme's dark palette, colors from scheme-<theme dir>.txt
build_theme() {
	local theme="$1" prefix="$2" offset="$3" a hex line to name accents
	# shellcheck source=/dev/null
	( source "$HERE/../$theme/dark.bash"
	  rm -f "$schemes"/*.txt
	  for a in "${accents[@]}"; do
		hex="${!a}"
		sed -e "s/@NAME@/${a^}/" -e "s/@ACCENT@/${hex#\#}/" "$HERE/scheme-$theme.txt" > "$schemes/$prefix-${a^}.txt"
	  done )
	accents="$(cd "$schemes" && ls | sed "s/^$prefix-//; s/\.txt$//")"

	# the "shadows" layer sits exactly under the "cursors" layer : push it down-right
	git -C "$tmp/simp1e" checkout -q -- src/templates/cursors.svg
	if [[ "$offset" != 0 ]]; then
		line="$(grep -n 'inkscape:label="shadows"' "$svg" | cut -d: -f1)"
		[[ -n "$line" ]] || { echo "shadows layer not found in $svg" >&2; exit 1; }
		to="$(awk -v o="$offset" 'BEGIN { printf "translate(%g,%g)", 4 + o, 32 + o }')"
		sed -i "${line},$((line + 2))s/translate(4,32)/$to/" "$svg"
		grep -A2 'inkscape:label="shadows"' "$svg" | grep -q "translate(4,32)" && { echo "shadow offset patch failed" >&2; exit 1; }
	fi

	"$tmp/simp1e/build.sh" --include=cursors.svg --sizes="$SIZES" >/dev/null

	for a in $accents; do
		name="$prefix-$a"
		[[ -d "$tmp/simp1e/built_themes/$name/cursors" ]] || { echo "$name was not built" >&2; exit 1; }
		rm -rf "${ICONS:?}/$name"
		cp -a "$tmp/simp1e/built_themes/$name" "$ICONS/$name"
	done
	echo "cursor themes → $ICONS/$prefix-{$(echo $accents | tr ' ' ,)}"
}

build_theme neobrutal Neobrutal 1.5        # hard offset black shadow
build_theme everforest Everforest-Cursors 0   # Simp1e's soft shadow

# leftover of the single-theme build (now a pointer written by theme/theme.sh)
[[ -d "$ICONS/Neobrutal/cursors" ]] && rm -rf "${ICONS:?}/Neobrutal"
