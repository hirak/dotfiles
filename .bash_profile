export LANG=ja_JP.UTF-8
export PATH=~/bin:~/google-cloud-sdk/bin:~/.php/current/bin:~/.krew/bin:$PATH
source ~/.bashrc

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hiraku/google-cloud-sdk/path.bash.inc' ]; then . '/Users/hiraku/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/hiraku/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/hiraku/google-cloud-sdk/completion.bash.inc'; fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
