#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
# export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n|---> "
export PS1="(\u)~>"
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
alias ls='ls -GFh'
alias cd370='cd Documents/Fall18/370'
export EDITOR=/usr/bin/vim
alias ..='cd ../'
alias cd.='cd ..'
#function color_prompt {
#	git_stat="$(git status 2> /dev/null)"
#
#	if [[ ${git_stat} =~ "working direcotry clean" ]]; then
#		PS1="\e[0;32mClean git \u :[m"
#	elif [[ ${git_stat} =~ "Changes to be committed" ]]; then
#			PS1="\e[0;35mCommitted git \u : \e[m"
#	else
#		PS1="\e[0;31mUse git \u : \e[m"
#	fi
#	export PS1
#}

#color_prompt

#function cd {
#	builtin cd $@
#
#	color_prompt
#}
