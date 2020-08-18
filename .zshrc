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
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{magenta}%1~%f%b ${vcs_info_msg_0_} %F{magenta} %# '


export PATH="$HOME/.cargo/bin:/opt/local/USD/bin:$PATH"
# export NVM_DIR="$HOME/.nvm"
export PYTHONPATH="/opt/local/USD/lib/python:$PYTHONPATH"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
source ~/dotfiles/.alias
# zprof # bottom of .zshrc

