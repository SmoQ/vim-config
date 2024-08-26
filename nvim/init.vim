call plug#begin('~/.local/share/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'github/copilot.vim'
Plug 'jnurmine/Zenburn'
Plug 'dense-analysis/ale'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'nvim-lua/plenary.nvim'

call plug#end()

" File browsing
nmap <F3> :NERDTree<CR>
let NERDTreeIgnore=['\.pyc$', '\~$', '^__pycache__$'] "ignore files in NERDTree
   
set colorcolumn=88
highlight ColorColumn ctermbg=233

" Color schemas
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

" Tell NeoVim where to find the Python 3 interpreter
let g:python3_host_prog = '/usr/bin/python3.13'

" Enable line numbers
set number

" Enable syntax highlighting
syntax enable

" set tabs as 4 spaces for Python since that's a convention
set tabstop=4
set shiftwidth=4
set expandtab

" ALE configuration for Python 3
let g:ale_linters = {
\   'python': ['flake8'],
\}

" Autoformat code using Black
let g:ale_fixers = {
\ 'python': ['black'], 
\}

" Enables autoformatting when a file is saved
let g:ale_fix_on_save = 1

" Telescope configuration
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fh :Telescope help_tags<CR>
