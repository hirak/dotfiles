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
      --exclude-dir='bower_components' \
      --exclude-dir='vendor' \
      --exclude-dir='gen' \
      --exclude='*.min.js' \
      --exclude='*.min.css' \
      --exclude='*clients/admin/web/js/admin.js' \
      --exclude='*httpd/webroot/js/admin.js' \
      --include='*.js' \
      --include='*.json' \
      --include='*.ejs' \
      --include='*.css' \
      --include='*.scss' \
      --include='*.html' \
      --include='*.php' \
      --include='*.rb' \
      --include='*.pl' \
      --include='*.py' \
      "$1" "$dir"
}

# for SQL
greps() {
    local dir=${2:-.}
    LANG=C fgrep --color -Inr \
      --exclude-dir='.git' \
      --exclude-dir='.svn' \
      --exclude-dir='node_modules' \
      --exclude-dir='vendor' \
      --exclude='*.min.js' \
      --exclude='*.min.css' \
      --include='*.sql' \
      "$1" "$dir"
}

# for Go
grepg() {
    local dir=${2:-.}
    LANG=C fgrep --color -Inr \
      --exclude-dir='.git' \
      --exclude-dir='.svn' \
      --exclude-dir='node_modules' \
      --exclude-dir='vendor' \
      --include='*.go' \
      "$1" "$dir"
}

# for Java
grepj() {
    local dir=${2:-.}
    LANG=C fgrep --color -Inr \
      --exclude-dir='.git' \
      --exclude-dir='.svn' \
      --exclude-dir='node_modules' \
      --exclude-dir='vendor' \
      --include='*.java' \
      --include='*.xml' \
      "$1" "$dir"
}

grepa-vim() {
    local dir=${2:-.}
    local target=$(grepa "$@" "$dir" | peco --query "$LBUFFER" | awk -F : '{print "+" $2 " " $1}')
    if [[ "$target" != "" ]]; then
        echo "vim $target" >> ~/.bash_history
        vim $target
    fi
}
grepc-vim() {
    local dir=${2:-.}
    local target=$(grepc "$@" "$dir" | peco --query "$LBUFFER" | awk -F : '{print "+" $2 " " $1}')
    if [[ "$target" != "" ]]; then
        echo "vim $target" >> ~/.bash_history
        vim $target
    fi
}
greph-vim() {
    local dir=${2:-.}
    local target=$(greph "$@" "$dir" | peco --query "$LBUFFER" | awk -F : '{print "+" $2 " " $1}')
    if [[ "$target" != "" ]]; then
        echo "vim $target" >> ~/.bash_history
        vim $target
    fi
}
grepw-vim() {
    local dir=${2:-.}
    local target=$(grepw "$@" "$dir" | peco --query "$LBUFFER" | awk -F : '{print "+" $2 " " $1}')
    if [[ "$target" != "" ]]; then
        echo "vim $target" >> ~/.bash_history
        vim $target
    fi
}
greps-vim() {
    local dir=${2:-.}
    local target=$(greps "$@" "$dir" | peco --query "$LBUFFER" | awk -F : '{print "+" $2 " " $1}')
    if [[ "$target" != "" ]]; then
        echo "vim $target" >> ~/.bash_history
        vim $target
    fi
}

find-vim() {
    local dir=${2:-.}
    local target=$(find "$dir" -name "*$1*" -not -path "*.git*" -not -path "*.svn*" | peco)
    if [[ "$target" != "" ]]; then
        echo "vim $target" >> ~/.bash_history
        vim $target
    fi
}

git-vim() {
    local target=$(git status -s | peco | cut -f3 -d' ')
    if [[ "$target" != "" ]]; then
        echo "vim $target" >> ~/.bash_history
        vim $target
    fi
}

find-cd() {
    local dir=${2:-.}
    local target=$(find "$dir" -name "*$1*" -type d -not -path "*.git*" -not -path "*.svn*" | peco)
    if [[ "$target" != "" ]]; then
        echo "cd $target" >> ~/.bash_history
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
