#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias prefpipes='pipes.sh -R -r 0 -p 100 -t 0 -t 1 -t 2 -t 3 -t 4 -t 5 -t 6 -t 7 -t 8- t 9';alias ls='ls --color=auto';alias grep='grep --color=auto';alias clr='clear;bash';alias c='clear;bash';alias neofetch='fastfetch';alias neofetchconfig='sudo nano ~/.config/fastfetch/config.jsonc';alias fastfetchconfig='neofetchconfig'
# echo '';echo '';fortune | cowsay -f dragon;echo '';echo ''
echo '';echo '';fastfetch;echo ''
echo -e "Welcome back, \033[1;38;2;0;100;255mE\033[1;38;2;0;130;255ml\033[1;38;2;0;180;255ml\033[1;38;2;0;230;255mi\033[1;38;2;40;255;200mo\033[1;38;2;80;255;100mt\033[1;38;2;130;255;0m \033[1;38;2;180;255;0mC\033[1;38;2;230;255;0mo\033[1;38;2;255;240;20mt\033[1;38;2;255;205;40ms\033[1;38;2;255;170;60md\033[1;38;2;255;135;80mo\033[1;38;2;255;100;100mr\033[0m"
echo '';echo ''

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
