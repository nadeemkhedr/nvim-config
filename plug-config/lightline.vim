
      "\ 'colorscheme': 'gruvbox',
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'zoom', 'filenameOrLastFolderOfIndex', 'modified', 'readonly'] ]
      \ },
      \ 'inactive': {
      \   'left': [ [ 'filenameOrLastFolderOfIndex', 'modified', 'readonly' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'filenameOrLastFolderOfIndex': 'LightLineFixIndexFiles',
      \   'nearestMethod': 'NearestMethodOrFunction',
      \   'zoom': 'zoom#statusline',
      \ },
      \ }
function! LightLineFixIndexFiles()
    let filenameonly = expand('%:t:r')
    if filenameonly ==? "index"
        return remove(split(expand("%:h"), "/"), -1) . "/" . expand("%:t")
    else
        return expand("%:t")
    endif
endfunction

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
