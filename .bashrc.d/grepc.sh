grepa() {
    local dir=${2:-.}
    LANG=C fgrep --color -Inr \
        --exclude-dir='.git' \
        --exclude-dir='.svn' \
        --exclude='*.min.js' \
        --exclude='*.min.css' \
        "$1" "$dir"
}

# for C/C++ header
greph() {
    local dir=${2:-.}
    LANG=C fgrep --color -Inr \
        --exclude-dir='.git' \
        --exclude-dir='.svn' \
        --include='*.h' \
        --include='*.hpp' \
        "$1" "$dir"
}

# for C/C++
grepc() {
    local dir=${2:-.}
    LANG=C fgrep --color -Inr \
        --exclude-dir='.git' \
        --exclude-dir='.svn' \
        --include='*.h' \
        --include='*.hpp' \
        --include='*.m' \
        --include='*.c' \
        --include='*.cc' \
        --include='*.cpp' \
        --include='*.cxx' \
        "$1" "$dir"
}

# for Web
grepw() {
    local dir=${2:-.}
    LANG=C fgrep --color -Inr \
      --exclude-dir='.git' \
      --exclude-dir='.svn' \
      --exclude-dir='node_modules' \
      --exclude-dir='vendor' \
      --exclude='*.min.js' \
      --exclude='*.min.css' \
      --include='*.js' \
      --include='*.json' \
      --include='*.ejs' \
      --include='*.css' \
      --include='*.scss' \
      --include='*.html' \
      --include='*.php' \
      --include='*.sql' \
      --include='*.rb' \
      --include='*.pl' \
      --include='*.py' \
      "$1" "$dir"
}

# for Go
grepg() {
    local dir=${2:-.}
    LANG=C fgrep --color -Inr \
      --exclude-dir='.git' \
      --exclude-dir='.svn' \
      --exclude-dir='node_modules' \
      --exclude-dir='_vendor' \
      --include='*.go' \
      "$1" "$dir"
}

grepa-vim() {
    vim $(grepa "$@" | peco --query "$LBUFFER" | awk -F : '{print "+" $2 " " $1}')
}
grepc-vim() {
    vim $(grepc "$@" | peco --query "$LBUFFER" | awk -F : '{print "+" $2 " " $1}')
}
greph-vim() {
    vim $(greph "$@" | peco --query "$LBUFFER" | awk -F : '{print "+" $2 " " $1}')
}
grepw-vim() {
    vim $(grepw "$@" | peco --query "$LBUFFER" | awk -F : '{print "+" $2 " " $1}')
}

find-vim() {
    local dir=${2:-.}
    local target=$(find "$dir" -name "*$1*" -type f -not -path "*.git*" -not -path "*.svn*" | peco)
    if [[ "$target" != "" ]]
    then
        vim "$target"
    fi
}

git-vim() {
    local target=$(git status -s | peco | cut -f3 -d' ')
    if [[ "$target" != "" ]]
    then
        vim "$target"
    fi
}

find-cd() {
    local dir=${2:-.}
    local target=$(find "$dir" -name "*$1*" -type d -not -path "*.git*" -not -path "*.svn*" | peco)
    if [[ "$target" != "" ]]
    then
        cd "$target"
    fi
}

locate-cd() {
    local target=$(locate "$1" | peco)
    if [[ "$target" != "" ]]
    then
        cd "$target"
    fi
}
