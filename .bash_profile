export PS1="(\u)~>"
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
alias ls='ls -GFh'
alias cd370='cd Documents/Fall18/370'
export EDITOR=/usr/bin/vim
alias ..='cd ../'
alias cd.='cd ..'
alias lsa='ls -aGFh'
alias LS='ls'
alias CD='cd'
alias gs='git status | lolcat'
alias intinfo='curl httpbin.org/anything'
alias brewup='brew update; brew upgrade; brew cleanup --prune-prefix; brew cleanup; brew doctor'

#alias fuck='sudo !!'
alias fucking='sudo'
eval $(thefuck --alias)
eval $(thefuck --alias fuck)
#alias go='!!'
# Wnet funcs
wnoun() {
    wn $1 -synsn 
    wn $1 -antsn
    wn $1 -famln 
    wn $1 -hypen
    wn $1 -hypon 
    wn $1 -treen
    wn $1 -derin 
    wn $1 -domnn
    wn $1 -domtn 
    wn $1 -ssubn
    wn $1 -membn
    wn $1 -hmern
    wn $1 -coorn
    wn $1 -attrn
    wn $1 -grepn
}
wverb() {
    wn $1 -synsv
    wn $1 -antsv
    wn $1 -famlv
    wn $1 -hypev
    wn $1 -hypov 
    wn $1 -treev
    wn $1 -deriv
    wn $1 -coorv
    wn $1 -causv
    wn $1 -domnv
    wn $1 -domtv 
}

wadv() {   
    wn $1 -synsr
    wn $1 -antsr
    wn $1 -famlr
    wn $1 -domnr
    wn $1 -domtr
    wn $1 -pertr
}
wadj() {
    wn $1 -synsa
    wn $1 -antsa
    wn $1 -famla
    wn $1 -domna
    wn $1 -domta
    wn $1 -perta
}

wnet() {
    wnoun $1
    wverb $1
    wadj $1
    wadv $1
}


export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
