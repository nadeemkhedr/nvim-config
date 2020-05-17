"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" Always source these
source $HOME/.config/nvim/plug-config/plugins.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim

source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/general.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/nerd-commenter.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/goyo.vim
source $HOME/.config/nvim/plug-config/vim-rooter.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/closetags.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/vista.vim
luafile $HOME/.config/nvim/plug-config/plug-colorizer.lua

" Used Shortcuts:
" ]m, [m next and prev method
" <C-d> expands selection
" <C-e>, <C-y> scroll down and up
" zb, zt, zz change view screen
" H, M, L change cursor
" * search for text under the word
" m then anything to mark, ` then same char to go to mark
" <c-^> switch between last 2 edited files
"
" # COC configs
" # Shortcuts:
" # normal: K shows documentation (<c-w>p to focus on the popup)
" # insert: <c-space> autocomplete
"
"
" # Git Gutter
" jump to next hunk (change): ]c
" jump to previous hunk (change): [c.

" # COC actions
" <leader>c(selector)
" Experimental

let g:codi#rightalign=0
