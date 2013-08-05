" Vim color file --- psc (peak sea color)
" Maintainer:   Hiraku NAKANO
" URL:      
" Last Change:  31 Oct 2008
" Version:  1.0

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = expand("<sfile>:t:r")

if &background=='light' 
    " for background=light {{{2
    " LIGHT COLOR DEFINE START
    hi Function ctermfg=darkgreen
    hi Repeat ctermfg=darkgreen
    hi String ctermfg=darkmagenta
    hi Number ctermfg=darkmagenta
    hi Boolean ctermfg=darkmagenta
    hi Normal ctermfg=black ctermbg=white
    hi Cursor ctermfg=gray
    hi Comment ctermfg=darkcyan
    hi Constant term=underline ctermfg=blue
    hi Special ctermfg=blue
    hi Identifier term=underline ctermfg=white
    hi Statement ctermfg=blue
    hi PreProc term=underline ctermfg=darkgreen
    hi Type term=underline ctermfg=darkgreen
    hi Underlined term=underline cterm=underline ctermfg=darkcyan
    hi Ignore ctermfg=blue
    hi Error term=bold ctermbg=darkmagenta ctermfg=black
    hi Todo term=bold ctermfg=black ctermbg=darkcyan
    hi Pmenu ctermbg=black ctermfg=gray
    hi PmenuSel ctermbg=darkcyan ctermfg=black
    hi PmenuSbar ctermbg=darkred
    hi PmenuThumb cterm=reverse ctermfg=gray
    hi TabLine term=underline cterm=underline ctermfg=white ctermbg=darkred
    hi TabLineSel term=bold
    hi TabLineFill term=reverse cterm=reverse
    hi MatchParen term=reverse ctermfg=brown ctermbg=darkcyan
    hi SpecialKey term=bold ctermfg=gray
    hi NonText term=bold ctermfg=blue
    hi Directory term=bold ctermfg=brown
    hi ErrorMsg ctermbg=darkmagenta ctermfg=black
    hi IncSearch term=reverse cterm=reverse ctermfg=brown ctermbg=black
    hi Search term=reverse ctermfg=black ctermbg=brown
    hi MoreMsg term=bold ctermfg=darkgreen
    hi ModeMsg term=bold ctermfg=darkmagenta
    hi LineNr term=bold ctermfg=brown ctermbg=black
    hi Question term=bold ctermfg=blue
    hi StatusLine term=bold,reverse cterm=reverse ctermfg=blue ctermbg=black
    hi StatusLineNC term=bold,reverse cterm=reverse ctermfg=blue ctermbg=black
    hi VertSplit ctermfg=black ctermbg=darkred term=reverse cterm=reverse
    hi Title ctermfg=gray
    hi Visual term=reverse cterm=reverse ctermfg=darkcyan ctermbg=black
    hi VisualNOS term=bold,underline ctermfg=darkcyan ctermbg=black
    hi WarningMsg term=bold ctermfg=darkmagenta
    hi WildMenu term=bold ctermfg=black ctermbg=darkcyan
    hi Folded ctermbg=darkcyan ctermfg=black
    hi FoldColumn ctermbg=darkcyan ctermfg=black
    hi DiffAdd term=bold ctermbg=brown ctermfg=black
    hi DiffChange term=bold ctermbg=darkred
    hi DiffDelete term=bold ctermfg=black ctermbg=brown
    hi DiffText term=reverse ctermbg=darkmagenta ctermfg=black
    hi SignColumn term=bold ctermfg=black ctermbg=darkcyan

    " }}}2
elseif &background=='dark' 
    " for background=dark {{{2
    " DARK COLOR DEFINE START
    syn match	perlMemberSelector	"->"	contained display
    hi link  perlMemberSelector  Structure
    "hi perlIdentifier ctermfg=yellow
    hi Function ctermfg=green
    hi Repeat ctermfg=green
    hi String ctermfg=magenta
    hi Number ctermfg=magenta term=bold
    hi Boolean ctermfg=magenta term=bold
    hi Normal ctermfg=white
    hi Cursor ctermfg=gray
    hi Comment ctermfg=lightcyan
    hi Constant term=underline ctermfg=blue
    hi Special ctermfg=blue
    hi Identifier term=underline ctermfg=white
    hi Statement ctermfg=blue
    hi PreProc term=underline ctermfg=green
    hi Type term=underline ctermfg=green
    hi Underlined term=underline cterm=underline ctermfg=cyan
    hi Ignore ctermfg=blue
    hi Error term=bold ctermbg=magenta ctermfg=black
    hi Todo term=bold ctermfg=black ctermbg=cyan
    hi Pmenu ctermbg=black ctermfg=gray
    hi PmenuSel ctermbg=cyan ctermfg=black
    hi PmenuSbar ctermbg=red
    hi PmenuThumb cterm=reverse ctermfg=gray
    hi TabLine term=underline cterm=underline ctermfg=white ctermbg=red
    hi TabLineSel term=bold
    hi TabLineFill term=reverse cterm=reverse
    hi MatchParen term=reverse ctermfg=brown ctermbg=cyan
    hi SpecialKey term=bold ctermfg=gray
    hi NonText term=bold ctermfg=blue
    hi Directory term=bold ctermfg=brown
    hi ErrorMsg ctermbg=magenta ctermfg=black
    hi IncSearch term=reverse cterm=reverse ctermfg=brown ctermbg=black
    hi Search term=reverse ctermfg=black ctermbg=brown
    hi MoreMsg term=bold ctermfg=green
    hi ModeMsg term=bold ctermfg=magenta
    hi LineNr term=bold ctermfg=brown ctermbg=black
    hi Question term=bold ctermfg=blue
    hi StatusLine term=bold,reverse cterm=reverse ctermfg=blue ctermbg=black
    hi StatusLineNC term=bold,reverse cterm=reverse ctermfg=blue ctermbg=black
    hi VertSplit ctermfg=black ctermbg=red term=reverse cterm=reverse
    hi Title ctermfg=gray
    hi Visual term=reverse cterm=reverse ctermfg=cyan ctermbg=black
    hi VisualNOS term=bold,underline ctermfg=cyan ctermbg=black
    hi WarningMsg term=bold ctermfg=magenta
    hi WildMenu term=bold ctermfg=black ctermbg=cyan
    hi Folded ctermbg=cyan ctermfg=black
    hi FoldColumn ctermbg=cyan ctermfg=black
    hi DiffAdd term=bold ctermbg=brown ctermfg=black
    hi DiffChange ctermbg=darkred
    hi DiffDelete term=bold ctermfg=black ctermbg=brown
    hi DiffText term=reverse ctermbg=magenta ctermfg=black
    hi SignColumn term=bold ctermfg=black ctermbg=cyan

    " }}}2
endif


" vim600:fdm=marker:fdl=1:
