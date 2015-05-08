if [[ -d ~/.php && ! $PATH =~ 'php' ]]; then
    export PATH=~/.php/current/bin:$PATH
fi
