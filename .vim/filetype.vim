let g:filetype_m="objc"
let g:filetype_md="markdown"

augroup mysetting
    au!
    au FileType javascript :syntax keyword jsBuiltins console require module exports __filename __dirname setTimeout clearTimeout setInterval clearInterval global process of yield $
    au FileType javascript :syntax keyword jsThis http https fs net os assert stream url util arguments valueOf toString prototype app express use error
    au FileType javascript :highlight jsThis ctermfg=darkyellow

    au FileType yaml setlocal sw=2 sts=2 ts=2
    au FileType ruby setlocal sw=2 sts=2 ts=2
    au FileType html setlocal sw=1 sts=1 ts=1
    au FileType xml  setlocal sw=2 sts=2 ts=2
    
    au BufRead,BufNewFile *.md,*.markdown set ft=markdown
    au BufRead composer.lock set ft=json
    au BufRead,BufNewFile upstart.conf set ft=upstart
augroup END
