-- Leader key for custom commands/remaps
vim.g.mapleader = " "

-- " pv" opens file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

