let g:filetype_m="objc"
let g:filetype_md="markdown"

augroup mysetting
    au!
    au FileType javascript :syntax keyword jsBuiltins console require module exports __filename __dirname setTimeout clearTimeout setInterval clearInterval global process of yield $
    au FileType javascript :syntax keyword jsThis http https fs net os assert stream url util arguments valueOf toString prototype app express use error
    au FileType javascript :highlight jsThis ctermfg=darkyellow
    
    au FileType c :syntax keyword stdio fopen fclose fgetc getc fgets fputc putc fputs fread fwrite fprintf fscanf ftell fseek fgetpos fsetpos feof ferror clearerr fflush freopen frename remove getchar putchar puts perror printf scanf strcpy strncpy strcat strncat strlen strcmp strncmp strchr strrchr strcspn strspn strpbrk strstr strtok strerror memcpy memmove memset memcmp memchr
    au FileType c :highlight stdio ctermfg=darkcyan

    au FileType c :syntax keyword alloc malloc calloc realloc free
    au FileType c :highlight alloc ctermfg=darkyellow

    au FileType c :syntax keyword funcs abs labs atof atoi atol strtod strtol strtoul div ldiv rand srand exit abort atexit getenv bsearch qsort system fabs sqrt pow fmod sin cos tan acos asin atan atan2 sinh cosh tanh ceil floor exp log log10 modf frexp ldexp time clock difftime localtime gmtime asctime ctime strftime
    au FileType c :highlight funcs ctermfg=darkgreen

    au FileType c :syntax keyword controllib setjmp longjmp assert signal raise
    au FileType c :highlight controllib ctermfg=darkblue

    au FileType yaml setlocal sw=2 sts=2 ts=2
    au FileType ruby setlocal sw=2 sts=2 ts=2
    au FileType html setlocal sw=1 sts=1 ts=1
    au FileType xml  setlocal sw=2 sts=2 ts=2
    
    au BufRead,BufNewFile *.md,*.markdown set ft=markdown
    au BufRead composer.lock set ft=json
    au BufRead,BufNewFile upstart.conf set ft=upstart
    au BufRead,BufNewFile Berksfile set ft=ruby
augroup END
