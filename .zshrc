# zmodload zsh/zprof # top of your .zshrc file
eval $(thefuck --alias)

DISABLE_UNTRACKED_FILES_DIRTY="true"
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh
antigen bundle git
# antigen bundle heroku
# antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats "%F{cyan}%b %"
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

# Use 240 for nice gray
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{magenta}%1~%f%b ${vcs_info_msg_0_} %F{magenta} %# %F{black}'
# Remove log files to speed loads
#sudo rm -rf /private/var/log/asl/*.asl

# export PATH="$HOME/.cargo/bin:/opt/local/USD/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
export PYTHONPATH="/opt/local/USD/lib/python:$PYTHONPATH"
[ "/usr/local/opt/nvm/nvm.sh" ] &&  . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
source ~/dotfiles/.alias
# zprof # bottom of .zshrc

# opam configuration
# test -r /Users/jbbe/.opam/opam-init/init.zsh && . /Users/jbbe/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
