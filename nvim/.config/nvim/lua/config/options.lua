-- ========================
--  Leader Keys
-- ========================
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- ========================
--  UI Settings
-- ========================
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.opt.hlsearch = true
-- vim.opt.winborder = "rounded"

-- Whitespace visualization
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- ========================
--  Indentation
-- ========================
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.backspace = { "start", "eol", "indent" }

-- ========================
--  Search
-- ========================
vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- ========================
--  Files & Backup
-- ========================
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- ========================
--  Performance
-- ========================
vim.opt.timeoutlen = 5000
vim.opt.updatetime = 50
vim.opt.isfname:append("@-@")

-- ========================
--  Folding
-- ========================
vim.opt.foldenable = true     -- Enable folding by default
vim.opt.foldmethod = "manual" -- Default fold method (change as needed)
vim.opt.foldlevel = 99        -- Open most folds by default
vim.opt.foldcolumn = "0"

-- ========================
--  Window Split
-- ========================
vim.opt.splitright = true -- Split vertical window to the right
vim.opt.splitbelow = true -- Split horizontal window to the bottom

-- ========================
--  Clipboard
-- ========================
vim.opt.clipboard:append("unnamedplus") -- Use system clipboard as default

-- ========================
--  Mouse & EditorConfig
-- ========================
vim.opt.mouse = "a" -- Enable mouse
vim.g.editorconfig = true -- Enable .editorconfig support
vim.g.autoformat = true     -- Enable autoformatting (plugin-dependent)
