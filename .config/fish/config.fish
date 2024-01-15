set fish_greeting
alias cl "clear"
alias nv "nvim"
alias bat "batcat"
set PATH $HOME/.local/bin $PATH
set PATH $HOME/.bun/bin $PATH
set -gx EDITOR "nvim"
set -gx VISUAL "nvim"
#alias nano="alacritty -e nano -x"
function fish_prompt
  # interactive user name @ host name, date/time in YYYY-mm-dd format and path
#  /home/pi/.config/openbox/polybar/scroll_spotify_status.sh 
#  # Normal
#echo (set_color --bold blue) [(set_color normal)(set_color green)(pwd)(set_color --bold blue)](set_color normal)(set_color red)
#    echo " ❯ "  
  # Powerline
  #  echo (set_color black)(set_color --background blue)(pwd)(set_color --background normal)(set_color blue) (set_color normal)
  
  # Rounded
  #PS1=$'\E[30m\e[30m\E[40m\E[35m \E[37m\E[40m''${PWD/"$HOME"/\~}'$'\E[0m\E[30m\e[0m \E[30m\e[30m\a\e[33m\e[40m\a$(date +%H:%M)\a\e[0m\E[0m\E[30m\e[0m\n \e[31m\e[32m\e[34\e[0m '
    echo (set_color black)(set_color --background black)(set_color purple) (set_color normal)(set_color --background black)(pwd | sed "s|^$HOME|~|")(set_color --background normal)(set_color black)(set_color --background normal) (set_color black)(set_color yellow)(set_color --background black)(date +%H:%M)(set_color --background normal)(set_color black) #\e[0m\n \e[31m\e[32m\e[34\e[0m
    echo (set_color red) (set_color green) (set_color normal)
  
  # Square
  #echo (set_color --background green)(set_color black)   (set_color green) (set_color normal)(set_color --background black) (pwd | sed "s|^$HOME|~|") (set_color --background normal)  (set_color normal)

  # Alternate front
  #﬌
end
#function fish_right_prompt
#  # interactive user name @ host name, date/time in YYYY-mm-dd format and path
#  echo (set_color blue) [(set_color green)(pwd)(set_color blue)](set_color blue)-[(set_color green)(date +%R)(set_color blue)]
#  echo -e "\n<<<"  #﬌
#end

#function reload_gtk_theme
#  set theme $(gsettings get org.gnome.desktop.interface gtk-theme)
#  gsettings set org.gnome.desktop.interface gtk-theme ''
#  sleep 1
#  gsettings set org.gnome.desktop.interface gtk-theme $theme
#end

#function fish_greeting
#    neofetch
#end

#function _git_branch_name
#set -l branch (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
#if [ "$branch" != "" ]
#echo -[(set_color normal)(set_color green)$branch(set_color --bold blue)](set_color normal)
#    else 
#echo ""
#end
#end
#starship init fish | source

# pnpm
set -gx PNPM_HOME "/home/pi/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
