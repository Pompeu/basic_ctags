set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'valloric/youcompleteme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'slim-template/vim-slim'
Plugin 'mileszs/ack.vim'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
map <f3> :NERDTreeToggle<CR>

call vundle#end()

syntax enable
filetype plugin indent on

set nu

let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-s>"
let g:UltiSnipsJumpBackwardTrigger="<c-d>"

let g:syntastic_ruby_exec = "/home/cast/.rvm/rubies/ruby-2.5.1/bin/ruby"
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

colorscheme heroku
set ts=2 sw=2 et

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1 
let g:indent_guides_auto_colors = 0

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

autocmd BufNewFile,BufRead *.slim setfiletype slim
