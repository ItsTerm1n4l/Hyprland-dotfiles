#!/bin/bash

ICONSDIR="$HOME/.config/eww/icons"
EWWDIR="$HOME/.config/eww/"
DIR="$HOME/.config"
source "$DIR"/Spice/current.py #Import colours

getcolours () {
	FOREGROUND="$foreground"
	BACKGROUND="$background"
	CURSOR="$cursor"
	BLACK="$color0"
	RED="$color1"
	GREEN="$color2"
	YELLOW="$color3"
	BLUE="$color4"
	MAGENTA="$color5"
	CYAN="$color6"
	WHITE="$color7"
	ALTBLACK="$color8"
	ALTRED="$color9"
	ALTGREEN="$color10"
	ALTYELLOW="$color11"
	ALTBLUE="$color12"
	ALTMAGENTA="$color13"
	ALTCYAN="$color14"
	ALTWHITE="$color15"
}

sass () {
	cat > "$EWWDIR"/_colours.scss <<- EOF	

\$BG: ${BACKGROUND};
\$FG: ${FOREGROUND};
\$BLACK: ${BLACK};
\$WHITE: ${BLACK};
\$BLUE: ${BLUE};
\$RED: ${RED};
\$GREEN: ${GREEN};
\$MAGENTA: ${MAGENTA};
\$YELLOW: ${YELLOW};
\$CYAN: ${CYAN};
EOF
}

apps () {
APPSRED="#fe6b85"
APPSBLUE="#67d4f1"
APPSYELLOW="#ffcc57"
APPSGREEN="#b2e07d"
convert "$ICONSDIR"/icons_ref/apps.png -fuzz 15% -fill "${RED}" -opaque "${APPSRED}" "$ICONSDIR"/.appsWIP.png 
convert "$ICONSDIR"/.appsWIP.png -fuzz 15% -fill "${BLUE}" -opaque "${APPSBLUE}" "$ICONSDIR"/.appsWIP.png
convert "$ICONSDIR"/.appsWIP.png -fuzz 15% -fill "${GREEN}" -opaque "${APPSGREEN}" "$ICONSDIR"/.appsWIP.png
convert "$ICONSDIR"/.appsWIP.png -fuzz 15% -fill "${YELLOW}" -opaque "${APPSYELLOW}" "$ICONSDIR"/apps.png
rm "$ICONSDIR"/.appsWIP.png
}

files () {
FILESYELLOW="#ffcc57"
FILESORANGE="#f18831"
convert "$ICONSDIR"/icons_ref/files.png -fuzz 15% -fill "${YELLOW}" -opaque "${FILESYELLOW}" "$ICONSDIR"/.filesWIP.png
convert "$ICONSDIR"/.filesWIP.png -fuzz 15% -fill "${ALTYELLOW}" -opaque "${FILESORANGE}" "$ICONSDIR"/files.png
rm "$ICONSDIR"/.filesWIP.png
}

files () {
PLACESGREEN="#4fb398"
PLACESGREENALT="#63e0be"
convert "$ICONSDIR"/icons_ref/places.png -fuzz 5% -fill "${GREEN}" -opaque "${PLACESGREEN}" "$ICONSDIR"/.placesWIP.png
convert "$ICONSDIR"/.placesWIP.png -fuzz 5% -fill "${ALTGREEN}" -opaque "${PLACESGREENALT}" "$ICONSDIR"/places.png
rm "$ICONSDIR"/.placesWIP.png
}

term () {
TERMBG="#cdcfdb"
convert "$ICONSDIR"/icons_ref/terminal.png -fuzz 15% -fill "${ALTWHITE}" -opaque "${TERMBG}" "$ICONSDIR"/terminal.png 
}

protonmail () {
PROTONBG="#fe6b85"
convert "$ICONSDIR"/icons_ref/protonmail.png -fuzz 15% -fill "${MAGENTA}" -opaque "${PROTONBG}" "$ICONSDIR"/protonmail.png 
}
github () {
GITHUBBG="#b1a6ee"
convert "$ICONSDIR"/icons_ref/github.png -fuzz 15% -fill "${MAGENTA}" -opaque "${GITHUBBG}" "$ICONSDIR"/github.png 
}
volume () {
VOLUMEBG="#ffffff"
convert "$ICONSDIR"/icons_ref/volume.png -fuzz 15% -fill "${GREEN}" -opaque "${VOLUMEBG}" "$ICONSDIR"/volume.png 
}
playpause () {
PLAYBG="#71e58f"
PAUSEBG="#ff716a"
convert "$ICONSDIR"/icons_ref/play.png -fuzz 15% -fill "${GREEN}" -opaque "${PLAYBG}" "$ICONSDIR"/play.png 
convert "$ICONSDIR"/icons_ref/pause.png -fuzz 15% -fill "${RED}" -opaque "${PAUSEBG}" "$ICONSDIR"/pause.png 
}
getcolours
apps
files
term
protonmail
github
volume
playpause
eww reload
