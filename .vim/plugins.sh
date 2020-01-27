while IFS=/ read author name
do
    git submodule add https://github.com/$author/$name pack/$author/start/$name
done << _EOL_
cespare/vim-toml
hashivim/vim-terraform
ekalinin/Dockerfile.vim
itchyny/landscape.vim
itchyny/lightline.vim
NLKNguyen/papercolor-theme
thinca/vim-quickrun
tyru/open-browser-github.vim
tyru/open-browser.vim
hashivim/vim-terraform
editorconfig/editorconfig-vim
_EOL_

