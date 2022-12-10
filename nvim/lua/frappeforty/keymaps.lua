-- {{ Keymaps }} ---------------------------------------------------------

-- leader key
vim.g.mapleader = "\\"

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- vimwiki ?
-- map("n", "<leader>ww", ":edit /home/hope/Wiki/index.md<CR>", opt)
