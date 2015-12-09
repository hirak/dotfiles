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

    au FileType cpp :syntax keyword std std string cout cerr clog cin fstream istream ostream ifstream ofstream bitset deque list map multimap multiset priority_queue queue set stack vector chrono unordered_map unique_ptr boost make_shared make_unique
    au FileType cpp :highlight std ctermfg=darkcyan

    au FileType yaml setlocal sw=2 sts=2 ts=2
    au FileType ruby setlocal sw=2 sts=2 ts=2
    au FileType html setlocal sw=1 sts=1 ts=1
    au FileType xml  setlocal sw=2 sts=2 ts=2
    au FileType go setlocal sw=2 sts=2 ts=2 noexpandtab
    au FileType go :syntax keyword gospecial err
    au FileType go :highlight gospecial ctermfg=darkyellow

    au BufRead,BufNewFile *.md,*.markdown set ft=markdown
    au BufRead composer.lock set ft=json
    au BufRead,BufNewFile upstart.conf set ft=upstart
    au BufRead,BufNewFile Berksfile set ft=ruby
    hi SpecialKey ctermfg=darkgray
augroup END
