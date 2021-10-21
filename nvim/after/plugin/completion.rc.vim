set completeopt=menuone,noinsert,noselect

lua << EOF
local cmp = require'cmp'
local lspkind = require'lspkind'




local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end


local next_item = function(fallback)
	if cmp.visible() then
		cmp.select_next_item()
	elseif has_words_before() then
		cmp.complete()
	else
		fallback()
	end
end

local previous_item = function(fallback)
	if cmp.visible() then
		cmp.select_prev_item()
	elseif has_words_before() then
		cmp.complete()
	else
		fallback()
	end
end

local newline_confirm = function(fallback)
	if cmp.visible() then
		cmp.confirm({select = true})
	else
		fallback()
	end
end
cmp.setup({
	snippet = {
		expand = function(args)
		vim.fn["vsnip#anonymous"](args.body)
	end
	},
	mapping = {
	  ['<C-d>'] = cmp.mapping.scroll_docs(-4),
	  ['<C-f>'] = cmp.mapping.scroll_docs(4),
	  ['<C-Space>'] = cmp.mapping.complete(),
	  ['<C-e>'] = cmp.mapping.close(),
	 -- ['<CR>'] = cmp.mapping.confirm(),
	  ['<Tab>'] = cmp.mapping(next_item, { "i", "s"}),
	  ['<S-Tab>'] = cmp.mapping(previous_item, { "i", "s"})
	},
	sources = {
	  { name = 'nvim_lsp' },
	  { name = 'buffer' },
	  { name = 'vsnip' }
	},
	formatting = {
		format = lspkind.cmp_format({with_text = true, maxwidth = 200})
		}
	})

		require("nvim-autopairs.completion.cmp").setup({
			map_cr = true, --  map <CR> on insert mode
			map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
			auto_select = true, -- automatically select the first item
			insert = false, -- use insert confirm behavior instead of replace
			map_char = { -- modifies the function or method delimiter by filetypes
			all = '(',
			tex = '{'
			}
		})





EOF
