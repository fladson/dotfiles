lua require("config")

set clipboard+=unnamedplus " use system clipboard
set number                 " line number
set relativenumber         " relative line number
set numberwidth=1          " decrease left padding
set noswapfile nobackup nowritebackup
set splitbelow splitright
set textwidth=80           " break line automatically if more than 80 chars (insert)
set colorcolumn=79         " line break guide
set noshowmode             " don't show the mode
set completeopt=menuone,noinsert,noselect
set nowrap                 " don't break long lines (normal mode)
set sidescroll=8
set scrolloff=8
set shortmess+=c           " remove msgs from completion menu
set cursorline
set timeoutlen=500 ttimeoutlen=0
set updatetime=10
set list listchars=tab:»\ ,trail:·,eol:¬,extends:>,precedes:<,nbsp:+
set ignorecase smartcase
set expandtab
set linespace=2 shiftwidth=2 softtabstop=2 tabstop=2

" color
let &t_ut="" " kitty recommendation for background issues
set termguicolors
set background=dark
" colorscheme base16-tomorrow-night
" lua require('base16.themes')['tomorrow-night']:apply()
lua require("colors.nosdalf")

" kitty navigation
" let g:kitty_navigator_listening_on_address = 'unix:/tmp/kitty.sock'
let g:kitty_navigator_listening_on_address = 'unix:/tmp/mykitty'

" nvim-tree
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_ignore = [ '.DS_Store', '.git', 'node_modules', '.cache' ]
let g:nvim_tree_show_icons = {
    \ 'git': 0,
    \ 'folders': 1,
    \ 'files': 0,
    \ 'folder_arrows': 0,
    \ }

" vim test
let test#strategy = "neovim"
let g:test#echo_command = 0

" -- auto cmds
autocmd TermOpen * setlocal nonu
autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby
autocmd BufWritePost plugins.lua PackerCompile

" -- remaps
let mapleader = " "
nnoremap c* *Ncgn
nnoremap <leader><leader> <c-^>
nnoremap <leader>w :w<CR>
tnoremap <leader><Esc> <C-\><C-n>
" nnoremap <leader>t <cmd>vnew term://zsh<CR>
" nnoremap <leader>x <cmd>split term://zsh | resize 10<CR>
nnoremap <leader>p Orequire 'pry';binding.pry<esc>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
vnoremap <leader>d "_d
nmap <silent> <leader>/ :nohlsearch<CR>
map <leader>i mmgg=G'm

nnoremap <leader>vwh :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
map <leader>sr :%s///<left><left>

nnoremap <leader>f <cmd>Telescope find_files theme=get_ivy<CR>
nnoremap <leader>b <cmd>Telescope buffers theme=get_ivy<CR>
nnoremap <leader>ff <cmd>Telescope current_buffer_fuzzy_find theme=get_ivy<CR>
nnoremap <leader>fg <cmd>Telescope live_grep theme=get_ivy<CR>
nnoremap <leader>fh <cmd>Telescope help_tags theme=get_ivy<CR>
nnoremap <leader>fq <cmd>Telescope quickfix theme=get_ivy<CR>
nnoremap <leader>fc <cmd>Telescope commands theme=get_ivy<CR>
nnoremap <leader>ft <cmd>Telescope colorscheme theme=get_ivy<CR>
nnoremap <leader>fk <cmd>Telescope keymaps theme=get_ivy<CR>
nnoremap <leader>fs :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>fw :lua require('telescope.builtin').grep_string({ search = vim.fn.expand("<cword>") })<CR>

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
nnoremap <leader>D <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <leader>d <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>m <cmd>lua vim.lsp.buf.formatting()<CR>

nnoremap <silent> <c-h> :KittyNavigateLeft<cr>
nnoremap <silent> <c-j> :KittyNavigateDown<cr>
nnoremap <silent> <c-k> :KittyNavigateUp<cr>
nnoremap <silent> <c-l> :KittyNavigateRight<cr>

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" don't move the cursor after a visual yank
vnoremap y myy`y
vnoremap Y myY`y

function! NumberToggle()
  if(&rnu == 1)
    set nornu
  else
    set rnu
  endif
endfunc
nmap <silent> <leader>n :call NumberToggle()<CR>

" make comment italic after filetype setup is finished
au BufWinEnter * highlight Comment gui=italic
" au BufWinEnter * highlight rubyPseudoVariable gui=italic

" split divisor coloring
au BufWinEnter * hi VertSplit guifg=#969896 guibg=#1d1f21

" highlight current number
au BufWinEnter * hi CursorLineNr gui=bold guifg=#cc6666 guibg=#282a2e
