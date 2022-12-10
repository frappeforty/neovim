-- {{ Null-ls }} ---------------------------------------------------------

-- Inject more code actions using null-ls built-in sources :
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

-- Install it using ":Mason" or your system package manager like pacman, dnf or apt.
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require("null-ls").setup({
	sources = {

		-- {{ Formatters }} --------------------------------------

		require("null-ls").builtins.formatting.prettier,
		require("null-ls").builtins.formatting.shfmt,
		require("null-ls").builtins.formatting.astyle,
		require("null-ls").builtins.formatting.autopep8,
		require("null-ls").builtins.formatting.gofmt,
		require("null-ls").builtins.formatting.goimports,
		require("null-ls").builtins.formatting.jq,
		require("null-ls").builtins.formatting.stylua,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					vim.lsp.buf.format()
				end,
			})
		end
	end,
})
