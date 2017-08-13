" Configuration file for neovim allows us to add some slightly less idiotic
" behaviours to the editor we can aparently not do without


" Configuration for the Vim-Plug plugin manager
" Uses the folder :: ~/.local/share/nvim/plugged/ to store all of the plugins
" When installing MAKE SURE to use the above file

" Start the plugin commands
call plug#begin('~/.local/share/nvim/plugged/')
  " Insert Plugins here

  " Completion Engine for C/C++/Python
  Plug 'Valloric/YouCompleteMe'
  "**Remeber to follow directions on the readme to finish the installation

  
  " Molokayo Colour Scheme installation
  "   |-> Molokai dependency
  Plug 'tomasr/molokai'
  " Colour Scheme
  Plug 'fmoralesc/molokayo'


  " GruvBox Colour Scheme
  Plug 'morhetz/gruvbox'


  " VCS Signification for Add/Remove lines
  " Plug 'mhinz/vim-signify'
  

  " Vim Airline Support
  Plug 'vim-airline/vim-airline'

  "GitGutter 
  Plug 'airblade/vim-gitgutter' 

  "Nerd Tree
  Plug 'scrooloose/nerdtree'
  
call plug#end()


" Set the Colour Scheme
colorscheme gruvbox
set background=dark
let g:airline_theme = 'gruvbox'

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.


" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>
