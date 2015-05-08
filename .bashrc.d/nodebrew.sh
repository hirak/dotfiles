if [[ -d ~/.nodebrew && ! $PATH =~ nodebrew ]]; then
    export PATH=~/.nodebrew/current/bin:$PATH
fi
