vim.g.mapleader = " "

local keymap = vim.keymap

-- keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Open Lazy dashboard" })

keymap.set("n", "<leader>q", function()
    pcall(function()vim.cmd("FloatermKill!")end)
    vim.cmd("wqa")
    end, { desc = "Quit and Save All" })
keymap.set("n", "<leader>w", "<cmd>wa<cr>", { desc = "Save All" })

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<ESC>", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>k", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>j", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set('n', "<leader>e", "<cmd>Neotree toggle=true<CR>", { desc = "Open NeoTree" })

keymap.set('v', 'y', '"+y') -- yank(copy) selected text to system clipboard
keymap.set('v', 'x', '"+x') -- cut selected text to system clipboard
keymap.set('n', 'p', '"+p') -- paste from system clipboard

keymap.set('n', '<C-j>', '<cmd>m+1<CR>')
keymap.set('n', '<C-k>', '<cmd>m-2<CR>')

keymap.set({"n", "t"}, "<leader>cm", "<cmd>FloatermToggle<CR>", { desc = "Open/Close Terminal" })
