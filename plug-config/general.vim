"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Camel Case Motion:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:camelcasemotion_key = ','

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_enabled = 0

"""""""""""""""""""""""""""""""
" => Emmet
"""""""""""""""""""""""""""""""
" emmet  go to the end of the word and expand
imap <C-f> <Esc>$a<C-y>,
nmap <C-f> $a<C-y>,

let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

"""""""""""""""""""""""""""""""
" => Ack
"""""""""""""""""""""""""""""""
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif


"""""""""""""""""""""""""""""""
" => Comfortable motion.vim
"""""""""""""""""""""""""""""""
let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 1  " Feel free to increase/decrease this value.
nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>



"""""""""""""""""""""""""""""""
" => Floaterm
"""""""""""""""""""""""""""""""
" let g:floaterm_wintype='normal'
" let g:floaterm_height=6

let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1


"""""""""""""""""""""""""""""""
" => vista
"""""""""""""""""""""""""""""""
let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']

let g:vista#renderer#enable_icon = 1

let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

"""""""""""""""""""""""""""""""
" => closetags
"""""""""""""""""""""""""""""""
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'
let g:closetag_filetypes = 'html,xhtml,phtml,javascript'


"""""""""""""""""""""""""""""""
" => vim-rooter
"""""""""""""""""""""""""""""""
let g:rooter_silent_chdir = 1


"""""""""""""""""""""""""""""""
" => nerd-commenter
"""""""""""""""""""""""""""""""
" nnoremap <space>/ :Commentary<CR>
" vnoremap <space>/ :Commentary<CR>

let g:NERDCreateDefaultMappings = 0
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

"""""""""""""""""""""""""""""""
" => quickscope
"""""""""""""""""""""""""""""""
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#eF5F70' gui=underline ctermfg=81 cterm=underline
let g:qs_max_chars=150
