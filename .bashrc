#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/nvm/init-nvm.sh

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias cdd='cd ~/Notes/August2020/'
alias pls='sudo'
alias schedule="python ~/Projects/Scheduler/scheduleChanger.py"
alias journal="exec ~/Projects/Journal/journal.sh"
alias todo="python ~/Projects/Dailies/update.py"
alias points="cat ~/Projects/Dailies/points.txt && printf \"\n\""
alias fail="python ~/Projects/Dailies/fail.py"
alias shop="python ~/Projects/Dailies/shop.py"
alias buy="python ~/Projects/Dailies/shop.py"
alias add="python ~/Projects/Dailies/add.py"
