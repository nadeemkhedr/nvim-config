let g:lightline = {
      \ 'colorscheme': 'purify',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'filenameOrLastFolderOfIndex', 'modified', 'readonly'] ]
      \ },
      \ 'inactive': {
      \   'left': [ [ 'filenameOrLastFolderOfIndex', 'modified', 'readonly' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'filenameOrLastFolderOfIndex': 'LightLineFixIndexFiles',
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

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
