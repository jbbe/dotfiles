# zmodload zsh/zprof # top of your .zshrc file
eval $(thefuck --alias)

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats "%F{cyan}%b %"
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

# Use 240 for nice gray
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{magenta}%1~%f%b ${vcs_info_msg_0_} %# '
source ~/dotfiles/.alias
# zprof # bottom of .zshrc
