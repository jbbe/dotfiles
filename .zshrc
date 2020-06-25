zmodload zsh/zprof # top of your .zshrc file
eval $(thefuck --alias)
#source ~/dotfiles/.alias

# Use 240 for nice gray
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{magenta}%1~%f%b %# '

zprof # bottom of .zshrc
