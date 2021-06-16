lua require("plugins")
lua require("treesitter")
lua require("completion")
lua require("buffer")
lua require("lsp")

set clipboard+=unnamedplus
set expandtab
set smartindent
set linespace=2 shiftwidth=2 softtabstop=2 tabstop=2
set splitbelow splitright
set number relativenumber
set hidden
set textwidth=80
set colorcolumn=79
set spelllang=en
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set noshowmode
set completeopt=menuone,noinsert,noselect
set ignorecase smartcase
set nowrap

"set guicursor=
set nohlsearch
set scrolloff=8

set shortmess+=c
set cursorline
set inccommand=nosplit
set fillchars=vert:│
set timeoutlen=500 ttimeoutlen=0
set updatetime=10
set list listchars=tab:»\ ,trail:·,eol:¬,extends:>,precedes:<,nbsp:+

" kitty recommendation for background issues
let &t_ut=""
set termguicolors
set background=dark
colorscheme base16-tomorrow-night

" set italics for themes with no italic
highlight Comment gui=italic cterm=italic
highlight rubyPseudoVariable gui=italic cterm=italic

" nvim-tree
let g:nvim_tree_side = "right"
let g:nvim_tree_auto_close = 1
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_disable_netrw = 0
let g:nvim_tree_follow = 1

" -- auto cmds
autocmd TermOpen * setlocal nonu
autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby
autocmd BufWritePost plugins.lua PackerCompile

" -- remaps
let mapleader = " "
tnoremap <leader><Esc> <C-\><C-n>
" nnoremap <leader>t <cmd>vnew term://zsh<CR>
" nnoremap <leader>x <cmd>split term://zsh | resize 10<CR>

nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>
nnoremap <leader>fq <cmd>Telescope quickfix<CR>

" bufferline
nnoremap <leader>q <cmd>bdelete<CR>
nnoremap <Tab> <cmd>BufferLineCycleNext<CR>
nnoremap <S-Tab> <cmd>BufferLineCyclePrev<CR>

nnoremap <leader>e :NvimTreeToggle<CR>

" nvim-compe
inoremap <silent><expr> <CR> compe#confirm("<CR>")
inoremap <silent><expr> <Tab> v:lua.tab_complete()
inoremap <silent><expr> <S-Tab> v:lua.s_tab_complete()

" TODO add more git related remaps from other plugins here
nnoremap <expr> ]c <cmd>lua require("gitsigns").next_hunk()<CR>
nnoremap <expr> [c <cmd>lua require("gitsigns").prev_hunk()<CR>

" lsp
nnoremap <leader>l <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>wa <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <leader>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <leader>wl <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <leader>D <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <leader>d <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>m <cmd>lua vim.lsp.buf.formatting()<CR>
