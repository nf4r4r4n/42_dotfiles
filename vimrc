call plug#begin()

Plug	'42Paris/42header'
Plug	'vim-airline/vim-airline'
Plug	'vim-airline/vim-airline-themes'
Plug	'dracula/vim'

call plug#end()

colorscheme dracula

" 42 Header
let g:user42 = 'nfararan'
let g:mail42 = 'marvin@42.fr'

let &term = "xterm-256color"

" Vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set	autoindent
set	tabstop=4
set	shiftwidth=4
set	number
syntax	on
