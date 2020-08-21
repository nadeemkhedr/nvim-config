syntax on

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    "hi LineNr ctermbg=NONE guibg=NONE
endif
"hi Comment cterm=italic

colorscheme purify
"colorscheme gruvbox
"colorscheme material-theme


" colorscheme onedark
" let g:onedark_hide_endofbuffer=1
" let g:onedark_terminal_italics=1
" let g:onedark_termcolors=256
