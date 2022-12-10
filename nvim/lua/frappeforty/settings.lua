local set = vim.opt

-- show line numbers.
set.number = true

-- show relative line numbers.
set.relativenumber = false

-- highlight current line.
set.cursorline = true

-- color column to indicate optimal line length. test
set.colorcolumn = "75"

-- disable line wrapping
set.wrap = false

-- additional column for indications.
set.signcolumn = "yes"

-- always show 8 lines above and below the cursor.
set.scrolloff = 5

-- indentation setting
-- set.tabstop = 4
-- set.softtabstop = 4
-- set.shiftwidth = 4
-- set.expandtab = true
-- set.smartindent = true
-- set.autoindent = true

-- use undo instead of swap or backup
set.swapfile = false
set.backup = false
set.undofile = true
set.undodir = "/home/hope/.config/nvim/undodir"

-- set search options
set.incsearch = true
set.ignorecase = true
set.smartcase = true

-- set wild menu options
set.wildmenu = true
set.wildmode = "list:longest"
set.wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx"

-- use system clipboard for yank,delete etc
set.clipboard = "unnamedplus"

-- set.fileencoding = 'utf-8'
set.splitright = true
set.splitbelow = true

set.hidden = true

set.termguicolors = true

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
