
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'machakann/vim-hightlightedyank'

" Fuzzy finder
Plug 'airblade/vim-router'
Plug 'jungegunn/fzf',{ 'dir': '~/.fzf', 'do': './install --all' }
Plug 'jungegunn/fzf.vim'

call plug#end()
let g:airline_theme='simple'
let g:airline_powerline_fonts = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
set rtp+=/usr/local/opt/fzf
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | set number | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
if has("gui_running")
  syntax on
  set hlsearch
  colorscheme onedark
  set bs=2
  set ai
  set ruler
  set number
  highlight Normal ctermbg=None
  highlight LineNr term=bold cterm=NONE ctermfg=grey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
endif
set shiftwidth=2
set belloff=all
set backspace=indent,eol,start
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256          " Remove this line if not necessary
  source ~/.vimrc_background
endif
