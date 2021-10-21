command! Erc edit $MYVIMRC
command! Elsprc edit ~/.config/nvim/after/plugin/lspconfig.rc.vim
call plug#begin(stdpath('config') . '/plugged')
"Basic
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'williamboman/nvim-lsp-installer'
Plug 'mortepau/codicons.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-lua/popup.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'
"Pairing
"Plug 'tpope/vim-surround'
"Plug 'windwp/nvim-autopairs'
"

Plug 'lambdalisue/nerdfont.vim'
"Plug 'scrooloose/nerdtree'
call plug#end()




""Line/block moving shortcuts
nnoremap <A-j> :m+1<CR>
nnoremap <A-k> :m-2<CR>
inoremap <A-j> <Esc>:m+1<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

""Window moving shortcuts
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-k> <C-w><C-k>


lua << EOF
require('nvim-treesitter.configs').setup {
	indent = {
		enable = true,
		disable = {}
	},
	highlight = {
		enable = true,
		disable = {}
	},
	ensure_installed = {
		"tsx",
		"python",
		"json",
		"html",
		"typescript",
		"yaml",
		"scss",
		"css"
		}
}
--require('nvim-autopairs').setup{}
EOF

source ~/.config/nvim/setfile.vim

colorscheme tokyonight
let g:tokyonight_style = "night"
