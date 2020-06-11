" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Change dates fast
  Plug 'tpope/vim-speeddating'
  " Convert binary, hex, etc..
  Plug 'glts/vim-radical'
  " Files
  Plug 'tpope/vim-eunuch'
  " Repeat stuff
  Plug 'tpope/vim-repeat'
  " Surround
  Plug 'tpope/vim-surround'
  " Better Comments
  Plug 'preservim/nerdcommenter'
  " Have the file system follow you around
  Plug 'airblade/vim-rooter'
  " auto set indent settings
  Plug 'tpope/vim-sleuth'
  " Text Navigation
  Plug 'unblevable/quick-scope'
  " Add some color
  Plug 'norcalli/nvim-colorizer.lua'
  " Better Syntax Support for all languages
  "Plug 'sheerun/vim-polyglot'
  "
  " JS Syntax
  Plug 'othree/yajs.vim'
  Plug 'othree/es.next.syntax.vim'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  " Emmet
  Plug 'mattn/emmet-vim'
  " Cool Icons
  Plug 'ryanoasis/vim-devicons'
  " Auto pairs for '(' '[' '{' 
  Plug 'jiangmiao/auto-pairs'
  " Closetags
  Plug 'alvan/vim-closetag'
  " colorscheme
  Plug 'flazz/vim-colorschemes'
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'christianchiarulli/onedark.vim'

  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Status Line
  "Plug 'vim-airline/vim-airline'
  Plug 'itchyny/lightline.vim'

  " Ranger
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  Plug 'mileszs/ack.vim'
  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'
  " Terminal
  Plug 'voldikss/vim-floaterm'
  " Start Screen
  Plug 'mhinz/vim-startify'
  " Vista
  Plug 'liuchengxu/vista.vim'
  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'
  " Zen mode
  Plug 'junegunn/goyo.vim'

  " camel case motions
  Plug 'bkad/CamelCaseMotion'

  " editor config plugin
  Plug 'editorconfig/editorconfig-vim'

  " add indent lines
  Plug 'Yggdroot/indentLine'

  " hi-light yanked lines
  Plug 'machakann/vim-highlightedyank'

  " snippets
  Plug 'honza/vim-snippets'

  Plug 'metakirby5/codi.vim'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
