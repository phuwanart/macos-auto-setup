-- ========================
--  Mode Switching
-- ========================
vim.keymap.set("i", "jj", "<ESC>", { desc = "Exit Insert Mode with jj", silent = true })
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit Insert Mode with jk", silent = true })
vim.keymap.set("i", "<C-c>", "<ESC>", { desc = "Exit Insert Mode", silent = true })
vim.keymap.set("n", ";", ":", { desc = "Enter Command Mode" })

-- ========================
--  Clear Search Highlights
-- ========================
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear Search Highlights", silent = true })
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear Search Highlights", silent = true })

-- ========================
--  File Operations
-- ========================
vim.keymap.set('n', '<leader>fw', ':write<CR>', { desc = "Save File" })
vim.keymap.set('n', '<leader>q', ':quit<CR>', { desc = "Quit Neovim" })
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>', { desc = "Reload Config" })

vim.keymap.set("n", "<leader>fp", function()
  local filePath = vim.fn.expand("%:~") -- Path relative to home dir
  vim.fn.setreg("+", filePath)
  print("File path copied to clipboard: " .. filePath)
end, { desc = "Copy File Path to Clipboard" })

-- ========================
--  File Explorer
-- ========================
vim.keymap.set('n', '<leader>e', ':Ex<cr>', { desc = 'Open [E]xplorer', silent = true })

-- ========================
--  Clipboard
-- ========================
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y<CR>', { desc = "Yank to Clipboard" })
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>d', '"+d<CR>', { desc = "Delete to Clipboard" })
vim.keymap.set("n", "x", '"_x', { desc = "Delete Char Without Yanking", noremap = true, silent = true })

-- ========================
--  Buffers Navigation
-- ========================
vim.keymap.set('n', '<leader>bb', '<C-^>', { desc = 'Switch to alternate buffer' })
vim.keymap.set('n', '<leader>bn', ':bnext<cr>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bp', ':bprevious<cr>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>bd', ':bdelete<cr>', { desc = 'Delete current buffer' })
-- vim.keymap.set('n', '<leader>bl', ':ls<cr>', { desc = 'List buffers' })
vim.keymap.set('n', '<leader>bf', ':bfirst<cr>', { desc = 'First buffer' })
vim.keymap.set('n', '<leader>bl', ':blast<cr>', { desc = 'Last buffer' })
vim.keymap.set('n', '<leader>bc', ':bufdo bd<cr>', { desc = 'Close all buffers' })

-- ========================
--  Text Editing
-- ========================
vim.keymap.set("n", "dw", "vb_d", { desc = "Delete Word Backwards" })
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All Text" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join Lines Keep Cursor" })
vim.keymap.set("n", "Q", "<nop>", { desc = "Disable Q" })

-- Visual Mode Moving
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Lines Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Lines Up" })

-- Visual Mode Indent
vim.keymap.set("v", "<", "<gv", { desc = "Decrease Indent", noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { desc = "Increase Indent", noremap = true, silent = true })

-- ========================
--  Navigation Enhancements
-- ========================
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half Page Down Centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half Page Up Centered" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next Search Centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev Search Centered" })

-- ========================
--  Search and Replace
-- ========================
vim.keymap.set("n", "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search & Replace Word Under Cursor" }
)

-- ========================
--  Window Management
-- ========================
vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split Window Vertically" })
vim.keymap.set("n", "<leader>ws", "<C-w>s", { desc = "Split Window Horizontally" })
vim.keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make Splits Equal Size" })
vim.keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close Current Split" })
vim.keymap.set("n", "<leader>wo", "<C-w>o", { desc = "Close Other Splits" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Move to Right Split" })
vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Move to Left Split" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Move to Below Split" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Move to Above Split" })
vim.keymap.set("n", "<leader>ww", "<C-w>w", { desc = "Cycle Through Splits" })

-- ========================
--  Tab Management
-- ========================
vim.keymap.set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
vim.keymap.set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
vim.keymap.set("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
vim.keymap.set("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- ========================
--  Miscellaneous
-- ========================
-- gg=G : Format the entire file
-- / : Search for a pattern
-- cgn  : Change the next occurrence of the word under the cursor
-- n : Search next occurrence of the last search pattern
-- . : Repeat the last change
-- yyp : Duplicate the current line
-- c-v : Enter visual block mode
-- shift + i : Insert text at the beginning of each line in visual block mode
