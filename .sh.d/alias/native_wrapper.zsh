alias ll='ls -l'
alias la='ll -la'
alias sudo='sudo '
case ${OSTYPE} in
    darwin*)
        export CLICOLOR=1
        alias ls='ls -G -F'
        ;;
    linux*)  
        ;;
esac
