#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# auto color ls
alias ls='ls --color=auto'

# Make sure cursor is blinking I-beam
# echo -e "\e[5 q"

# enable starship prompt
eval "$(starship init bash)"

# bind ctrl-x to emit SIGINT (on xterm / kitty without copy_or_interrupt)
# stty intr ^X

# load .local
PATH="$PATH:$HOME/.local/bin"

# nano as EDITOR
export EDITOR=nano

# if there is .bash_aliases load it
[[ -f $HOME/.bash_aliases ]] && source $HOME/.bash_aliases

# fnm
export PATH=/home/takase/.fnm:$PATH
eval "`fnm env`"
