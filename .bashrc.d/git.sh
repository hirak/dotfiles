gm() {
    local branch=${1:-master}
    git checkout $1 && git fetch origin --prune && git merge origin/$1
}
