" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

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
  " Text Navigation/Find
  Plug 'easymotion/vim-easymotion'
  Plug 'unblevable/quick-scope'
  Plug 'dhruvasagar/vim-zoom'
  Plug 'wesQ3/vim-windowswap'
  " Add some color
  Plug 'norcalli/nvim-colorizer.lua'
  " Better Syntax Support for all languages
  Plug 'sheerun/vim-polyglot'
  " JS Syntax
  Plug 'othree/yajs.vim'
  Plug 'othree/es.next.syntax.vim'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  " Go
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'bitfield/vim-gitgo'
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
  Plug 'christianchiarulli/nvcode-color-schemes.vim'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-treesitter/playground'
  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Status Line
  "Plug 'vim-airline/vim-airline'
  Plug 'itchyny/lightline.vim'

  " UI smooth scrolling
  Plug 'yuttie/comfortable-motion.vim' 
  " Ranger
  "Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }

  Plug 'mileszs/ack.vim'
  " Mark gutter
  Plug 'kshenoy/vim-signature'
  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'
  Plug 'mattn/vim-gist'
  Plug 'mattn/webapi-vim' " required by gist
  "Terminal
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
  "Plug 'lukas-reineke/indent-blankline.nvim'
  " hi-light yanked lines
  Plug 'machakann/vim-highlightedyank'
  " snippets
  Plug 'honza/vim-snippets'
  " undo time travel
  Plug 'mbbill/undotree'
  " scratchpad
  Plug 'metakirby5/codi.vim'
  " notes
  Plug 'vimwiki/vimwiki'
  " Games
  Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
  " Ascii art
  Plug 'fadein/vim-FIGlet'
  call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
