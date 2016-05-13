set nocompatible              " be iMproved, required
set t_Co=256
set hidden
syntax on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
"Plugin 'rdnetto/YCM-Generator'
Plugin 'ctrlpvim/ctrlp.vim'
Bundle 'vim-ruby/vim-ruby'
Plugin 'lambdatoast/elm.vim'
Plugin 'elixir-lang/vim-elixir'
"Plugin 'scrooloose/syntastic'
"Plugin 'OmniSharp/omnisharp-vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'tpope/vim-dispatch'
Plugin 'rust-lang/rust.vim'
Plugin 'ntpeters/vim-better-whitespace'


call vundle#end()            " required

filetype plugin indent on
set number
set ts=2 sw=2 sts=2 expandtab
set backspace=indent,eol,start
set ignorecase
set smartcase
set wrap linebreak nolist
"set nowrap

colorscheme dracula
autocmd FileType go setlocal ts=4 sw=4 sts=4 noexpandtab
autocmd FileType make setlocal ts=4 sw=4 sts=4 noexpandtab
"autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
"autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab
"autocmd Filetype eruby setlocal ts=2 sw=2 sts=2 expandtab
"autocmd Filetype cs setlocal ts=2 sw=2 sts=2 expandtab

autocmd Filetype c setlocal ts=2 sw=2 sts=2 expandtab

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

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_working_path_mode = '0'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|node_modules)$'

"hi goSpaceError ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
let g:tern_show_argument_hints=1

command WQ wq
command Wq wq
command W w
command Q q

nnoremap j gj
nnoremap k gk

nnoremap <leader>] :YcmCompleter GoTo<CR>
command -nargs=1 Rename YcmCompleter RefactorRename <args>

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

"let g:OmniSharp_server_type = 'roslyn'
let g:rustfmt_autosave = 1

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

set guioptions=
