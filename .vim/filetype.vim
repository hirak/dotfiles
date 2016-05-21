let g:filetype_m="objc"
let g:filetype_md="markdown"

augroup mysetting
    au!
    au FileType javascript :syntax keyword jsBuiltins console require module exports __filename __dirname setTimeout clearTimeout setInterval clearInterval global process of yield $
    au FileType javascript :syntax keyword jsThis http https fs net os assert stream url util arguments valueOf toString prototype app express use error
    au FileType javascript :highlight jsThis ctermfg=darkyellow
    au FileType javascript :highlight jsBuiltins ctermfg=darkblue

    au FileType c set noexpandtab
    au FileType c :syntax keyword stdio fopen fclose fgetc getc fgets fputc putc fputs fread fwrite fprintf fscanf ftell fseek fgetpos fsetpos feof ferror clearerr fflush freopen frename remove getchar putchar puts perror printf scanf strcpy strncpy strcat strncat strlen strcmp strncmp strchr strrchr strcspn strspn strpbrk strstr strtok strerror memcpy memmove memset memcmp memchr
    au FileType c :highlight stdio ctermfg=darkcyan

    au FileType c :syntax keyword alloc malloc calloc realloc free
    au FileType c :highlight alloc ctermfg=darkyellow

    au FileType c :syntax keyword funcs abs labs atof atoi atol strtod strtol strtoul div ldiv rand srand exit abort atexit getenv bsearch qsort system fabs sqrt pow fmod sin cos tan acos asin atan atan2 sinh cosh tanh ceil floor exp log log10 modf frexp ldexp time clock difftime localtime gmtime asctime ctime strftime SUCCESS FAILURE
    au FileType c :highlight funcs ctermfg=darkgreen

    au FileType c :syntax keyword controllib setjmp longjmp assert signal raise
    au FileType c :highlight controllib ctermfg=darkblue

    au FileType c :syntax keyword php_api
        \ zval
        \ zend_class_entry
        \ zend_generator
        \ zend_string
        \ zend_parse_parameters
        \ zend_parse_parameters_ex
        \ zend_parse_parameters_none
        \ zend_parse_parameters_throw
        \ zend_zval_type_name
        \ zend_parse_method_parameters
        \ zend_parse_method_parameters_ex
        \ zend_parse_parameter
        \ zend_register_functions
        \ zend_unregister_functions
        \ zend_startup_module
        \ zend_register_internal_module
        \ zend_register_module_ex
        \ zend_startup_module_ex
        \ zend_startup_modules
        \ zend_collect_module_handlers
        \ zend_destroy_modules
        \ zend_check_magic_method_implementation
        \ zend_register_internal_class
        \ zend_register_internal_class_ex
        \ zend_register_internal_interface
        \ zend_class_implements
        \ zend_hash_add
        \ zend_function_entry
        \ zend_module_entry
        \ zend_function
        \ zend_object
        \ zend_array
        \ zend_resource
        \ zend_uchar
        \ zend_ulong
        \ zend_execute_data
        \ zend_bool
        \ zend_string_init
        \ zend_string_copy
        \ zend_string_release
        \ zend_string_equals
        \ HashTable
    au FileType c :highlight php_api ctermfg=darkmagenta

    au FileType c :syntax keyword php_macro
        \ ZEND_ABSTRACT_ME
        \ ZEND_API
        \ ZEND_ME
        \ ZEND_METHOD
        \ ZEND_FENTRY
        \ ZEND_FE
        \ ZEND_FUNCTION
        \ ZEND_MOD_REQUIRED
        \ ZEND_NUM_ARGS
        \ ZEND_BEGIN_ARG_INFO
        \ ZEND_BEGIN_ARG_INFO_EX
        \ ZEND_END_ARG_INFO
        \ ZVAL_STR_COPY
        \ BEGIN_EXTERN_C
        \ END_EXTERN_C
        \ PHP_INI_BEGIN
        \ PHP_INI_END
        \ PHP_FE
        \ PHP_FE_END
        \ ZEND_FE
        \ ZEND_FE_END
        \ PHP_METHOD
        \ STANDARD_MODULE_HEADER
        \ PHP_MINIT
        \ PHP_MINIT_FUNCTION
        \ PHP_MSHUTDOWN
        \ PHP_MSHUTDOWN_FUNCTION
        \ PHP_RINIT
        \ PHP_RINIT_FUNCTION
        \ PHP_RSHUTDOWN
        \ PHP_RSHUTDOWN_FUNCTION
        \ PHP_MINFO
        \ PHP_MINFO_FUNCTION
        \ PHP_TEST_VERSION
        \ STANDARD_MODULE_PROPERTIES
        \ INTERNAL_FUNCTION_PARAMETERS
        \ RETURN_STR
        \ RETURN_STRING
        \ RETURN_STRINGL
        \ RETURN_RESOURCE
        \ RETURN_NULL
        \ RETURN_BOOL
        \ RETURN_TRUE
        \ RETURN_FALSE
        \ RETURN_LONG
        \ RETURN_DOUBLE
        \ ZVAL_STRING
        \ ZVAL_STRINGL
        \ ZVAL_STRING_EMPTY
        \ RETURN_INTERNED_STR
        \ RETURN_NEW_STR
        \ RETURN_STR_COPY
        \ RETURN_STRING
        \ RETURN_STRINGL
        \ RETURN_EMPTY_STRING
        \ RETURN_RES
        \ RETURN_ARR
        \ RETURN_OBJ
        \ RETURN_ZVAL

    au FileType c :highlight php_macro ctermfg=magenta

    au FileType cpp :syntax keyword std std string cout cerr clog cin fstream istream ostream ifstream ofstream bitset deque list map multimap multiset priority_queue queue set stack vector chrono unordered_map unique_ptr boost make_shared make_unique
    au FileType cpp :highlight std ctermfg=darkcyan

    au FileType yaml setlocal sw=2 sts=2 ts=2
    au FileType ruby setlocal sw=2 sts=2 ts=2
    au FileType html setlocal sw=1 sts=1 ts=1
    au FileType xml  setlocal sw=2 sts=2 ts=2
    au FileType go setlocal sw=2 sts=2 ts=2 noexpandtab
    au FileType go :syntax keyword gospecial err
    au FileType go :highlight gospecial ctermfg=darkyellow

    au BufRead,BufNewFile *.h set ft=c
    au BufRead,BufNewFile *.md,*.markdown set ft=markdown
    au BufRead composer.lock set ft=json
    au BufRead,BufNewFile upstart.conf set ft=upstart
    au BufRead,BufNewFile Berksfile set ft=ruby
    au BufRead,BufNewFile *.ejs set ft=html
    hi SpecialKey ctermfg=black guifg=black

    au FileType php inoremap @ $this->
    au FileType php inoremap @@ @
augroup END
