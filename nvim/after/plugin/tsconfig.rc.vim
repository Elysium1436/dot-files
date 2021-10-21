



lua << EOF

require('nvim-treesitter.configs').setup {
	
	highlight = {
		enable = true,
		disable = {}
	},
	indent = {
		enable = true,
		diable = {}
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

EOF
