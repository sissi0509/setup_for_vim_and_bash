syntax on
nmap Q <Nop>
set tabstop=4
set number
set mouse+=a
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
inoremap <Left> :echoe "Use h"<CR>
inoremap <Right> :echoe "Use l"<CR>
inoremap <Up> :echoe "Use k"<CR>
inoremap <Down> :echoe "Use j"<CR>
"" Setting plugins
call plug#begin()

Plug 'rhysd/vim-clang-format'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'

call plug#end() 

"" ClangFormat
autocmd FileType c ClangFormatAutoEnable
" map to <Leader>cf in C++ code
autocmd FileType c nnoremap <buffer><leader>cf :<C -u>ClangFormat<CR>
autocmd FileType c vnoremap <buffer><leader>cf :ClangFormat<CR>
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

" NERDTree
nnoremap <C -t> : NERDTreeToggle<CR>

" LightLine
set laststatus=2
let g:lightline = {
\ 'active': {
\ 'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
\ 'right':[['lineinfo'], ['precent'], ['fileformat', 'fileencoding']]
\}
\}






