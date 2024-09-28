vim.g.mapleader = " "

-- Open file explorer --
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move lines in visual mode --
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join lines with cursor preservation --
vim.keymap.set("n", "J", "mzJ`z")

-- Center the screen after scrolling --
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Center search result --
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Restart LSP --
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Paste over without losing Yank --
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank to system clipboard --
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without affecting Yank buffer --
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Replace Esc with ctrl+c in insert --
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable Q --
vim.keymap.set("n", "Q", "<nop>")

-- TODO: Verify after configuring tmux
-- Open new tmux window --
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- TODO: Verify after conficguring LSP
-- Format code using LSP --
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Navigate quickfix list --
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Navigate location list --
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Search and replace --
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make current file executable --
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Source file --
vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end)

-- Hide mouse cursour --
vim.opt.mouse = ""

