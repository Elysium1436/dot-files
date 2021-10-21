
call plug#begin(stdpath('config') . '/plugged')

"Lsp related"
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'folke/lsp-colors.nvim'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'onsails/lspkind-nvim'
Plug 'williamboman/nvim-lsp-installer'

"Telescope"
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim'

"Themes"
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"Icons"
Plug 'lambdalisue/nerdfont.vim'
Plug 'mortepau/codicons.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

"Autopairs"
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

"Miscellaneous"
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'hoob3rt/lualine.nvim'
call plug#end()

command! Erc edit $MYVIMRC
command! Elsprc edit ~/.config/nvim/after/plugin/lspconfig.rc.vim

source ~/.config/nvim/setfile.vim
source ~/.config/nvim/mappings.vim

colorscheme tokyonight
let g:tokyonight_style = "night"

