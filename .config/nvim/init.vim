" Install VimPlug automatically
let plug_install = 0
let autoload_plug_path = stdpath('config') . '/autoload/plug.vim'
if !filereadable(stdpath('config') . '/autoload/plug.vim')
    silent exe '!curl -fL --create-dirs -o ' . autoload_plug_path . 
        \ ' https://raw.github.com/junegunn/vim-plug/master/plug.vim'
    execute 'source ' . fnameescape(autoload_plug_path)
    let plug_install = 1
endif
unlet autoload_plug_path

call plug#begin(stdpath('data') . '/plugged')

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'

if !exists('g:vscode')
  Plug 'andymass/vim-matchup'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
end

Plug 'ryanoasis/vim-devicons' " This apparently needs to be last?

call plug#end()

" Install plugins for fresh install
if plug_install
  PlugInstall --sync
endif
unlet plug_install

source ~/.config/nvim/base.vim
source ~/.config/nvim/theme.vim
source ~/.config/nvim/plugin-config.vim

if !exists('g:vscode')
  source ~/.config/nvim/nerdtree.vim
  source ~/.config/nvim/coc.vim
end

set conceallevel=0
