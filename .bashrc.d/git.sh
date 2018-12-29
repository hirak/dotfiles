gm() {
    local branch=${1:-master}
    git checkout $branch && git fetch origin --prune && git merge origin/$branch
}
