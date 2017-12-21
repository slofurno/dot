set nocompatible              " be iMproved, required
set t_Co=256
set hidden
syntax on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
"Plugin 'rdnetto/YCM-Generator'
Plugin 'ctrlpvim/ctrlp.vim'
Bundle 'vim-ruby/vim-ruby'
Plugin 'elixir-lang/vim-elixir'
"Plugin 'OmniSharp/omnisharp-vim'
"Plugin 'ternjs/tern_for_vim'
Plugin 'tpope/vim-dispatch'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'slashmili/alchemist.vim'
Plugin 'davidhalter/jedi-vim'


call vundle#end()            " required

filetype plugin indent on
set number
set ts=2 sw=2 sts=2 expandtab
set backspace=indent,eol,start
set ignorecase
set smartcase
set nowrap

set background=dark
colorscheme solarized
autocmd FileType go setlocal ts=4 sw=4 sts=4 noexpandtab
autocmd FileType make setlocal ts=4 sw=4 sts=4 noexpandtab
"autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
"autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab
"autocmd Filetype eruby setlocal ts=2 sw=2 sts=2 expandtab
"autocmd Filetype cs setlocal ts=2 sw=2 sts=2 expandtab

autocmd Filetype c setlocal ts=4 sw=4 sts=4 expandtab

let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_filetype_specific_completion_to_disable = { 'javascript': 1 }

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0

"let g:go_fmt_command = "goimports"

set wildmenu
set wildmode=list:longest
set wildmode=list:full

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=go/pkg                       " Go static files
set wildignore+=go/bin                       " Go bin files
set wildignore+=go/bin-vagrant               " Go bin-vagrant files
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files
set wildignore+=*/vendor
set wildignore+=*/node_modules
set wildignore+=*/app/cache
set wildignore+=/docs
set wildignore+=*/WebBundle
set wildignore+=*/deps

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_working_path_mode = '0'
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|node_modules)$'

"hi goSpaceError ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
let g:tern_show_argument_hints=1

command WQ wq
command Wq wq
command W w
command Q q
command Vs vs

nnoremap j gj
nnoremap k gk
nnoremap Q <nop>

nnoremap <leader>] :YcmCompleter GoTo<CR>
"vnoremap <leader>c :!cat > ~/temp<CR>
"vnoremap <leader>p :!cat ~/temp<CR>

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

"let g:OmniSharp_server_type = 'roslyn'
let g:rustfmt_autosave = 1

set guioptions=
let g:netrw_liststyle=3
