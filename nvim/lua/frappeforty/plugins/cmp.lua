-- {{ NVIM CMP }} --------------------------------------------------------

local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = {
		{ name = "nvim_lsp" }, -- cmp for nvim's built-in lsp
		{ name = "luasnip" }, -- engine for vs code snippets
		{ name = "buffer" }, -- cmp for buffer words
		{ name = "nvim_lua" }, -- cmp for buffer words

		{ name = "path" }, -- filesystem paths cmp
		{ name = "calc" }, -- math calculations cmp
		{ name = "nvim_lsp_signature_help" }, -- function args cmp
	},
})

-- {{ LSP }} -------------------------------------------------------------

-- Set up lspconfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

-- Enable language servers with additional completion capabilities provided by nvim-cmp
--
-- Choose a language server from :
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
--
-- Install it using ":Mason" and/or your system package manager like pacman, dnf or apt.
-- Append the chosen language server (say) "pyright" to "servers" list below :

local servers = { "tsserver", "pyright", "tailwindcss" }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		-- on_attach = my_custom_on_attach,
		capabilities = capabilities,
	})
end

-- Also check './null-ls.lua' which provides additional code actions.
