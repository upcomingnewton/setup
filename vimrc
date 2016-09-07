set ignorecase
set list lcs=tab:>-,trail:%,eol:$,extends:>,precedes:<,space:.
set list
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set nocompatible              " required
filetype off                  " required
hi SpecialKey ctermfg=07 guifg=#FFFFFF
"
"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
"" alternatively, pass a path where Vundle should install plugins
""call vundle#begin('~/some/path/here')
"
"" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
"
"" Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-fugitive'
"" Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
"" Plugin 'jnurmine/Zenburn'
"" Plugin 'scrooloose/nerdtree'
"" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kien/ctrlp.vim'
"" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
"
"
"" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
"
""split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"
"let g:ycm_autoclose_preview_window_after_completion=1
"let python_highlight_all=1
"let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
"
set backspace=indent,eol,start
set nu
set hlsearch
set incsearch
syntax on
set encoding=utf-8
"" autocmd vimenter * NERDTree | wincmd p
"set foldlevelstart=1
"" set nofoldenable    " disable folding
"" Flagging Unnecessary Whitespace
"" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"
"" close nerdtree only when 1 buffer is there and it is closed
"" autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
"
"" Close all open buffers on entering a window if the only
"" buffer that's left is the NERDTree buffer
"function! s:CloseIfOnlyNerdTreeLeft()
"  if exists("t:NERDTreeBufName")
"    if bufwinnr(t:NERDTreeBufName) != -1
"      if winnr("$") == 1
"        q
"      endif
"    endif
"  endif
"endfunction
"

" http://blog.binchen.org/posts/use-vimdiff-to-resolve-git-merge-conflicts-effectively.html
set laststatus=2 "show the status line
set statusline=%-10.3n  "buffer number
map <silent> <leader>2 :diffget 2<CR> :diffupdate<CR>
map <silent> <leader>3 :diffget 3<CR> :diffupdate<CR>
map <silent> <leader>4 :diffget 4<CR> :diffupdate<CR>
