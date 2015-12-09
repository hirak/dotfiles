# for C/C++ header
function greph() {
    LANG=C fgrep --color -Inr \
        --exclude-dir='.git' \
        --exclude-dir='.svn' \
        --include='*.h' \
        --include='*.hpp' \
        "$1" .
}

# for C/C++
function grepc() {
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
        "$1" .
}

# for Web
function grepw() {
    LANG=C fgrep --color -Inr \
      --exclude-dir='.git' \
      --exclude-dir='.svn' \
      --include='*.js' \
      --include='*.css' \
      --include='*.php' \
      --include='*.rb' \
      --include='*.pl' \
      --include='*.py' \
      "$1" .
}
