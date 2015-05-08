if [[ -d ~/.ruby && ! $PATH =~ 'ruby' ]]; then
    export PATH=~/.ruby/current/bin:$PATH
fi
