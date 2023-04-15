vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set("n", "x", '"_x')
keymap.set("n", "<C-s>", ":w<CR>")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

keymap.set("n", "<leader>ff", "gg<CR>=G<CR>") -- fix indentations in the current file


keymap.set("n", "<Leader>ab", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap.set("n", "<Leader>ar", ":lua require'dap'.repl.open()<CR>", opts)
keymap.set("n", "<Leader>au", ":lua require'dapui'.toggle()<CR>", opts)
keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>", opts)
keymap.set("n", "<F10>", ":lua require'dap'.step_over()<CR>", opts)
keymap.set("n", "<F11>", ":lua require'dap'.step_into()<CR>", opts)
keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>", opts)
