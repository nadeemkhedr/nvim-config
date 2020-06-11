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
