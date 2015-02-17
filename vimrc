" Sets Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin indent on
set number
set ruler

" Sets leader
" let mapleader = "\"
" Sets Git commit message not to be wider than 72
autocmd Filetype gitcommit setlocal spell textwidth=72
" Allows you to have multiple buffers open
set hidden
" Automatically indent on new lines
set autoindent
" Copy the indentation of the previous line if auto indent doesn't know what to do
set copyindent
" Fixes the delete key
fixdel
set backspace=indent,eol,start
" Highlight matching braces/tags
set showmatch
" Ignore case when searching
set ignorecase
" ...unless there's a capital letter in the query
set smartcase
" Indent to correct location with tab
set smarttab
" Highlight search matches
set hlsearch
" Search while you enter the query, not after
set incsearch
" Vim can set the title of the terminal window
set title
" Use a visual indicator instead of a beep
set visualbell
" Sets the paste mode
"set paste
" Toggle paste mode with F2
set pastetoggle=<F2>
" Enable syntax highlighting
syntax enable
" Tell vim that your terminal supports 256 colors
set t_Co=256
" Use ; instead of : to enter commands, saves a lot of keystrokes in the long run
nnoremap ; :
" Turn persistent undo on 
" means that you can undo even when you close a buffer/VIM
 try
     set undodir=~/.vim/undodir
         set undofile
         catch
         endtry
" More undos
set undolevels=1000
" Set tabs
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
		    " Vim will interpret it to be having
		    " a width of 4.
set shiftwidth=2    " Indents will have a width of 2
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces 

" vim-airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod = ':t'

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

" 
" neocomplete
" 
let g:neocomplete#enable_at_startup = 1
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
     return neocomplete#close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Go related mappings
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap gd <Plug>(go-def-tab)

"
" vim-go
"
" Enable goimports to automatically insert import paths instead of gofmt
let g:go_fmt_command = "goimports"
" Syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
" Show a list of interfaces which is implemented by the type under your cursor with <leader>s
au FileType go nmap <Leader>s <Plug>(go-implements)
" Show type info for the word under your cursor with <leader>i
au FileType go nmap <Leader>i <Plug>(go-info)
" Open the relevant Godoc for the word under the cursor 
" with <leader>gd 
au FileType go nmap <Leader>gd <Plug>(go-doc)
" open it vertically with <leader>gv
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
" open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
" <leader>r => go run
au FileType go nmap <leader>r <Plug>(go-run)
" <leader>b => go build
au FileType go nmap <leader>b <Plug>(go-build)
" <leader>t => go test
au FileType go nmap <leader>t <Plug>(go-test)
" <leader>c => go coverage
au FileType go nmap <leader>c <Plug>(go-coverage)
" rename identifier under the cursor
au FileType go nmap <Leader>e <Plug>(go-rename)
" Open definition/declaration
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)



