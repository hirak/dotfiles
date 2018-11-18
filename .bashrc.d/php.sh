if [[ -d ~/.php && ! $PATH =~ 'php' ]]; then
    export PATH=~/.php/current/bin:$PATH
fi
ppp() {
    local target=$(ls ~/.php/pman/man3/ | sed 's/.3.gz$//' | peco)
    if [[ "$target" != "" ]]; then
        echo "pman $target" >> ~/.bash_history
        pman $target
    fi
}
